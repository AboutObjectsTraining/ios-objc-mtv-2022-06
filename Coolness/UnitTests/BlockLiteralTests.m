// Copyright (C) 2022 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <XCTest/XCTest.h>

@interface BlockLiteralTests : XCTestCase
@end

void SayHello(void) {
    printf("Hello!\n");
}

void SayBye(void) {
    printf("Bye!\n");
}

void PerformNTimes(int count, void (*thingToPerform)(void)) {
    for (int i = 0; i < count; i++) {
        thingToPerform();
    }
}

void PerformNTimesWithBlock(int count, void (^thingToPerform)(void)) {
    for (int i = 0; i < count; i++) {
        thingToPerform();
    }
}

@implementation BlockLiteralTests

- (void)testPassingBlockLiteralArgument {
    char *message = "but cool";
    
    PerformNTimesWithBlock(3, ^{
        printf("Blocks are weird %s\n", message);
    });
}

- (void)testBlockLiteralSyntax {
    void (^myBlock)(void);
    
    const char *message = "sunny";
    
    myBlock = ^{
        printf("Hello from my block! The weather is %s\n", message);
    };
    
    myBlock();
    NSLog(@"%@", [myBlock description]);
    
    id copyOfBlock = [myBlock copy];
    NSLog(@"%@", copyOfBlock);
}

- (void)testFunctionPointerSyntax {
    
    void (*myFunctionPointer)(void);
    
    myFunctionPointer = SayHello;
    myFunctionPointer();
    
    myFunctionPointer = SayBye;
    myFunctionPointer();
    
    PerformNTimes(3, SayHello);
}

@end
