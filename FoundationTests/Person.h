//
//  Person.h
//  FoundationTests
//
//  Created by Julian Alonso on 4/2/15.
//  Copyright (c) 2015 Julian Alonso. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject <NSCoding>

@property (nonatomic, copy)NSString *name;
@property (nonatomic, copy)NSString *city;
@property (nonatomic, copy)NSString *phoneNumber;
@property (nonatomic, copy)NSString *imageUrl;

- (instancetype)initWithName:(NSString *)name
                        City:(NSString *)city
                 PhoneNumber:(NSString *)phoneNumber
                 AndImageUrl:(NSString *)imageUrl
NS_DESIGNATED_INITIALIZER;

- (instancetype)initWithName:(NSString *)name
                        City:(NSString *)city
                 AndPhoneNumber:(NSString *)phoneNumber;


- (instancetype)initWithName:(NSString *)name
                     AndCity:(NSString *)city;

- (instancetype)initWithName:(NSString *)name;

- (instancetype)init;

- (NSString *)description;

@end
