//
//  myMapAnnotation.h
//  week3MDF1
//
//  Created by Cameron Mozie on 4/19/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>//mapkit
@interface myMapAnnotation : NSObject <MKAnnotation>
{
    NSString *title;
    CLLocationCoordinate2D coordinate;
}
-(id)initWithTitle:(NSString*)text coord:(CLLocationCoordinate2D)coord;//method for passing name/coords
//properties
@property (strong) NSString *title;
@property (assign) CLLocationCoordinate2D coordinate;
@end
