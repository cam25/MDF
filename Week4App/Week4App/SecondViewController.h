//
//  SecondViewController.h
//  Week4App
//
//  Created by Cameron Mozie on 4/28/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol xmlViewer <NSObject>

@required
- (NSString *)xmlDataString;

@end

@interface SecondViewController : UIViewController

{
    IBOutlet UITextView *xmlView;
    id<xmlViewer> delegate;
}
@property (strong) id<xmlViewer> delegate;
@end
