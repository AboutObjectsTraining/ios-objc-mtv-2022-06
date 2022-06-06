// Copyright (C) 2022 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <Foundation/Foundation.h>

struct C_Person {
    const char *firstName;
    const char *lastName;
    int age;
};
typedef struct C_Person C_Person;

C_Person *CreatePerson(void);


// Person class
@interface Person : NSObject {
    // Instance variables (ivars)
    NSString *_firstName;
    NSString *_lastName;
    NSInteger _age;
}

- (NSString *)firstName;
- (void)setFirstName:(NSString *)newValue;

- (NSString *)lastName;
- (void)setLastName:(NSString *)newValue;

- (NSInteger)age;
- (void)setAge:(NSInteger)newValue;

@end
