//
//  TencentApiHandler.m
//  BPQQLoginItem
//
//  Created by LiHaozhen on 15/6/16.
//  Copyright (c) 2015年 LiHaozhen. All rights reserved.
//

#import "TencentApiHandler.h"
#import "TencentConfig.h"

@interface TencentApiHandler ()<TencentSessionDelegate>

@property (strong, nonatomic) TencentOAuth *oauth;
@end

@implementation TencentApiHandler

+ (instancetype)defaultHandler
{
    static TencentApiHandler *_instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        _instance = [[TencentApiHandler alloc] init];
    });
    return _instance;
}

- (BOOL)handleURL:(NSURL *)url
{
    return [TencentOAuth HandleOpenURL:url];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _oauth = [[TencentOAuth alloc] initWithAppId:kQQAppId andDelegate:self];
    }
    return self;
}

- (void)authorize
{
    NSArray *permissions = @[kOPEN_PERMISSION_GET_INFO, kOPEN_PERMISSION_GET_SIMPLE_USER_INFO];
    [self.oauth authorize:permissions];
}

#pragma mark - Delegate
/**
 * 登录成功后的回调
 */
- (void)tencentDidLogin
{
    
}

/**
 * 登录失败后的回调
 * \param cancelled 代表用户是否主动退出登录
 */
- (void)tencentDidNotLogin:(BOOL)cancelled
{
    
}

/**
 * 登录时网络有问题的回调
 */
- (void)tencentDidNotNetWork
{
    
}
@end
