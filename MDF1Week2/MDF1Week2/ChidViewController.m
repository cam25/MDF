//
//  ChidViewController.m
//  MDF1Week2
//
//  Created by Cameron Mozie on 4/15/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "ChidViewController.h"
#import "SecondChildViewController.h"

@interface ChidViewController ()

@end

@implementation ChidViewController

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
    
    self.title = @"Ex.XML Markup";
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//back button method
-(IBAction)onClick:(id)sender
{
    SecondChildViewController *secondChildView = [[SecondChildViewController alloc]initWithNibName:@"childView2" bundle:nil];
    if (secondChildView != nil) {
        [self.navigationController pushViewController:secondChildView animated:true];//pushes view with nav controller
    }
}

@end
