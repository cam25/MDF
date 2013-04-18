//
//  FourthViewController.m
//  MDF1Week2
//
//  Created by Cameron Mozie on 4/14/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "FourthViewController.h"

@interface FourthViewController ()

@end

@implementation FourthViewController
@synthesize detailText, detailLabel,urlLabel;
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
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//back button method
-(IBAction)backClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if (button.tag == 0) {
        [self dismissViewControllerAnimated:YES completion:nil];//returns to first view controller
    }
}

@end
