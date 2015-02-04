//
//  PersonContainer.h
//  FoundationTests
//
//  Created by Julian Alonso on 4/2/15.
//  Copyright (c) 2015 Julian Alonso. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface PersonContainer : NSObject

- (instancetype)init;

- (BOOL)addPerson:(Person *)person;
- (BOOL)removePerson:(Person *)person;
- (NSUInteger *)count;
- (NSArray *)findAll;

- (BOOL)save;
- (NSArray *)getSaved;


@end
