#ifndef K_TOKEN_H
#define K_TOKEN_H

typedef struct LEXER_STRUCT    
{
    char* src,
    char c;
    unsigned int i;
} lexer_T;

lexer_T* init_lexer(char* src);

#endif