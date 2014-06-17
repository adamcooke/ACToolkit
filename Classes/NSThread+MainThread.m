//
//  NSThread+MainThread.m
//  ACToolkit
//
//  Created by Adam Cooke on 18/06/2014.
//
//

#import "NSThread+MainThread.h"

@implementation NSThread (MainThread)

+ (void)onMainThread:(SEL)selector target:(NSObject *)target {
    IMP imp = [target methodForSelector:selector];
    void (*func)(id,SEL) = (void *)imp;
    func(target, selector);
}

+ (void)onMainThread:(void (^)(void))block {
    dispatch_async(dispatch_get_main_queue(), block);
}

@end
