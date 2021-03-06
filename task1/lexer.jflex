package atividade1;

%%

/* N�o altere as configura��es a seguir */

%line
%column
%unicode
//%debug
%public
%standalone
%class Minijava
%eofclose

/* Insira as regras l�xicas abaixo */
letter                  = [a-zA-Z]
digit                   = ([1-9][0-9]+)|(0[^\d]+)|([1-9])|0
alphanumeric            = {letter}|{digit}
integer                 = {digit}+
identifier              = ({letter}|[_])({alphanumeric}|[_])*
lineComment             = \/\/.*
blockComment            = \/\*[\W\w]*\*\/
whitespace              = [ \n\t\r\f]

%%

";"                     { System.out.println("Token ;"); }
"."                     { System.out.println("Token ."); }
","                     { System.out.println("Token ,"); }
"="                     { System.out.println("Token ="); }
"("                     { System.out.println("Token ("); }
")"                     { System.out.println("Token )"); }
"{"                     { System.out.println("Token {"); }
"}"                     { System.out.println("Token }"); }
"["                     { System.out.println("Token ["); }
"]"                     { System.out.println("Token ]"); }
"&&"                    { System.out.println("Token &&"); }
"<"                     { System.out.println("Token <"); }
"=="                    { System.out.println("Token =="); }
"!="                    { System.out.println("Token !="); }
"+"                     { System.out.println("Token +"); }
"-"                     { System.out.println("Token -"); }
"*"                     { System.out.println("Token *"); }
"!"                     { System.out.println("Token !"); }
"boolean"               { System.out.println("Token boolean"); }
"class"                 { System.out.println("Token class"); }
"public"                { System.out.println("Token public"); }
"extends"               { System.out.println("Token extends"); }
"static"                { System.out.println("Token static"); }
"void"                  { System.out.println("Token void"); }
"main"                  { System.out.println("Token main"); }
"String"                { System.out.println("Token String"); }
"int"                   { System.out.println("Token int"); }
"while"                 { System.out.println("Token while"); }
"if"                    { System.out.println("Token if"); }
"else"                  { System.out.println("Token else"); }
"return"                { System.out.println("Token return"); }
"length"                { System.out.println("Token length"); }
"true"                  { System.out.println("Token true"); }
"false"                 { System.out.println("Token false"); }
"this"                  { System.out.println("Token this"); }
"new"                   { System.out.println("Token new"); }
"System.out.println"    { System.out.println("Token System.out.println"); }
{integer}               { System.out.println("Token INT (" + yytext() + ")"); }
{identifier}            { System.out.println("Token ID (" + yytext() + ")"); }
{lineComment}           { /* Do nothing */ }
{blockComment}          { /* Do nothing */ }
{whitespace}            { /* Do nothing */ }
    
/* Insira as regras l�xicas no espa�o acima */

. { throw new RuntimeException("Caractere ilegal! '" + yytext() + "' na linha: " + (yyline + 1) + ", coluna: " + (yycolumn + 1)); }
