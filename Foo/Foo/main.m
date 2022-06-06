// Copyright (C) 2022 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <stdio.h>
#import <string.h>
#import "Foo.h"


void MessAroundWithPointers(void) {
    int y = 99;
    int x = 42;
    
    int *myPointer = &x;
    printf("address is %p, value is %d\n", myPointer, *myPointer);
    
    myPointer++;
    printf("address is %p, value is %d\n", myPointer, *myPointer);
}

void MessWithArrays(void) {
    int a[40] = { 1, 2, 3 };
    
    for (int i = 0; i < 40; i++) {
        printf("address is %p, value is %d\n", &a[i], a[i]);
    }
    
    printf("a is %p\n", a);
    printf("adress of a is %p\n", &a);
    
//    printf("address is %p, value is %d\n", a, *a);
    
//    for (int *p = a, i = 0; *p; p++, i++) {
//    printf("address is %p, value is %d\n", p, *p);
//    printf("address is %p, value is %d\n", p, p[i]);
//}

    for (int i = 0; a[i]; i++) {
        printf("address is %p, value is %d\n", a + i, *(a + i));
    }
}

void MessWithStrings(void) {
    char s[] = { 'a', 'b', 'c', '\0' };
    char s2[] = "abc";
    const char *s3 = "abc";
    const char *s4 = "abc";

    for (int i = 0; s[i]; i++) {
        printf("address is %p, value is %d\n", &s[i], s[i]);
    }
    
    printf("address is %p, value is %s\n", s, s);
    printf("address is %p, value is %s\n", s2, s2);
    printf("address is %p, value is %s\n", s3, s3);
    printf("address is %p, value is %s\n", s4, s4);
    
//    s3[0] = 'b';
//    printf("s4 is %s\n", s4);
}

int main(int argc, const char * argv[]) {
    
    MessWithStrings();
    
//    MessWithArrays();
//    MessAroundWithPointers();
//    myFunction();
//    myFunction();
    
    return 0;
}
