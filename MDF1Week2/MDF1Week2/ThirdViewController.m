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


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = NSLocalizedString(@"Custom", @"Custom");//sets title for tab
        self.tabBarItem.image = [UIImage imageNamed:@"first"];//sets image for tab
    }
    return self;
}

- (void)viewDidLoad
{
    detailArray = [[NSMutableArray alloc] init];//array
    
    appInfoClass *details = [[appInfoClass alloc] initWithDetails:@"Cameron Mozie" date:@"04/18/2013" school:@"Full Sail University" term:@"1304" course:@"MDF1"];//setting properties to an init
    
    [detailArray addObject:details];//adding objects to array
    
  
    //passing data from object to view controller labels
    name.text = details.devName;
    Date.text = details.devDate;
    School.text = details.devSchool;
    Term.text = details.devTerm;
    course.text = details.devCourse;
    
    
    
   
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
