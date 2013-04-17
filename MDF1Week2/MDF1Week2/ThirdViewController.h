//
//  ThirdViewController.h
//  MDF1Week2
//
//  Created by Cameron Mozie on 4/12/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "appInfoClass.h"
@interface ThirdViewController : UIViewController  <UITableViewDataSource, UITextViewDelegate>
{
    IBOutlet UITextView *textInfo;
    IBOutlet UILabel *name;
    IBOutlet UILabel *Date;
    IBOutlet UILabel *School;
    IBOutlet UILabel *Term;
    NSMutableArray *detailArray;
    
   
}

@property (nonatomic, strong)appInfoClass *userInfo;
@end
