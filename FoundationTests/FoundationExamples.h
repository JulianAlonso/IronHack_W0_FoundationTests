//
//  FoundationExamples.h
//  FoundationTests
//
//  Created by Julian Alonso on 4/2/15.
//  Copyright (c) 2015 Julian Alonso. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoundationExampleObject.h"

@interface FoundationExamples : NSObject <FoundationExampleObject>

@property (nonatomic, strong)NSString *nameStrong;
@property (nonatomic, copy)NSString *nameCopy;

+ (void)run;

- (void)runExamples;

- (void)runContainerExamples;

@end
