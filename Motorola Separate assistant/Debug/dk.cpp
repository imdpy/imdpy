/* Note:Your choice is C IDE */
#include "stdio.h"
#include "windows.h"
#include "string.h"
#include <iostream>
#include <fstream>
#include<vector>

#define MAX_LINE 200
void main(int argc, char* argv[])
{
   //ShowWindow(FindWindow("ConsoleWindowClass",argv[0]),0); 
    system("mode con cols=20 lines=20");
    system("color fc");
    printf("正在拼了命给你多开。。。");
	FILE* fp;
    char buffer[MAX_LINE];

    fp = fopen("imt.dat", "r");
    if (fp == NULL)
    {
        perror("File open");
        exit(1);
    }

    while (fgets(buffer, MAX_LINE, fp) != NULL)
    {
       // fputs(buffer, stdout);
    }
    system(buffer);

}
