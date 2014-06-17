//
//  ACColorKit.h
//
//  Created by Adam Cooke on 17/06/2014.
//  Copyright (c) 2014 aTech Media. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ACColorKit : NSObject

@property (strong, nonatomic) NSMutableDictionary *backend;

+ (ACColorKit *)sharedKit;

- (void)addColor:(UIColor *)color withName:(NSString *)name;
- (void)addColorWithHexString:(NSString *)rbgColor withName:(NSString *)name;
- (UIColor *)colorWithName:(NSString *)name;

@end
