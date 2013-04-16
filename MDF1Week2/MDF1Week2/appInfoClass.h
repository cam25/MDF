//
//  appInfoClass.h
//  MDF1Week2
//
//  Created by Cameron Mozie on 4/16/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <Foundation/Foundation.h>
@class  appInfoClass;
@interface appInfoClass : NSObject
{
    NSString *Name;
    NSString *date;
    NSString *School;
    NSString *term;
    NSMutableArray *details;
}

@property (nonatomic,strong)NSString *Name;
@property (nonatomic,strong)NSString *date;
@property (nonatomic,strong)NSString *School;
@property (nonatomic,strong)NSString *term;
@property (nonatomic,strong)NSMutableArray *details;

-(id)init;
-(void)showInfo;
@end
