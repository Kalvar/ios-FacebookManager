//
//  ViewController.m
//  FacebookSample
//
//  Created by Kalvar on 2014/1/1.
//  Copyright (c) 2014年 Kalvar. All rights reserved.
//

#import "ViewController.h"
#import "FacebookManager.h"

@interface ViewController ()

@property (nonatomic, strong) FacebookManager *_facebookManager;

@end

@implementation ViewController

@synthesize _facebookManager;

- (void)viewDidLoad
{
    [super viewDidLoad];
	_facebookManager = [FacebookManager sharedManager];
    [_facebookManager awakeFBSession];
    
    NSLog(@"id : %@", _facebookManager.userId);
    NSLog(@"name : %@", _facebookManager.userName);
    NSLog(@"gender : %@", _facebookManager.userGender);
    NSLog(@"birthday : %@", _facebookManager.userBirthday);
    NSLog(@"userInfo : %@", _facebookManager.userInfo);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    self._facebookManager = nil;
}

-(IBAction)login:(id)sender
{
    //If user not logged.
    if( ![_facebookManager isFBSessionOpen] )
    {
        [_facebookManager loginWithCompletion:^(BOOL success, NSDictionary *userInfo)
         {
             NSLog(@"userInfo : %@", userInfo);
         }];
    }
}

-(IBAction)logout:(id)sender
{
    [_facebookManager logout];
}

@end
