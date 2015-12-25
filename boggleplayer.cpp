#include "boggleplayer.h"
#include <locale>
#include <iostream>
#include <stack>
#include <cstddef>
#include <unordered_map>
#include <algorithm>
#include <thread>

/* Constructor for the bogglePlayer class*/
BogglePlayer::BogglePlayer(){
    multiTrie = new MultiTrie();
    board_built = false;
    lexicon_built = false;
}

/* Convert input characters into lower case*/
string BogglePlayer::changeToLower(string inputStr){

    locale loc;
    string tempStr;
    for (string::size_type i =0; i< inputStr.length(); ++i){
        tempStr += std::tolower(inputStr[i], loc);
    }
    return tempStr;

}

/* Set the 2D-array for bogglePlayer according to the input array*/
void BogglePlayer::setBoard(unsigned int rows, unsigned int cols, std::string **diceArray){
    
    /* Clear the board */
    if (board_built){
        board.clear();
    }
  
    this->rows = rows;
    this->cols = cols;
    
    /* For each die, set the variables. */
    for (int r = 0; r < this->rows; r++){
        for (int c = 0; c < this->cols; c++){
            string boardString = diceArray[r][c];
            
            boardString = changeToLower(boardString);
            const string& btr = boardString;
            BoardPos boardPos(btr);
            board.push_back(boardPos);
        }
    }

    board_built = true;
}

/* Check to see if a string exist on board */
vector<int> BogglePlayer::isOnBoard(const string &word_to_check){
    vector<int> boardIndices;
    
    /* Check to see if board is set */
    if (!this->board_built){
        return boardIndices;
    }

    string wordInput = word_to_check;
    wordInput = changeToLower(wordInput);
  
    /* For each die on the board ...*/
    for (int r = 0; r < rows; r++){
        for(int c = 0; c < cols; c++){
            
            /* Run recursive methode findWord to check all 8 neighbors*/
            if (findWord(r,c,wordInput,0, boardIndices)){
                for (auto id: boardIndices){
                    board[id].setVisited(false);
                }
                return boardIndices;
            }else{
                boardIndices.clear();
            }
        }
    }

    return boardIndices;
}

/* Recursive method that checks a single die's neighbors*/
bool BogglePlayer::findWord(unsigned int row, unsigned int col, const string & 
    word_to_check, unsigned int word_pos, vector<int> &positions){
    
    /* Converting rows/cols into index of the vector*/
    int index = row * cols + col;
    if (index >= (int)board.size() || index < 0) return false;

    BoardPos boardPos = board[index]; 
    string boardString = boardPos.getText();
    if (boardPos.getVisited()){
        return false;
    }
    for (unsigned int i = 0; i < boardString.length(); i++){
        int newIdx = word_pos + i;
        if (newIdx >= (int) word_to_check.length() || boardString.at(i) 
            != word_to_check.at(newIdx)){
            return false;
        }
    }
    
    board[index].setVisited(true);
    
    /* If the character matches, push the index into vector*/
    positions.push_back(index); 
    unsigned int newPos = word_pos + boardString.length();

    /* Calculate the offset for all posible neighbors*/
    int possibleVals [8][2]= {{-1,-1},{-1,0},{-1,1},{0,-1},{0,1},{1,-1},{1,0},{1,1}};
    if (newPos == word_to_check.length()){
        return true;
    }else{
        for( int x = 0; x<8; x++){
            int r = row + possibleVals[x][0];
            int c = col + possibleVals[x][1];
            if( r < 0 || c < 0 || r >= rows || c >= cols ){
                continue;
            }
            /* Recursive call on legit neighbors*/
            else{
                if (findWord(r,c, word_to_check,newPos,positions)) return true;
            }
        }
    }

    /* Pop the index if the recursion fail */
    board[index].setVisited(false);
    positions.pop_back();
    return false;
}

/* Create a multiway trie lexicon */
void BogglePlayer::buildLexicon(const std::set<std::string> &word_list){
 
    /* Call support method buildTrie */
    multiTrie->buildTrie(word_list);
    lexicon_built = true;
}

/* Populate the set of strings with all possible words that are at least
 * a fixed digit long.*/
bool BogglePlayer::getAllValidWords(unsigned int minWordLength,
            std::set<std::string> * words){

    /* Check to see if board/lexicon is set */
    if (!board_built || !lexicon_built) return false;

    /* Iterate through the vector of end TrieNode* */
    for (auto trieNode: multiTrie->endWords){
        if (trieNode->layer >= minWordLength){
            
            /* Recover the original word by backtracking*/
            string conString;
            stack<char> strStack;
            TrieNode* tempNode = trieNode->prevNode;
            while (tempNode != nullptr){
                strStack.push(tempNode->character);
                
                tempNode = tempNode->prevNode;
            }

            while (!strStack.empty()){
                conString += strStack.top();
                strStack.pop();
            }
            conString += trieNode->character;
      
            /* Check to see if the word also exist on board */
            vector<int> res = isOnBoard(conString);
            if (!res.empty()){
                words->insert(conString);
            }
        } 
    }

    return true;
}
    
/* Check to see if the word exist in the trie */
bool BogglePlayer::isInLexicon(const std::string &word_to_check){
    
    if (lexicon_built){
        /* Call support method checkInLexicon */
        return multiTrie->checkInLexicon(word_to_check);
    }
    return false;
}

/* Custom board for testing purpose*/
void BogglePlayer::getCustomBoard(std::string **&new_board,
            unsigned int *rows, unsigned int *cols){
    setBoard(*rows,*cols,new_board);
}

/* Destructor for BogglePlayer */
BogglePlayer::~BogglePlayer(){
    
    /* Backtrack all allocated TrieNode pointers */

    delete multiTrie;

}
