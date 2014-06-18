//
//  ACAvatar.h
//
//  Created by Adam Cooke on 18/06/2014.
//  Copyright (c) 2014 Adam Cooke. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ACAvatar : NSObject

+ (NSCache *)avatarCache;
+ (UIImage *)rawAvatar:(NSURL *)url;
+ (UIImage *)avatarWithURLString:(NSString *)url withSize:(int)size;

@end
