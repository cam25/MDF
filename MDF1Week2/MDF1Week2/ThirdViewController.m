//
//  ThirdViewController.m
//  MDF1Week2
//
//  Created by Cameron Mozie on 4/12/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "ThirdViewController.h"
#import "appInfoClass.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController
@synthesize userInfo;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = NSLocalizedString(@"Custom", @"Custom");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}

- (void)viewDidLoad
{
    detailArray = [[NSMutableArray alloc] init];
    
    appInfoClass *details = [[appInfoClass alloc] initWithDetails:@"Cameron Mozie" date:@"04/24/2013" school:@"Full Sail University" term:@"1304"];
    
    [detailArray addObject:details];
    
  
    name.text = details.devName;
    Date.text = details.devDate;
    School.text = details.devSchool;
    Term.text = details.devTerm;
    
    
    
   
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
