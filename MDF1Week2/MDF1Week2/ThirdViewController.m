//
//  ThirdViewController.m
//  MDF1Week2
//
//  Created by Cameron Mozie on 4/12/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "ThirdViewController.h"
#import "appInfo.h"
#import "appInfoFactory.h"
@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = NSLocalizedString(@"Custom", @"Custom");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}

- (void)viewDidLoad
{
  
    appInfo *information = [[appInfo alloc] initWithName:@"info"];
    [[appInfoFactory sharedAppInfoFactory ] showInfo];
    appInfoFactory *manager = [appInfoFactory sharedAppInfoFactory];
    if (manager != nil) {
        
        NSMutableArray *myInfo = manager.info;
        if (myInfo != nil) {
            
            [myInfo addObject:information];
           textInfo.text =  [myInfo objectAtIndex:1];
            
           
        }
    }

       
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
