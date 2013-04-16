//
//  appInfoFactory.h
//  MDF1Week2
//
//  Created by Cameron Mozie on 4/16/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ThirdChildViewController.h"
@interface appInfoFactory : NSObject 
{
    NSMutableArray *info;
    NSString *Name;
    NSString *School;
    NSString *date;
    NSString *developInfo;
    
}
+(appInfoFactory*)sharedAppInfoFactory;
-(void)showInfo;
@property (nonatomic,strong)NSMutableArray *info;
@property (nonatomic,strong)NSString *Name;
@property (nonatomic,strong)NSString *School;
@property (nonatomic,strong)NSString *date;
@property (nonatomic,strong)NSString *developInfo;

@end
