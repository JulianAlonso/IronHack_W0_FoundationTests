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
    FoundationExamples *fe = [[self alloc] init];
    
    if (fe && fe.readyToRun) {
        [fe runDictionaryExamples];
    }
    
}

- (BOOL)readyToRun {
    NSLog(@"I'm ready.");
    return YES;
}

- (void)runStringExamples {
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

- (void)runClassExamples {
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

- (void)runArrayExamples {
    
    NSArray *arr = [[NSArray alloc]initWithObjects:@"Luis",@"Pepe",@"Paco", nil];
    NSString *path = [[[NSBundle mainBundle] bundlePath] stringByAppendingPathComponent:@"Array.plist"];
    
    [arr writeToFile:path atomically:YES];
    
    NSArray *saved = [NSArray arrayWithContentsOfFile:path];
    NSLog(@"PATH: %@", path);
    NSLog(@"%@", saved);
    
    
}

- (void)runDictionaryExamples {
    
    NSDictionary *dict = [NSDictionary dictionaryWithObject:@"This is the NSString one" forKey:@1];
    
    NSString *path = [[[NSBundle mainBundle] bundlePath] stringByAppendingPathComponent:@"Dictionary.plist"];
    
    [dict writeToFile:path atomically:YES];
    
    NSDictionary *saved = [NSDictionary dictionaryWithContentsOfFile:path];
    
    NSLog(@"PATH: %@", path);
    NSLog(@"%@", saved);
    
    
    NSMutableDictionary *mdict = [dict mutableCopy];
    [mdict setObject:@14 forKey:@2];
    
    NSLog(@"%@", dict);
    NSLog(@"%@", mdict);
    
    NSLog(@"Keys: %@", [dict allKeys]);
    NSLog(@"Values: %@", [dict allValues]);
    
    NSLog(@"Printing one for one...");
    
    for (id key in [mdict allKeys]) {
        NSLog(@"Key: %@ Value: %@", key, mdict[key]);
    }
    
    
}

@end
