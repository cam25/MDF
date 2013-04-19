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
@interface geoDetailViewController : UIViewController <UITextFieldDelegate>
{
    IBOutlet MKMapView *mapView;
    float latitude;
    float longitude;
    IBOutlet UITextField *longText;
    IBOutlet UITextField *latText;
    IBOutlet UILabel *businessLabel;
    NSString *nameOfBusiness;
}

@property float latitude;
@property float longtitude;

@property (strong,nonatomic) NSString *bizString;

@property (strong) NSString *buisnessName;
@property (copy) NSString *nameOfBusiness;
@property CLLocationCoordinate2D businessLocation;
@property (strong,nonatomic)UILabel *businessLabel;
@property(nonatomic,retain) BusinessNfo *info;


@end
