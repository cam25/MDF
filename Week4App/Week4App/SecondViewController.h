//
//  SecondViewController.h
//  Week4App
//
//  Created by Cameron Mozie on 4/28/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "locationNfo.h"
@protocol xmlViewer <NSObject>

@required
- (NSString *)xmlDataString;

@end

@interface SecondViewController : UIViewController

{
    IBOutlet UITextView *xmlView;
    id<xmlViewer> delegate;
    NSURLRequest *request;
    NSString *locationState;
    NSURL *url;
    NSURLConnection *urlConnection;
    NSMutableData *requestData;
    NSString *requestString;
    NSString *areaString;
    NSMutableArray *locations;
}
@property (strong) id<xmlViewer> delegate;
@property (nonatomic, strong)locationNfo *location;
@end
