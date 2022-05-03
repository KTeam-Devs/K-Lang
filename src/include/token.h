#ifndef K_TOKEN_H
#define K_TOKEN_H

typedef struct TOKEN_STRUCT  
{
    char* value;

    enum
    {
        TOKEN_ID
    } type;

}

#endif