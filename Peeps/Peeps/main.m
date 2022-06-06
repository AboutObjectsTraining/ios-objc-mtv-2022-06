// Copyright (C) 2022 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <Foundation/Foundation.h>
#import "Person.h"

void MessWithCPerson(void) {
    C_Person fred = {
        .age = 33,
        .lastName = "Smith",
        .firstName = "Fred",
    };
    
    printf("%s %s, age: %d\n", fred.firstName, fred.lastName, fred.age);
}

void MessWithObjCPerson(void) {
    Person *person = [Person alloc];
    person = [person init];
    NSLog(@"Person is %@", person);
    
    [person setFirstName:@"Fred"];
    [person setLastName:@"Smith"];
    [person setAge:33];
    NSLog(@"Person is %@", person);
}

int main(int argc, const char * argv[]) {
    MessWithObjCPerson();
//    MessWithCPerson();
    
    return 0;
}
