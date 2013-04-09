//
//  ViewController.m
//  Week1MDF
//
//  Created by Cameron Mozie on 4/8/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableCell.h"
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


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"Cell";
    CustomTableCell *cell = [tableView1 dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        
       // cell = [[CustomTableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
        
        NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"CustomCellView" owner:nil options:nil];
        for (UIView *view in views) {
            
            if ([view isKindOfClass:[CustomTableCell class]]) {
                
                cell = (CustomTableCell*)view;
            }
        }
    }
   
   
    

    return cell;
    
   // NSInteger actualRow = 0;
    //actualRow = (indexPath.section * 10) + indexPath.row;
    
    
    
   // cell.textLabel.text = (NSString*)[hairTypes objectAtIndex:actualRow];
}
@end
