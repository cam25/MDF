//
//  ViewController.h
//  Week1MDF
//
//  Created by Cameron Mozie on 4/8/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate>
{
    
    IBOutlet UITableView *tableView1;
    NSMutableArray *hairTypes;
    NSMutableArray *rating;
}
@end
