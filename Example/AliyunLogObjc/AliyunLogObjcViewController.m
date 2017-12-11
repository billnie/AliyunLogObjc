//
//  AliyunLogObjcViewController.m
//  AliyunLogObjc
//
//  Created by billnie on 12/11/2017.
//  Copyright (c) 2017 billnie. All rights reserved.
//

#import "AliyunLogObjcViewController.h"

@interface AliyunLogObjcViewController ()

@end

@implementation AliyunLogObjcViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    LogClient *client = [[LogClient alloc] initWithApp: @"cn-shenzhen.log.aliyuncs.com exam" accessKeyID:@"your keyid" accessKeySecret:@"your secret" projectName:@"your project"];
    LogGroup *logGroup = [[LogGroup alloc] initWithTopic: @"" andSource:@""];
    Log *log1 = [[Log alloc] init];
    [log1 PutContent: @"Value" withKey: @"Key"];
    [log1 PutContent: @"Value2" withKey: @"Key2"];
    [log1 PutContent: @"Value3" withKey: @"Key3"];
    [logGroup PutLog:log1];
    [client PostLog:logGroup logStoreName: @"your project" call:^(NSURLResponse* _Nullable response,NSError* _Nullable error) {
        if (error != nil) {
        }
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
