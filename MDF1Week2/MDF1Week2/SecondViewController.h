//
//  SecondViewController.h
//  MDF1Week2
//
//  Created by Cameron Mozie on 4/12/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

{
    NSArray *xmlInfo;
    NSArray *xmlDetails;
    NSArray *urls;
    IBOutlet UITableView *tableView1;
    IBOutlet UILabel *labelTitle;
}
@end
