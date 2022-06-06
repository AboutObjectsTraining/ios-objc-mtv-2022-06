// Copyright (C) 2022 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "Person.h"

C_Person *CreatePerson(void) {
    return calloc(1, sizeof(C_Person));
}


@implementation Person

- (NSString *)firstName {
    return _firstName;
}
- (void)setFirstName:(NSString *)newValue {
    // FIXME: memory management
    _firstName = newValue;
}

- (NSString *)lastName {
    return _lastName;
}
- (void)setLastName:(NSString *)newValue {
    // FIXME: memory management
    _lastName = newValue;
}

- (NSInteger)age {
    return _age;
}
- (void)setAge:(NSInteger)newValue {
    _age = newValue;
}

- (NSString *)description {
    return [[NSString alloc] initWithFormat:
            @"%@ %@, age: %@",
            [self firstName], [self lastName], @([self age])];
}

@end
