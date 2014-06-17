//
//  UIAlertView+AlertShortcuts.h
//  ACToolkit
//
//  Created by Adam Cooke on 18/06/2014.
//
//

@interface UIAlertView (AlertShortcuts)

+ (void)showAlert: (NSString *)text;
+ (void)showAlert:(NSString *)title text:(NSString *)text;
+ (void)showAlert:(NSString *)title text:(NSString *)text button:(NSString *)button;

@end
