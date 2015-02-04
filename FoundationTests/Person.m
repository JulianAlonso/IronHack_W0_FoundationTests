//
//  Person.m
//  FoundationTests
//
//  Created by Julian Alonso on 4/2/15.
//  Copyright (c) 2015 Julian Alonso. All rights reserved.
//

#import "Person.h"

@implementation Person
#pragma mark - Inits
- (instancetype)initWithName:(NSString *)name City:(NSString *)city AndPhoneNumber:(NSString *)phoneNumber {
    
    self = [super init];
    if (self) {
        _name = [name copy];
        _city = [city copy];
        _phoneNumber = [phoneNumber copy];
    }
    return self;
}

- (instancetype)initWithName:(NSString *)name AndCity:(NSString *)city {
    return [self initWithName:name City:city AndPhoneNumber:@""];
}

- (instancetype)initWithName:(NSString *)name {
    return [self initWithName:name City:@"" AndPhoneNumber:@""];
}

- (instancetype)init {
    return [self initWithName:@"" City:@"" AndPhoneNumber:@""];
}

#pragma mark - Methods
- (void)encodeWithCoder:(NSCoder *)aCoder {
    
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.city forKey:@"city"];
    [aCoder encodeObject:self.phoneNumber forKey:@"phone"];
    
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    
    if (!self) {
        return nil;
    }
    
    self.name = [aDecoder decodeObjectForKey:@"name"];
    self.city = [aDecoder decodeObjectForKey:@"city"];
    self.phoneNumber = [aDecoder decodeObjectForKey:@"phone"];
    
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"Name: %@ City: %@ PhoneNumber: %@", self.name, self.city, self.phoneNumber];
}

@end
