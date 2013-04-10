//
//  ViewController.h
//  Week1MDF
//
//  Created by Cameron Mozie on 4/8/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate>//table view delegate 
{
    
    IBOutlet UITableView *tableView1;
    NSMutableArray *hairTypes;
    NSMutableArray *rating;
    NSMutableArray *hairInfo;
    IBOutlet UIButton *editButn;
    IBOutlet UIButton *done;
    
}
-(IBAction)editClick:(id)sender;//click handle
@end
