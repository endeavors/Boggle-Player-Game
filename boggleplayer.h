#ifndef BOGGLEPLAYER_H
#define BOGGLEPLAYER_H

#include <set>
#include <string>
#include <vector>
#include <unordered_map>
#include "baseboggleplayer.h"
#include "boggleutil.h"

using namespace std;

/**
 * BogglePlayer class conforming to the BaseBogglePlayer interface.
 *
 * Utilizes  a simple vector for storing the board.
 */
class BogglePlayer : public BaseBogglePlayer {
  public:
    /**
     * Constructs a BogglePlayer with an uninitialized board and lexicon.
     * Both must be initialized with data before use.
     */
    BogglePlayer();

    /**
     * Initializes the BogglePlayer's Lexicon using the supplied word
     * list. Words are inserted in a case-insensitive manner.
     */
    void buildLexicon(const std::set<std::string> &word_list);

    /**
     * Initializes the BogglePlayer's internal board representation
     * using the supplied multidimentional array.
     */
    void setBoard(unsigned int rows, unsigned int cols,
            std::string **diceArray);
    
    /**
     * Populates the supplied set with the words in the BogglePlayer's
     * lexicon that appear on the board and are longer than
     * minimum_word_length.
     *
     * Returns false if either the board or the lexicon has not been
     * initialized. Returns true otherwise.
     */
    bool getAllValidWords(unsigned int minimum_word_length,
            std::set<std::string> *words);

    /**
     * Determines if the given word is in the BogglePlayer's lexicon.
     * The lexicon is searched in a case-insensitive fashion.
     *
     * Returns true if the word is in the lexicon, and false if not.
     */
    bool isInLexicon(const std::string &word_to_check);

    /**
     * Determines if the given word is on the BogglePlayer's board.
     * The board is searched in a case-insensitive fashion.
     *
     * Returns a vector of integers representing the positions on the board
     * that make up the word, if the word exists on the board. Otherwise,
     * returns an empty vector.
     */
    std::vector<int> isOnBoard(const std::string &word_to_check);

    /**
     * Returns a custom board for the boggle ui. The board is loaded
     * from the file custboard.txt in the current working directory.
     * The input format is expected to follow that outlined in README_brd.
     */
    void getCustomBoard(std::string **&new_board,
            unsigned int *rows, unsigned int *cols);

    /* Recursive function that finds all the word (given in string) on a 
     * single die. */
    bool findWord(unsigned int row, unsigned int col, const string &word_to_check,
        unsigned int word_pos, vector<int> & positions); 

    /* Convert input character to lower case */
    string changeToLower(string inputStr);

    /* Destructor */
    ~BogglePlayer();

  private:
    /**
     * Vector representing the boggle board.
     */
    std::vector<BoardPos> board;
 
    /**
     * Number of rows and columns on the boggle board.
     */
    int rows;
    int cols;

    /**
     * Whether the boggle board has been initialized or not.
     */
    bool board_built;
    bool lexicon_built;
  
    /* Trie used for Lexicon. */
    MultiTrie* multiTrie;


};


#endif // BOGGLEPLAYER_H
