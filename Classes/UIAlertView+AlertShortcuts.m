//
//  UIAlertView+AlertShortcuts.m
//  ACToolkit
//
//  Created by Adam Cooke on 18/06/2014.
//
//

#import "UIAlertView+AlertShortcuts.h"

@implementation UIAlertView (AlertShortcuts)

+ (void)showAlert: (NSString *)text {
    [self showAlert:@"Error" text:text button:@"Close"];
}

+ (void)showAlert:(NSString *)title text:(NSString *)text {
    [self showAlert:title text:text button:@"Close"];
}

+ (void)showAlert:(NSString *)title text:(NSString *)text button:(NSString *)button {
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:text delegate:nil cancelButtonTitle:button otherButtonTitles:nil];
    [alertView show];
}

@end
