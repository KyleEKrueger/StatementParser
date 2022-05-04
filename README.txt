***********************************
Kyle Krueger | Brett Gallagher 
San Diego State University
CS 530 Spring 2022
Professor Guy Leonard
Project 3
***********************************
***********************************
BNF GRAMMAR
***********************************

<ass>		::= <id>=<exp>
<exp>		::=<id><op><id>|<exp><op><id>|(<exp>)
<id>		::= <char>|<id><char>|<id><digit>
<char>		::= a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x| 
           	    y|z|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V| 
           	    W|X|Y|Z 
<digit>		::= 0|1|2|3|4|5|6|7|8|9 
<op>		::= +|-|*|/|%

************************************
FILES IN PROJECT
************************************
Makefile
README
flex.l
bison.y
************************************
INSTRUCTIONS
************************************
COMPILE:
To generate the necessary header file before being able to use the makefile, type "flex --header-file=flex.h flex.l"
After this is generated, the program will compile properly with "make"

************************************
ISSUES

************************************

************************************
LESSONS LEARNED
Learned about flex and bison and how they interact with each other. Learned more about regular expressions. Learned about BNF Grammar.
************************************