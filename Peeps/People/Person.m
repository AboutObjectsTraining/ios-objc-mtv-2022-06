// Copyright (C) 2022 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "Person.h"
#import "Dog.h"

@implementation Person

// Overrides inherited designated initializer
- (instancetype)init {
    return [self initWithFirstName:nil lastName:nil];
}

// Convenience initializer
- (instancetype)initWithFirstName:(NSString *)aFirstName
                         lastName:(NSString *)aLastName {
    return [self initWithFirstName:aFirstName lastName:aLastName age:0];
}

// Designated initializer
- (instancetype)initWithFirstName:(NSString *)aFirstName
                         lastName:(NSString *)aLastName
                              age:(NSInteger)anAge {
    self = [super init];
    if (self == nil) return nil;
    
    // Perform initialization (especially ivars).
    _firstName = [aFirstName copy];
    _lastName = [aLastName copy];
    _age = anAge;
    
    // Safe to call our own methods at this point.
    return self;
}

+ (instancetype)personWithFirstName:(NSString *)aFirstName
                           lastName:(NSString *)aLastName
                                age:(NSInteger)anAge {
    return [[self alloc] initWithFirstName:aFirstName lastName:aLastName age:anAge];
}

- (BOOL)respondsToSelector:(SEL)aSelector {
    if ([super respondsToSelector:aSelector]) {
        return YES;
    }
    return [self.dog respondsToSelector:aSelector];
}

- (id)forwardingTargetForSelector:(SEL)aSelector {
    if ([self.dog respondsToSelector:aSelector]) {
        return self.dog;
    }
    return [super forwardingTargetForSelector:aSelector];
}

- (NSString *)fullName {
    return [NSString stringWithFormat:@"%@ %@", self.firstName, self.lastName];
}

- (NSString *)description {
    return [[NSString alloc] initWithFormat:
            @"%@ %@, age: %@",
            self.firstName, self.lastName, @(self.age)];
}

@end


// C Example
C_Person *CreatePerson(void) {
    return calloc(1, sizeof(C_Person));
}


