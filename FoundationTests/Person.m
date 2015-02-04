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
- (instancetype)initWithName:(NSString *)name City:(NSString *)city PhoneNumber:(NSString *)phoneNumber AndImageUrl:(NSString *)imageUrl {
    self = [super init];
    if (self) {
        _name = [name copy];
        _city = [city copy];
        _phoneNumber = [phoneNumber copy];
        _imageUrl = [imageUrl copy];
    }
    return self;
}
- (instancetype)initWithName:(NSString *)name City:(NSString *)city AndPhoneNumber:(NSString *)phoneNumber {
    return [self initWithName:name City:city PhoneNumber:phoneNumber AndImageUrl:@""];
}

- (instancetype)initWithName:(NSString *)name AndCity:(NSString *)city {
    return [self initWithName:name City:city PhoneNumber:@"" AndImageUrl:@""];
}

- (instancetype)initWithName:(NSString *)name {
    return [self initWithName:name City:@"" PhoneNumber:@"" AndImageUrl:@""];
}

- (instancetype)init {
    return [self initWithName:@"" City:@"" PhoneNumber:@"" AndImageUrl:@""];
}

#pragma mark - Methods
- (void)encodeWithCoder:(NSCoder *)aCoder {
    
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.city forKey:@"city"];
    [aCoder encodeObject:self.phoneNumber forKey:@"phone"];
    [aCoder encodeObject:self.imageUrl forKey:@"imageUrl"];
    
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    
    if (!self) {
        return nil;
    }
    
    self.name = [aDecoder decodeObjectForKey:@"name"];
    self.city = [aDecoder decodeObjectForKey:@"city"];
    self.phoneNumber = [aDecoder decodeObjectForKey:@"phone"];
    self.imageUrl = [aDecoder decodeObjectForKey:@"imageUrl"];
    
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"Name: %@ City: %@ PhoneNumber: %@ ImageUrl: %@", self.name, self.city, self.phoneNumber, self.imageUrl];
}

@end
