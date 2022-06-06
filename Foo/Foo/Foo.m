// Copyright (C) 2022 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <stdio.h>
#import "Foo.h"

int x;

void printHello(void);

void myFunction(void) {
    x++;
    printf("x is %d\n", x);
    
    printHello();
}

void printHello(void) {
    printf("Hello!\n");
}

