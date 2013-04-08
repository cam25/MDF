//
//  ViewController.m
//  Week1MDF
//
//  Created by Cameron Mozie on 4/8/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    hairTypes = [[NSArray alloc] initWithObjects:@"Maylasian Hair",@"Brazilian Hair",@"African Hair",@"Indian Hair",@"Peruvian", @"Cambodian Hair",@"Russian Hair",@"Chinese Hair",@"European Hair",@"Filipino Hair",@"Regular Wigs",@"LaceFront Wigs",@"Glueless Wigs",@"Full Lace Wigs", @"Kids Lace Wigs",@"Human Hair Wigs", @"Hand Tied Wigs",@"Synthetic Wigs", @"Actress Wigs", @"Entertainer Wigs", nil];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(section == 0){
        
        return  10;
        
    }
    else if (section == 1){
        return 10;
    }
    return 0;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}


- (UITableViewCell *)tableView:(UITableView *)tableView2 cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    
    NSInteger actualRow = 0;
    actualRow = (indexPath.section * 10) + indexPath.row;
  
        
        
         cell.textLabel.text = (NSString*)[hairTypes objectAtIndex:actualRow];
   
   
    

    return cell;
    
}
@end
