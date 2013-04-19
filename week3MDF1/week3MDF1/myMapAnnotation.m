//
//  myMapAnnotation.m
//  week3MDF1
//
//  Created by Cameron Mozie on 4/19/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "myMapAnnotation.h"

@implementation myMapAnnotation
@synthesize title,coordinate;

-(id)initWithTitle:(NSString*)text coord:(CLLocationCoordinate2D)coord
{
    if ((self = [super init])) {
        title = text;
        coordinate = coord;
    }
    return self;
}
@end
