//
//  SecondViewController.h
//  Week1MDF
//
//  Created by Cameron Mozie on 4/8/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
{
    IBOutlet UIButton *backButton;
    IBOutlet UILabel *detailLabel;
    IBOutlet UITextView *detailText;
}

-(IBAction)backClick:(id)sender;//back click handler
@property (assign) UITextView *detailText;//property assigned for text view
@end
