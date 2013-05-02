//
//  FirstViewController.h
//  Week4App
//
//  Created by Cameron Mozie on 4/28/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
   
    IBOutlet UITableView *infoTable;
   
    NSMutableArray *locations;
   
    NSString *areaString;
    NSMutableArray *cities;

}
@property NSString *areaString;
-(IBAction)onClick:(id)sender;

@end
