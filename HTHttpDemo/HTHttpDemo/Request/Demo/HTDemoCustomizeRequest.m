//
//  HTDemoCustomizeRequest.m
//  HTHttpDemo
//
//  Created by Wangliping on 16/2/4.
//  Copyright © 2016年 NetEase. All rights reserved.
//

#import "HTDemoCustomizeRequest.h"
#import "RKDemoUserInfo.h"

@implementation HTDemoCustomizeRequest

+ (NSString *)requestUrl {
    return @"/user";
}

+ (RKMapping *)responseMapping {
    RKObjectMapping *mapping = [RKObjectMapping mappingForClass:[RKDemoUserInfo class]];
    [mapping addAttributeMappingsFromArray:@[@"userId", @"balance", @"version"]];
    [mapping addAttributeMappingsFromDictionary:@{@"version":@"name", @"status":@"password"}];
    
    return mapping;
}

+ (NSString *)keyPath {
    return @"data";
}

@end
