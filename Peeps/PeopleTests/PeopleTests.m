// Copyright (C) 2022 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <XCTest/XCTest.h>
#import <People/People.h>

// Declaring a category on Person
@interface Person (UnitTestAdditions)
- (void)growl;
@end

@interface PeopleTests : XCTestCase
@end

@implementation PeopleTests

- (void)testCreatePerson {
    Person *p1 = [[Person alloc] initWithFirstName:@"Fred"
                                          lastName:@"Smith"];
    NSLog(@"%@", p1);
}

- (void)testFactoryMethod {
    Person *p = [Person personWithFirstName:@"Fred" lastName:@"Smith" age:42];
    NSLog(@"%@", p);
    
    XCTAssertEqualObjects([p fullName], @"Fred Smith");
}

- (void)testBarkLikeADog {
    id fred = [Person personWithFirstName:@"Fred" lastName:@"Smith" age:42];
    Dog *dog = [[Dog alloc] init];
    
    [fred setDog:dog];
    
    if ([fred respondsToSelector:@selector(bark)]) {
        [fred bark];
    }
    
    if ([fred respondsToSelector:@selector(growl)]) {
        [fred growl];
    }
}

- (void)testCopyingBehavior {
    Dog *dog = [[Dog alloc] init];
    Dog *dog2 = [dog copy];
    
    NSLog(@"Original dog: %@, copy of dog: %@", dog, dog2);
}

@end
