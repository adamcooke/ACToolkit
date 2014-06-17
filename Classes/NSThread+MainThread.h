//
//  NSThread+MainThread.h
//  ACToolkit
//
//  Created by Adam Cooke on 18/06/2014.
//
//

@interface NSThread (MainThread)

+ (void)onMainThread:(SEL)selector target:(NSObject *)target;
+ (void)onMainThread:(void (^)(void))block;

@end
