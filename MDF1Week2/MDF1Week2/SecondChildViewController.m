//
//  SecondChildViewController.m
//  MDF1Week2
//
//  Created by Cameron Mozie on 4/15/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "SecondChildViewController.h"
#import "ThirdChildViewController.h"
@interface SecondChildViewController ()

@end

@implementation SecondChildViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    self.title = @"Under Construction";
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//method for back button 
-(IBAction)onClick:(id)sender
{
    ThirdChildViewController *thirdChildView = [[ThirdChildViewController alloc]initWithNibName:@"ChildView3" bundle:nil];
    if (thirdChildView != nil) {
        [self.navigationController pushViewController:thirdChildView animated:true];//nav controller
    }
}
@end
