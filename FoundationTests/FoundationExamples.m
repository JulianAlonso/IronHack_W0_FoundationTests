//
//  FoundationExamples.m
//  FoundationTests
//
//  Created by Julian Alonso on 4/2/15.
//  Copyright (c) 2015 Julian Alonso. All rights reserved.
//
#import "FoundationExamples.h"

@implementation FoundationExamples

+ (void)run {
    [[[self alloc] init] runContainerExamples];
}


- (void)runContainerExamples {
    NSString *s = @"pepe";
    NSString *p = s;
    
    NSLog(@"s = %@", s);
    NSLog(@"p = %@", p);
    
    NSMutableString *ms = [s mutableCopy];
    [ms setString:@"Juan"];
    NSLog(@"ms = %@", ms);
    
    p = ms;
    NSLog(@"p = %@", p);
    
    self.nameStrong = ms;
    self.nameCopy = ms;
    
    NSLog(@"self.nameStrong = %@", self.nameStrong);
    NSLog(@"self.nameCopy = %@", self.nameCopy);
    
    [ms setString:@"Franchesco"];
    
    NSLog(@"self.nameStrong = %@", self.nameStrong);
    NSLog(@"self.nameCopy = %@", self.nameCopy);
    
    const char *cadena = "Esto es una cadena de C";
    
    NSString *nscadena = [NSString stringWithUTF8String:cadena];
    NSLog(@"%@", nscadena);
    
    NSString *path = @"/Documents/MyFile.pdf";
    NSLog(@"%@", [path pathExtension]);
    
    NSString *otherFile = [@"/Documents/" stringByAppendingPathComponent:@"File.txt"];
    NSLog(@"%@", otherFile);
    
    
}

- (BOOL)readyToRun {
    NSLog(@"I'm ready.");
    return YES;
}

- (void)runExamples {
    NSLog(@"My class is NSNumber?: %i", [self isKindOfClass:[NSNumber class]]);
    NSLog(@"My clas is NSObject?: %i", [self isKindOfClass:[NSObject class]]);
    NSLog(@"My class is NSObject Memer?: %i", [self isMemberOfClass:[NSObject class]]);
    
    NSLog(@"Do i responds to the method init: %i", [self respondsToSelector:@selector(init)]);
    NSLog(@"Do i responds to the method uppercaseString: %i", [self respondsToSelector:@selector(uppercaseString)]);
    
    NSLog(@"Do i conforms to protocol: %i", [[self class] conformsToProtocol:@protocol(FoundationExampleObject)]);
    NSLog(@"Do i conforms to protocol: %i", [[FoundationExamples class] conformsToProtocol:@protocol(FoundationExampleObject)]);
    
    if ([self respondsToSelector:@selector(readyToRun)]) {
        [self readyToRun];
    }
    
    if ([self respondsToSelector:@selector(runWithTitle:AndSubtitle:)]) {
        NSLog(@"I support the selector");
        [self runWithTitle:@"Hello" AndSubtitle:@"IronHackers"];
    } else {
        NSLog(@"I don't support the selector");
    }
    
}

@end
