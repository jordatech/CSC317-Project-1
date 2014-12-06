/*====================================================================================================================
Format A === Format   OPName   Rdestination   Rsource1   Rsource2
Format B === Format   OPName   Rdestination   Rsource1               ImmediateValue
Format C === Format   OPName                                         ImmediateValue

examples

A// A Add R3,R1,R2

adds contents of register 1 and register 2 and stores into register 3

B// B LD R3,R0,#255

loads the signed Value 255 into register 3

C// C BRA #255

adds the 2's complement of 255 to the PC

08860040
00C03FC1
00003FF0

insert one instruction per line into the file named "Instructions.txt"

Hex value instructions will be output in file named "HexCodes.txt", these codes go directly into the .MIF

====================================================================================================================*/

//Written by: Kyle Danielson 11/10/14


#include <iostream>
#include <cstdlib>
#include <cstring>
#include <bitset>
#include <sstream>
#include <iomanip>
#include <fstream>
using namespace std;

typedef char OneLine[81];

void RegtoBinary(char *);
void OPtoBinary(char *, char *, char *, char *, char);
void IVtoBinary(int , char , char *, char *);
void ResulttoHex(char *, fstream &);
void FormatABuild(char *, char *, char *, char *, OneLine, int, int);
void FormatBBuild(char *, char *, char *, char *, int*, OneLine, int, int);
void FormatCBuild(char *, char *, int*, OneLine, int, int);


int main()
{

    char FormatType = 'A';
    char Rsource1[6] = {'0'};
    char Rsource2[6] = {'0'};
    char Rdestination[6] = {'0'};
    char OPName[5] = {'0'};
    char FormatAOP[18] = {'0'};
    char FormatBOP[7] = {'0'};
    char FormatCOP[7] = {'0'};
    int ImmediateValue = 0;
    char FormatBIV[17] = {'0'};
    char FormatCIV[27] = {'0'};
    char Result[33] = {'0'};
    int InFileI = 0;
    int tmpi = 0;
    OneLine InFileLine = {'\0'};
    fstream InFile;
    fstream OutFile;

InFile.open("Instructions.txt", ios::in | ios::binary);
OutFile.open("HexCodes.txt", ios::out | ios::binary);

while(!InFile.getline(InFileLine, 81, '\n').eof()){
    InFileI = 0;
    for(int i = 0; i < 6; i++){Rsource1[i] = '\0';}
    for(int i = 0; i < 6; i++){Rsource2[i] = '\0';}
    for(int i = 0; i < 6; i++){Rdestination[i] = '\0';}
    for(int i = 0; i < 5; i++){OPName[i] = '\0';}
    for(int i = 0; i < 18; i++){FormatAOP[i] = '\0';}
    for(int i = 0; i < 7; i++){FormatBOP[i] = '\0';}
    for(int i = 0; i < 7; i++){FormatCOP[i] = '\0';}
    for(int i = 0; i < 17; i++){FormatBIV[i] = '\0';}
    for(int i = 0; i < 27; i++){FormatCIV[i] = '\0';}
    for(int i = 0; i < 6; i++){Result[i] = '\0';}

    for(int i = 0; i < 81; i++){
        InFileLine[i] = toupper(InFileLine[i]);
    }

    while(InFileLine[InFileI] == ' '){InFileI++;}
    for(int i = InFileI; InFileLine[i] != ' '; i++){
        FormatType = InFileLine[i];
        InFileI++;
    }
    while(InFileLine[InFileI] == ' '){InFileI++;}

    if(FormatType == 'A'){
        FormatABuild(OPName, Rdestination, Rsource1, Rsource2, InFileLine, tmpi, InFileI);
    }
    else if(FormatType == 'B'){
        FormatBBuild(OPName, Rdestination, Rsource1, FormatBIV, &ImmediateValue, InFileLine, tmpi, InFileI);
    }
    else{ //FormatType == 'C'
        FormatCBuild(OPName, FormatCIV, &ImmediateValue, InFileLine, tmpi, InFileI);
    }

    RegtoBinary(Rsource1);
    RegtoBinary(Rsource2);
    RegtoBinary(Rdestination);

    OPtoBinary(OPName, FormatAOP, FormatBOP, FormatCOP, FormatType);

    IVtoBinary(ImmediateValue, FormatType, FormatBIV, FormatCIV);


    strcpy(Result,"");
    if(FormatType == 'A'){
        strcat(Result,Rsource1);
        strcat(Result,Rsource2);
        strcat(Result,Rdestination);
        strcat(Result,FormatAOP);
    }
    else if(FormatType == 'B'){
        strcat(Result, Rsource1);
        strcat(Result, Rdestination);
        strcat(Result, FormatBIV);
        strcat(Result, FormatBOP);
    }
    else{
        strcat(Result, FormatCIV);
        strcat(Result, FormatCOP);
    }

    ResulttoHex(Result, OutFile);

}
    InFile.close();
    OutFile.close();
    return 0;

}

void RegtoBinary(char* Rsource)
{
         if(strcmp(Rsource,"0") == 0) {strcpy(Rsource,"00000");}
    else if(strcmp(Rsource,"1") == 0) {strcpy(Rsource,"00001");}
    else if(strcmp(Rsource,"2") == 0) {strcpy(Rsource,"00010");}
    else if(strcmp(Rsource,"3") == 0) {strcpy(Rsource,"00011");}
    else if(strcmp(Rsource,"4") == 0) {strcpy(Rsource,"00100");}
    else if(strcmp(Rsource,"5") == 0) {strcpy(Rsource,"00101");}
    else if(strcmp(Rsource,"6") == 0) {strcpy(Rsource,"00110");}
    else if(strcmp(Rsource,"7") == 0) {strcpy(Rsource,"00111");}
    else if(strcmp(Rsource,"8") == 0) {strcpy(Rsource,"01000");}
    else if(strcmp(Rsource,"9") == 0) {strcpy(Rsource,"01001");}
    else if(strcmp(Rsource,"10") == 0){strcpy(Rsource,"01010");}
    else if(strcmp(Rsource,"11") == 0){strcpy(Rsource,"01011");}
    else if(strcmp(Rsource,"12") == 0){strcpy(Rsource,"01100");}
    else if(strcmp(Rsource,"13") == 0){strcpy(Rsource,"01101");}
    else if(strcmp(Rsource,"14") == 0){strcpy(Rsource,"01110");}
    else if(strcmp(Rsource,"15") == 0){strcpy(Rsource,"01111");}
    else if(strcmp(Rsource,"16") == 0){strcpy(Rsource,"10000");}
    else if(strcmp(Rsource,"17") == 0){strcpy(Rsource,"10001");}
    else if(strcmp(Rsource,"18") == 0){strcpy(Rsource,"10010");}
    else if(strcmp(Rsource,"19") == 0){strcpy(Rsource,"10011");}
    else if(strcmp(Rsource,"20") == 0){strcpy(Rsource,"10100");}
    else if(strcmp(Rsource,"21") == 0){strcpy(Rsource,"10101");}
    else if(strcmp(Rsource,"22") == 0){strcpy(Rsource,"10110");}
    else if(strcmp(Rsource,"23") == 0){strcpy(Rsource,"10111");}
    else if(strcmp(Rsource,"24") == 0){strcpy(Rsource,"11000");}
    else if(strcmp(Rsource,"25") == 0){strcpy(Rsource,"11001");}
    else if(strcmp(Rsource,"26") == 0){strcpy(Rsource,"11010");}
    else if(strcmp(Rsource,"27") == 0){strcpy(Rsource,"11011");}
    else if(strcmp(Rsource,"28") == 0){strcpy(Rsource,"11100");}
    else if(strcmp(Rsource,"29") == 0){strcpy(Rsource,"11101");}
    else if(strcmp(Rsource,"30") == 0){strcpy(Rsource,"11110");}
    else if(strcmp(Rsource,"31") == 0){strcpy(Rsource,"11111");}

    return;

}

void OPtoBinary(char * OPName, char * FormatAOP, char * FormatBOP, char * FormatCOP, char FormatType)
{
    if(FormatType == 'A'){
             if(strcmp(OPName,"NOP") == 0) {strcpy(FormatAOP,"00000000000111111");}
        else if(strcmp(OPName,"ADD") == 0) {strcpy(FormatAOP,"00000000001000000");}
        else if(strcmp(OPName,"SUB") == 0) {strcpy(FormatAOP,"00000000100000000");}
        else if(strcmp(OPName,"COMP") == 0){strcpy(FormatAOP,"00000001100000000");}
        else if(strcmp(OPName,"NEG") == 0) {strcpy(FormatAOP,"00000001010000000");}
        else if(strcmp(OPName,"AND") == 0) {strcpy(FormatAOP,"00000001000000000");}
        else if(strcmp(OPName,"OR") == 0)  {strcpy(FormatAOP,"00000001001000000");}
        else if(strcmp(OPName,"XOR") == 0) {strcpy(FormatAOP,"00000001011000000");}
        else if(strcmp(OPName,"ASL") == 0) {strcpy(FormatAOP,"00000010011000000");}
        else if(strcmp(OPName,"ASR") == 0) {strcpy(FormatAOP,"00000010001000000");}
        else if(strcmp(OPName,"LSL") == 0) {strcpy(FormatAOP,"00000010011000000");}
        else if(strcmp(OPName,"LSR") == 0) {strcpy(FormatAOP,"00000010000000000");}
        else if(strcmp(OPName,"ROL") == 0) {strcpy(FormatAOP,"00000011010000000");}
        else if(strcmp(OPName,"ROR") == 0) {strcpy(FormatAOP,"00000011001000000");}
        else if(strcmp(OPName,"MOVE") == 0){strcpy(FormatAOP,"00000100000000000");}
        else if(strcmp(OPName,"LBI") == 0) {strcpy(FormatAOP,"00000100001000000");}
        else if(strcmp(OPName,"LDRI") == 0){strcpy(FormatAOP,"00000100010000000");}
        else if(strcmp(OPName,"JMP") == 0) {strcpy(FormatAOP,"00001000000000000");}
        else if(strcmp(OPName,"JSR") == 0) {strcpy(FormatAOP,"00001000001000000");}
        else if(strcmp(OPName,"RTS") == 0) {strcpy(FormatAOP,"00001000011000000");}
    }
    else if(FormatType == 'B'){
             if(strcmp(OPName,"LD") == 0)  {strcpy(FormatBOP,"100010");}
        else if(strcmp(OPName,"LDU") == 0) {strcpy(FormatBOP,"100011");}
        else if(strcmp(OPName,"ADD") == 0) {strcpy(FormatBOP,"000001");}
        else if(strcmp(OPName,"SUB") == 0) {strcpy(FormatBOP,"000100");}
        else if(strcmp(OPName,"AND") == 0) {strcpy(FormatBOP,"001000");}
        else if(strcmp(OPName,"OR") == 0)  {strcpy(FormatBOP,"001001");}
        else if(strcmp(OPName,"XOR") == 0) {strcpy(FormatBOP,"001011");}
        else if(strcmp(OPName,"BEQ") == 0) {strcpy(FormatBOP,"001100");}
        else if(strcmp(OPName,"BNE") == 0) {strcpy(FormatBOP,"001010");}
        else if(strcmp(OPName,"BLT") == 0) {strcpy(FormatBOP,"001111");}
        else if(strcmp(OPName,"LDA") == 0) {strcpy(FormatBOP,"100000");}
        else if(strcmp(OPName,"STA") == 0) {strcpy(FormatBOP,"010000");}
        else if(strcmp(OPName,"LDIX") == 0){strcpy(FormatBOP,"100001");}
        else if(strcmp(OPName,"STIX") == 0){strcpy(FormatBOP,"010001");}
    }
    else if(FormatType == 'C'){
             if(strcmp(OPName,"BRA") == 0) {strcpy(FormatCOP,"110000");}
        else if(strcmp(OPName,"BSR") == 0) {strcpy(FormatCOP,"110001");}
    }

    return;
}

void IVtoBinary(int ImmediateValue, char FormatType, char * FormatBIV, char * FormatCIV)
{
    stringstream IVstream;

    bitset<16> b(ImmediateValue);
    bitset<26> c(ImmediateValue);

    if(FormatType == 'A'){}
    else if(FormatType == 'B'){
        IVstream << b;
        IVstream >> FormatBIV;
    }
    else if(FormatType == 'C'){
        IVstream << c;
        IVstream >> FormatCIV;
    }

    return;
}

void ResulttoHex(char * Result, fstream & OutFile){

    string Res(Result);

    bitset<32> RtH(Res);

    OutFile << hex << uppercase << setw(8) << setfill('0') << RtH.to_ulong();
    OutFile << "\r\n";


    return;
}

void FormatABuild(char * OPName, char * Rdestination, char * Rsource1, char * Rsource2, OneLine InFileLine, int tmpi, int InFileI){


        for(int i = InFileI; InFileLine[i] != ' '; i++){
            OPName[i-InFileI] = InFileLine[i];
            tmpi = i+1;
        }
        InFileI = tmpi;
        while((InFileLine[InFileI] == ' ')||(InFileLine[InFileI] == 'R')||(InFileLine[InFileI] == ',')){InFileI++;}


        for(int i = InFileI; ((InFileLine[i] != ' ')&&(InFileLine[i] != ',')); i++){
            Rdestination[i-InFileI] = InFileLine[i];
            tmpi = i+1;
        }
        InFileI = tmpi;
        while((InFileLine[InFileI] == ' ')||(InFileLine[InFileI] == 'R')||(InFileLine[InFileI] == ',')){InFileI++;}


        for(int i = InFileI; ((InFileLine[i] != ' ')&&(InFileLine[i] != ',')); i++){
            Rsource1[i-InFileI] = InFileLine[i];
            tmpi = i+1;
        }
        InFileI = tmpi;
        while((InFileLine[InFileI] == ' ')||(InFileLine[InFileI] == 'R')||(InFileLine[InFileI] == ',')){InFileI++;}


        for(int i = InFileI; ((InFileLine[i] != ' ')&&(InFileLine[i] != ',')&&(InFileLine[i] != '\n')&&(InFileLine[i] != '\r')); i++){
            Rsource2[i-InFileI] = InFileLine[i];
            tmpi = i+1;
        }

    return;
}

void FormatBBuild(char * OPName, char * Rdestination, char * Rsource1, char * FormatBIV, int * ImmediateValue, OneLine InFileLine, int tmpi, int InFileI){

        for(int i = InFileI; InFileLine[i] != ' '; i++){
            OPName[i-InFileI] = InFileLine[i];
            tmpi = i+1;
        }
        InFileI = tmpi;
        while((InFileLine[InFileI] == ' ')||(InFileLine[InFileI] == 'R')||(InFileLine[InFileI] == ',')){InFileI++;}


        for(int i = InFileI; ((InFileLine[i] != ' ')&&(InFileLine[i] != ',')); i++){
            Rdestination[i-InFileI] = InFileLine[i];
            tmpi = i+1;
        }
        InFileI = tmpi;
        while((InFileLine[InFileI] == ' ')||(InFileLine[InFileI] == 'R')||(InFileLine[InFileI] == ',')){InFileI++;}


        for(int i = InFileI;((InFileLine[i] != ' ')&&(InFileLine[i] != ',')); i++){
            Rsource1[i-InFileI] = InFileLine[i];
            tmpi = i+1;
        }
        InFileI = tmpi;
        while((InFileLine[InFileI] == ' ')||(InFileLine[InFileI] == '#')||(InFileLine[InFileI] == ',')){InFileI++;}


        for(int i = InFileI;((InFileLine[i] != ' ')&&(InFileLine[i] != ',')&&(InFileLine[i] != '\n')&&(InFileLine[i] != '\r')); i++){
            FormatBIV[i-InFileI] = InFileLine[i];
            tmpi = i+1;
        }
        InFileI = tmpi;
        *ImmediateValue = atoi(FormatBIV);

    return;
}

void FormatCBuild(char * OPName, char * FormatCIV, int * ImmediateValue, OneLine InFileLine, int tmpi, int InFileI){

        for(int i = InFileI; InFileLine[i] != ' '; i++){
            OPName[i-InFileI] = InFileLine[i];
            tmpi = i+1;
        }
        InFileI = tmpi;
        while((InFileLine[InFileI] == ' ')||(InFileLine[InFileI] == '#')){InFileI++;}


        for(int i = InFileI; (InFileLine[i] != ' ')&&((InFileLine[i] != '\n'))&&((InFileLine[i] != '\r')); i++){
            FormatCIV[i-InFileI] = InFileLine[i];
            tmpi = i+1;
        }
        InFileI = tmpi;
        *ImmediateValue = atoi(FormatCIV);

    return;
}
