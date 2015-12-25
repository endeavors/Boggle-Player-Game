#ifndef BOGGLEUTIL_H
#define BOGGLEUTIL_H

#include <cctype>
#include <algorithm>
#include <map>
#include <memory>
#include <string>
#include <utility>
#include <set>
#include <vector>

#define ALPHA_NUM 26
#define ALPHA_OFFSET 97

using namespace std;

/**
 * Class that represents a position on the Boggle Board.
 *
 * Each position contains its sanitized string that represents the
 * characters on that board position, as well as a boolean that
 * marks the board position as visited by a given search algorithm.
 */
class BoardPos {
  public:
    /**
     * Constructs a BoardPos with the given text. Text must have been
     * sanitized by the caller.
     */
    BoardPos(const std::string &text);

    /**
     * Returns the characters on this BoardPos.
     */
    const std::string &getText() const;
    
    /**
     * Returns whether this BoardPos has been visited or not.
     */
    bool getVisited() const;

    /**
     * Sets whether this BoardPos has been visited or not.
     */
    void setVisited(bool visited);

  private:
    /**
     * The characters that this BoardPos contains.
     */
    const std::string text;

    /**
     * Whether this BoardPos has been visited or not.
     */
    bool visited;
};

/**
 * Implement class for Trie
 */
class TrieNode{
    
    public:
        /* Constructor */
        TrieNode();
       
        ~TrieNode();
 
        //pointer to the next vector if there's another character 
        //attached to it
        vector<TrieNode*> trieVector;

        /*character that is stored in the trienode */
        char character;

        /* to indiciate if the word is the end word */
        bool is_word;

        /* parent pionter to each node */
        TrieNode* prevNode;

        /* keep track of the number of layers */
        unsigned int layer;
};

class MultiTrie {

    public:
        /* MultiTrie constructor */
        MultiTrie();

        ~MultiTrie();

        /* Root vector from which we can traverse down */
        vector<TrieNode*> root;

        /*Builds the Trie from the set of strings to from the lexicon*/
        void buildTrie(const set<string>& wordlist);

        /* Checks if a word is in the multiway trie, it starts from
         * the root */
        bool checkInLexicon(const string &word_to_check);
        
        /* vector that stores all the end word pointer to the trie nodes*/
        vector<TrieNode*> endWords;
void deleteAllNodes(TrieNode* node);
};



#endif // BOGGLEUTIL_H
