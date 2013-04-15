//
//  FourthViewController.h
//  MDF1Week2
//
//  Created by Cameron Mozie on 4/14/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FourthViewController : UIViewController
{
    IBOutlet UILabel *detailLabel;
    IBOutlet UITextView *detailText;
    IBOutlet UILabel *urlLabel;
    
}
-(IBAction)backClick:(id)sender;
@property (strong, nonatomic) IBOutlet UITextView *detailText;
@property (strong, nonatomic) IBOutlet UILabel *detailLabel;
@property (strong, nonatomic) IBOutlet UILabel *urlLabel;
@end
