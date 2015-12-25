#include "boggleplayer.h"
#include "boggleutil.h"
#include "baseboggleplayer.h"
#include <iostream>

int main( int argc, char* argv[] ){

   BogglePlayer * p = new BogglePlayer();
   string row0[] = {"D","C"};
   string row1[] = {"b","A"};
   string* board[] = {row0,row1};
   //string s[2][4] = { {"a","b","c","d"},{"b","d","e","f"} };
   p->setBoard(2,2,board);

   
   int row;
   int col;

   cout << "Row: ";
   cin >> row;
   cout << "Col: ";
   cin >>  col;

   string d[1][2] = {{"b","C"}};//,"p", "e"}, {"i","q","a"},{"r","e","p"}};
   string **diceArray;
   diceArray = new string* [row];
   for (int i = 0; i <row; i++)
       diceArray[i] = new string [col];

   static const char alpha[] = 
       "abcdefghijklmnopqrstuvwxyz";

   for (int i = 0; i < row; i++){
       for (int j = 0; j < col; j++){
           
           //int n = rand() % 26;
           //char charc = (char)(n +65);
           string s;
           for (int l = 0; l < 4;  ++l){
               s += alpha[rand() % (sizeof(alpha)-1)];
           }

           diceArray[i][j] = s;
           cout << s;
           cout << ' ';
       }
       cout << endl;

   }
   diceArray[0][0] = "b";
   diceArray[0][1] = "C";
   diceArray[0][2] = "l";
   diceArray[1][0] = "i";
   diceArray[1][1] = "Q";
   diceArray[1][2] = "a";
   diceArray[2][0] = "r";
   diceArray[2][1] = "e";
   diceArray[2][2] = "p";
   
   
   p->setBoard(row,col,diceArray);
   string inputStr;
   cin >> inputStr;
   vector<int>result = p->isOnBoard(inputStr);
   cout << "Size: " << result.size() << endl;
   for (unsigned int i = 0; i< result.size(); i++){
       int res = result[i];
       int r = res/col;
       int c = res % col;
       cout << diceArray[r][c] << "-> " << result[i] << endl;

   }

  

   string wordA("catdoghellyeah");
   string wordB("catdoghellyea");
   string wordC("catdoghellyefgdgfd");
   string wordD("nwlr");
   string wordE("food");
   set<string> lex;
   lex.insert(wordA);
   lex.insert(wordB);
   lex.insert(wordC);
   lex.insert(wordD);
   p->buildLexicon(lex);

   cout << wordA << " " << p->isInLexicon(wordA) << endl;
   cout << wordB << " " << p->isInLexicon(wordB) << endl;
   cout << wordC << " " << p->isInLexicon(wordC) << endl;
   cout << wordD << " " << p->isInLexicon(wordD) << endl;
   cout << wordE << " WORDE " << p->isInLexicon(wordE) << endl;
   
   

     
   
   return 0;

}
