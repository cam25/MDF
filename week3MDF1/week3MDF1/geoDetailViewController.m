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
@synthesize latitude,longtitude,businessLocation,buisnessName,businessLabel,nameOfBusiness,businessInfo;

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
    span.latitudeDelta = 0.6f;
    span.longitudeDelta = 0.6f;
    
    //sets location for map viw
    MKCoordinateRegion region;
    region.center = businessLocation;
    region.span = span;
    mapView.region = region;
    
   
    
    //sets text field and label to array index.
    businessLabel.text = [NSString stringWithFormat:@"%@",nameOfBusiness];
    latText.text = [NSString stringWithFormat:@"%f",businessLocation.latitude];
    longText.text = [NSString stringWithFormat:@"%f",businessLocation.longitude];
    
    
   // myMapAnnotation *annotation = [[myMapAnnotation alloc]initWithTitle:@"Baltimore" coord:baltimoreLocation];
    
    //myMapAnnotation *annotation2 = [[myMapAnnotation alloc]initWithTitle:@"Glenarden" coord:glenardenLocation];
    
   // [mapView addAnnotations:[NSArray arrayWithObjects:annotation, annotation2 , nil]];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    

}

//set annotations on will appear
-(void)viewWillAppear:(BOOL)animated
{
    myMapAnnotation *mapAnnotations = [[myMapAnnotation alloc]initWithTitle:nameOfBusiness coord:businessLocation];
    if (mapAnnotations != nil) {
        [mapView addAnnotation:mapAnnotations];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton *)sender;
    
    if (button != nil)
    {
        // close the current view and return to the first view
        [self dismissViewControllerAnimated:true completion:nil];
    }
}


@end
