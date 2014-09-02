//
//  LFViewController.m
//  AlertViewTest
//
//  Created by fei on 14-8-1.
//  Copyright (c) 2014年 self. All rights reserved.
//

#import "LFViewController.h"

@interface LFViewController () <UIAlertViewDelegate>

@end

@implementation LFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"title" message:@"message \n aaaaa" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(60, 60, 40, 50)];
    imageView.backgroundColor = [UIColor redColor];
    [alert addSubview:imageView];
    [alert show];
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    switch (buttonIndex) {
        case 0:
            NSLog(@"cancel");
            break;
        case 1:
            NSLog(@"sure");
            break;
            
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
