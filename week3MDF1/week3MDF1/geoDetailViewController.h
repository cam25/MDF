//
//  geoDetailViewController.h
//  week3MDF1
//
//  Created by Cameron Mozie on 4/19/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "BusinessNfo.h"
@interface geoDetailViewController : UIViewController <UITextFieldDelegate, MKMapViewDelegate>
{
    IBOutlet MKMapView *mapView;
    
    float latitude;//holds long/lat for location for 
    float longitude;
    
    //textfiled variables
    IBOutlet UITextField *longText;
    IBOutlet UITextField *latText;
    //business label
    IBOutlet UILabel *businessLabel;
     
    
    NSString *nameOfBusiness;//holds buisness name for passing from first view to detail.
}
//properties for lat/long
@property float latitude;
@property float longtitude;


//properties for business name and location 
@property (strong) NSString *buisnessName;
@property (copy) NSString *nameOfBusiness;
@property CLLocationCoordinate2D businessLocation;
@property (strong,nonatomic)UILabel *businessLabel;
@property(nonatomic,retain) BusinessNfo *businessInfo;//retains the value


-(IBAction)onClick:(id)sender;

@end
