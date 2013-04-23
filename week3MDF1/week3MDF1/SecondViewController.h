//
//  SecondViewController.h
//  week3MDF1
//
//  Created by Cameron Mozie on 4/18/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "myMapAnnotation.h"
@interface SecondViewController : UIViewController

{
    IBOutlet MKMapView *secondMap;//map
    
    
    NSString *locations;

    BOOL dirtyBits;
    
}
//properties
@property (nonatomic,strong) IBOutlet MKMapView *secondMap;
@property (nonatomic, assign)NSString *locations;


@end
