//
//  UIColor+HexString.m
//  ACToolkit
//
//  Created by Adam Cooke on 18/06/2014.
//
//

#import "UIColor+HexString.h"

@implementation UIColor (HexString)

+ (UIColor *)colorWithHexString:(NSString *)hexString {
    
    if (![hexString isKindOfClass:[NSString class]]) {
        return [UIColor blackColor];
    }
    
    if ([hexString length] != 6) {
        return [UIColor blackColor];
    }
    
    NSPredicate *hexRegex = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", @"^[a-f0-9]{6}$"];
    if (![hexRegex evaluateWithObject:hexString]) {
        return [UIColor blackColor];
    }
    
    unsigned int hexInt = 0;
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    [scanner setCharactersToBeSkipped:[NSCharacterSet characterSetWithCharactersInString:@"#"]];
    [scanner scanHexInt:&hexInt];
    
    UIColor *color =
    [UIColor colorWithRed:((CGFloat) ((hexInt & 0xFF0000) >> 16))/255
                    green:((CGFloat) ((hexInt & 0xFF00) >> 8))/255
                     blue:((CGFloat) (hexInt & 0xFF))/255
                    alpha:1];
    
    return color;
}

@end
