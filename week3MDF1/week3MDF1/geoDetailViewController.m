//
//  geoDetailViewController.m
//  week3MDF1
//
//  Created by Cameron Mozie on 4/19/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "geoDetailViewController.h"
#import "myMapAnnotation.h"
#import <CoreLocation/CoreLocation.h>
@interface geoDetailViewController ()

@end

@implementation geoDetailViewController
@synthesize latitude,longtitude,bizString,businessLocation,buisnessName,businessLabel,nameOfBusiness,info;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    //creates a span to do a zoom
    MKCoordinateSpan span;
    span.latitudeDelta = 20.0f;
    span.longitudeDelta = 20.0f;
    
    CLLocationCoordinate2D location;
    
    location.latitude = 28.55f;
    location.longitude = -81.33f;
    
    MKCoordinateRegion region;
    region.center = location;
    region.span = span;
    
    mapView.region = region;
    
   
    
    
    businessLabel.text = [NSString stringWithFormat:@"%@",nameOfBusiness];
    latText.text = [NSString stringWithFormat:@"%f",businessLocation.latitude];
    longText.text = [NSString stringWithFormat:@"%f",businessLocation.longitude];
    
    
   // myMapAnnotation *annotation = [[myMapAnnotation alloc]initWithTitle:@"Baltimore" coord:baltimoreLocation];
    
    //myMapAnnotation *annotation2 = [[myMapAnnotation alloc]initWithTitle:@"Glenarden" coord:glenardenLocation];
    
   // [mapView addAnnotations:[NSArray arrayWithObjects:annotation, annotation2 , nil]];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    NSLog(@"%@",bizString);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
