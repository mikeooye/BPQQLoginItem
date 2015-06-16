//
//  TencentApiHandler.h
//  BPQQLoginItem
//
//  Created by LiHaozhen on 15/6/16.
//  Copyright (c) 2015年 LiHaozhen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <TencentOpenAPI/TencentOAuth.h>

@interface TencentApiHandler : NSObject

+ (instancetype)defaultHandler;

- (BOOL)handleURL:(NSURL *)url;

- (void)authorize;
@end
