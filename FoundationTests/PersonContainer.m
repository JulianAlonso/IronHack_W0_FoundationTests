//
//  PersonContainer.m
//  FoundationTests
//
//  Created by Julian Alonso on 4/2/15.
//  Copyright (c) 2015 Julian Alonso. All rights reserved.
//

#import "PersonContainer.h"
#import "Person.h"

@interface PersonContainer ()

@property (readonly, nonatomic)NSString *path;
@property (strong, nonatomic)NSMutableArray *persons;
@end

@implementation PersonContainer
#pragma mark - Inits
- (instancetype)init {
    self = [super init];
    if (self) {
        _path = [[[[NSBundle mainBundle] bundlePath] stringByAppendingPathComponent:@"PersonContainer.plist"] copy];
        _persons = [[NSMutableArray alloc] init];
    }
    return self;
}
#pragma mark - Methods
- (BOOL)addPerson:(Person *)person {
	
    if (!person) {
        return NO;
    }
    
    [self.persons addObject:person];
    return YES;
}

- (BOOL)removePerson:(Person *)person {
	
    if (person) {
        if ([self.persons containsObject:person]) {
            [self.persons removeObject:person];
            return YES;
        }
    }
    return NO;
}

- (NSUInteger *)count {
    return (NSUInteger *)[self.persons count];
}

- (NSArray *)findAll {
    return [NSArray arrayWithArray:self.persons];
}

#pragma mark - Methods: Save data methods
- (BOOL)save {
    return [NSKeyedArchiver archiveRootObject:self.persons toFile:self.path];
}

- (NSArray *)getSaved {
    return [NSKeyedUnarchiver unarchiveObjectWithFile:self.path];
}

@end
