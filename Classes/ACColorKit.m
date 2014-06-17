//
//  ACColorKit.m
//
//  Created by Adam Cooke on 17/06/2014.
//  Copyright (c) 2014 aTech Media. All rights reserved.
//

#import "ACColorKit.h"

@implementation ACColorKit

+ (ACColorKit *)sharedKit {
    static ACColorKit *colorKit;
    if (colorKit == nil) {
        colorKit = [[self alloc] init];
    }
    return colorKit;
}

- (id)init {
    if (self = [super init]) {
        self.backend = [NSMutableDictionary dictionary];
    }
    return self;
}

- (void)addColor:(UIColor *)color withName:(NSString *)name {
    [self.backend setObject:color forKey:name];
}

- (void)addColorWithHexString:(NSString *)hexString withName:(NSString *)name; {
    unsigned int hexInt = 0;
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    [scanner setCharactersToBeSkipped:[NSCharacterSet characterSetWithCharactersInString:@"#"]];
    [scanner scanHexInt:&hexInt];
    
    UIColor *color = [UIColor colorWithRed:((CGFloat) ((hexInt & 0xFF0000) >> 16))/255 green:((CGFloat) ((hexInt & 0xFF00) >> 8))/255 blue:((CGFloat) (hexInt & 0xFF))/255 alpha:1];
    [self addColor:color withName:name];
}

- (UIColor *)colorWithName:(NSString *)name {
    UIColor *color = [self.backend objectForKey:name];
    if (color == nil) {
        return [UIColor blackColor];
    } else {
        return color;
    }
}

@end
