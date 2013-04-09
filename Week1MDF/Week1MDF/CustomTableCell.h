//
//  CustomTableCell.h
//  Week1MDF
//
//  Created by Cameron Mozie on 4/8/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableCell : UITableViewCell
{
   
    IBOutlet UILabel *ratingLabel;
    IBOutlet UILabel *hairLabel;
}
@property (assign) UILabel *ratingLabel;
@property (nonatomic, strong)UILabel *hairLabel;
@end
