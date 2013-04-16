//
//  appInfoFactory.m
//  MDF1Week2
//
//  Created by Cameron Mozie on 4/16/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "appInfoFactory.h"
#import "appInfo.h"
#import "ThirdChildViewController.h"
@implementation appInfoFactory
@synthesize info,Name,date,School,developInfo;

static appInfoFactory *_sharedAppInfoFactory = nil;

+(appInfoFactory*)sharedAppInfoFactory
{
    if (!_sharedAppInfoFactory) {
        _sharedAppInfoFactory = [[self alloc] init];
        
    }
    return _sharedAppInfoFactory;
}
-(id)init
{
    if ((self = [super init])) {
       info = [[NSMutableArray alloc]initWithObjects:@"Cameron Mozie",@"Full Sail University",@"Date: 4/16/2013", nil];
        [self setName:@"Cameron Mozie"];
        [self setSchool:@"FullSailUniversity"];
        [self setDate:@"04/16/2013"];
    }
    return self;
}

-(void)showInfo
{
   
    
    for (NSString *object in info) {
        
        NSLog(@"%@",object);
    
    }
    
   

}
@end
