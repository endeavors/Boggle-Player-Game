#include "boggleutil.h"
#include <iostream>
#include <array>

/* Constructor: initialize all values */
BoardPos::BoardPos(const std::string & text): text(text){
    visited = false;
}

/* Return the text string of the board die */
const string& BoardPos::getText() const{
    return text;
}

/* Return if the die has been visited yet */
bool BoardPos::getVisited() const{
    return visited;
}

/* Set the visited flag for the die */
void BoardPos::setVisited(bool visit){
    visited = visit;
}

/* Trie node constructor: set vector size to 26 */
TrieNode::TrieNode():trieVector(ALPHA_NUM){
   
}

/* Multiway trie: set vector size to 26 */
MultiTrie::MultiTrie():root(ALPHA_NUM){
  
}

/* From the set of string words, iterate through it and build
 * the trie and set all properties of Trienode, such as its
 * parent, layer number, and character */
void MultiTrie::buildTrie(const set<string>& wordlist){

    /* Add each word to the muliway trie */
    for (auto word: wordlist){
        vector<TrieNode*> *currLayer = &root;

        int strLen = word.length();
        TrieNode* tempPrev = nullptr;

        /* Build the trie one character at a time and assign it to
         * each vector */
        for (int i = 0; i < strLen; i++){
            char singleChar = word[i];
            int index = (int)singleChar - ALPHA_OFFSET;
           
            /* Build a new trie node in the vector if the index is
             * not already initialized */
            if(!currLayer->at(index)){
                (*currLayer)[index] = new TrieNode();
                (*currLayer)[index]->character = singleChar;
                (*currLayer)[index]->prevNode = tempPrev;
                (*currLayer)[index]->layer = i+1; 
            }
            
            /* If it is the last word, set the end word flag*/
            if (i == strLen - 1){
                (*currLayer)[index]->is_word = true;
                endWords.push_back((*currLayer)[index]);
            }else{
                /* keep iterating to the next vector until we 
                 * are done with the word in the trie */
                tempPrev = (*currLayer)[index];
                currLayer = &(*currLayer)[index]->trieVector;
            }
        }
    }
}

/* Check if a given word is in the multiway trie.
 * True if it's in the lexicon, false if it's not */
bool MultiTrie::checkInLexicon(const string &word_to_check){

    /* Start with the root and go all the way down until we find
     * the word or we hit a null pointer */
    vector<TrieNode*>* currLayer = &root;
    int strLen = word_to_check.length();

    for (int i = 0; i < strLen; i++){
        char singleChar = word_to_check[i];
        // get the index of where the character is located
        int index = (int)singleChar - ALPHA_OFFSET;

        if (!(*currLayer)[index]) return false;

        // we found the character: character matches
        if ((*currLayer)[index]->character == singleChar){
            if (i == strLen - 1){
                //we hit the end of the word, return true now
                if ((*currLayer)[index]->is_word) {
                    return true;}
              
            }else{
                //keep going down because we matched a character
                currLayer = &(*currLayer)[index]->trieVector;
            }
        }else{
            //the word doesn't exist in this location.
            return false;
        }
    }

    return false;
}

TrieNode::~TrieNode(){
}

MultiTrie::~MultiTrie(){

     for (int i = 0; i < ALPHA_NUM; i++){
         deleteAllNodes(root[i]);
     }
}

void MultiTrie::deleteAllNodes(TrieNode* node){
    if (node != nullptr){
        for (int i = 0; i < ALPHA_NUM; i++){
            deleteAllNodes(node->trieVector[i]);
        }
        delete node;
     }

    
}
