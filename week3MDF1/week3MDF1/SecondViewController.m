//
//  SecondViewController.m
//  week3MDF1
//
//  Created by Cameron Mozie on 4/18/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "SecondViewController.h"
#import <MapKit/MapKit.h>
#import "myMapAnnotation.h"
#import "DataManager.h"
#import "BusinessNfo.h"
#import "FirstViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize secondMap,locations;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Second", @"Second");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
        //DataManager *dataManager = [DataManager sharedDataManager];
        //BOOL *dirtyData = dataManager.dirtyBits;
        dirtyBits = YES;
        
        
    }
    return self;
}


							
- (void)viewDidLoad
{
    
    MKCoordinateSpan span;
    span.latitudeDelta = 15.0f;
    span.longitudeDelta = 15.0f;
    
    CLLocationCoordinate2D location;
    location.latitude = 38.89f;
    location.longitude = -77.03f;
    
    MKCoordinateRegion region;
    region.center = location;
    region.span = span;
    
    secondMap.region = region;
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
    DataManager *dataManager = [DataManager sharedDataManager];
    NSMutableArray *annotationData = dataManager.businesses;
    
    if (dirtyBits == NO) {
        if ([annotationData count] > 0) {//if annotationData is less than 0 
            [secondMap removeAnnotations:secondMap.annotations];//remove annotation
        }
    }
    else if (dirtyBits == YES)
    {
        dirtyBits = NO;
    }
  
    DataManager *data = [DataManager sharedDataManager];
    NSMutableArray *mapData = data.businesses;
    
    for (int i = 0; i < [mapData count]; i++) {//loops through array of objects
        myMapAnnotation *annotations = [[myMapAnnotation alloc] initWithTitle:[[mapData objectAtIndex:i]locationName] coord:[[mapData objectAtIndex:i]actualLocation]];//sets object at index of the mapData array with location name and location to annotations variable 
       
        
        if (annotations != nil) {
            [secondMap addAnnotation:annotations];//adds annotations
        
        }
   
    }
    
    
    [super viewWillAppear:animated];
    
}

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
    MKPinAnnotationView *mapPin = nil;
    if ([annotation isKindOfClass:[annotation class]])
    {
        static NSString *defaultPinID = @"defaultPin";
        mapPin = (MKPinAnnotationView *)[mapView dequeueReusableAnnotationViewWithIdentifier:defaultPinID];
        if (!mapPin)
        {
            mapPin = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:defaultPinID];
            
            mapPin.animatesDrop = YES;
            mapPin.canShowCallout = YES;
            NSLog(@"tem pin");
            
            UIImageView *profileIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"business2.png"]];
            mapPin.leftCalloutAccessoryView = profileIconView;
            [profileIconView release];
            
            /*
            UIButton* rightButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
            [rightButton setTitle:annotation.title forState:UIControlStateNormal];
            [rightButton addTarget:self action:@selector(details) forControlEvents:UIControlEventTouchUpInside];
            mapPin.rightCalloutAccessoryView = rightButton;
             */
            
        }else
        {
            mapPin.annotation = annotation;
        }
        
    }
    return mapPin;
}


@end
