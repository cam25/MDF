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
    NSString *locationName;
    CLLocationCoordinate2D actualLocation;
}

-(id)initWithTitle:(NSString*)name loc:(CLLocationCoordinate2D)loc;

@property (strong,nonatomic) NSString *locationName;
@property (assign,nonatomic) CLLocationCoordinate2D actualLocation;
@end
