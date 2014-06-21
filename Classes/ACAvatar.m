//
//  ACAvatar.m
//
//  Created by Adam Cooke on 18/06/2014.
//  Copyright (c) 2014 Adam Cooke. All rights reserved.
//

#import "ACAvatar.h"

@implementation ACAvatar

+ (NSCache *)avatarCache {
    static NSCache *avatarCache;
    if (avatarCache == nil) {
        avatarCache = [[NSCache alloc] init];
    }
    return avatarCache;
}

+ (UIImage *)avatarWithURLString:(NSString *)url withSize:(int)size {
    NSString *urlToFetch = [url stringByReplacingOccurrencesOfString:@"{{size}}" withString:[NSString stringWithFormat:@"%d", size]];
    UIImage *cachedAvatar = [[self avatarCache] objectForKey:urlToFetch];
    if (cachedAvatar == nil) {
        NSURL *imageURL = [NSURL URLWithString:urlToFetch];
        UIImage *downloadedAvatar = [self rawAvatar:imageURL];
        if (downloadedAvatar == nil) {
            [[self avatarCache] setObject:[[NSNull alloc] init] forKey:urlToFetch];
        } else {
            [[self avatarCache] setObject:downloadedAvatar forKey:urlToFetch];
        }
        return downloadedAvatar;
    } else {
        if ([cachedAvatar isKindOfClass:[NSNull class]]) {
            return nil;
        } else {
            return cachedAvatar;
        }
    }
}

+ (UIImage *)rawAvatar:(NSURL *)url {
    NSData *imageData = [NSData dataWithContentsOfURL:url];
    UIImage *image = [UIImage imageWithData:imageData];
    return image;
}



@end
