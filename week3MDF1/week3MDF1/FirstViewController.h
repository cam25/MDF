//
//  FirstViewController.h
//  week3MDF1
//
//  Created by Cameron Mozie on 4/18/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController <UITableViewDelegate>
{
    IBOutlet UITableView *buisnessTableView;
    IBOutlet UIButton *editButn;
    IBOutlet UIButton *doneButn;
    
    NSMutableArray *buisnesses;
    NSMutableArray *locations;
    
}
-(IBAction)editClick:(id)sender;
@end
