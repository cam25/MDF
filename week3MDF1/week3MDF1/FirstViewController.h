//
//  FirstViewController.h
//  week3MDF1
//
//  Created by Cameron Mozie on 4/18/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "myMapAnnotation.h"
#import <CoreLocation/CoreLocation.h>
@interface FirstViewController : UIViewController <UITableViewDelegate , UITableViewDataSource
>
{
    IBOutlet UITableView *buisnessTableView;
    IBOutlet UIButton *editButn;
    IBOutlet UIButton *doneButn;
    
   // NSMutableArray *businesses;

    
    myMapAnnotation *title;
    myMapAnnotation *coord;
    
    
    
}
-(IBAction)editClick:(id)sender;
@property CLLocationCoordinate2D *coordinates;
//@property (nonatomic,strong)NSMutableArray *businesses;
@property (strong,nonatomic) IBOutlet MKMapView *secondMap;
@end
