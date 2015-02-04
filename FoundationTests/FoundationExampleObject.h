//
//  FoundationExampleObject.h
//  FoundationTests
//
//  Created by Julian Alonso on 4/2/15.
//  Copyright (c) 2015 Julian Alonso. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol FoundationExampleObject <NSObject>

- (BOOL)readyToRun;

@optional
- (void)runWithTitle:(NSString *)title AndSubtitle:(NSString *)subtitle;

@end
