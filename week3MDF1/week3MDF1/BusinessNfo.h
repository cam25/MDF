//
//  BusinessNfo.h
//  week3MDF1
//
//  Created by Cameron Mozie on 4/19/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
@interface BusinessNfo : NSObject
{
    NSString *locationName;//holds my location name 
    CLLocationCoordinate2D actualLocation;//holds long/lat
}

-(id)initWithTitle:(NSString*)name loc:(CLLocationCoordinate2D)loc;//method for passing my business name / location to

//properties
@property (strong,nonatomic) NSString *locationName;
@property (assign,nonatomic) CLLocationCoordinate2D actualLocation;
@end
