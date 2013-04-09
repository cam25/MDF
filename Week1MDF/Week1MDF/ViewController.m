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
    
    hairTypes = [[NSMutableArray alloc] initWithObjects:@"Maylasian Hair",@"Brazilian Hair",@"African Hair",@"Indian Hair",@"Peruvian Hair", @"Cambodian Hair",@"Russian Hair",@"Chinese Hair",@"European Hair",@"Filipino Hair",@"Regular Wigs",@"LaceFront Wigs",@"Glueless Wigs",@"Full Lace Wigs", @"Kids Lace Wigs",@"Human Hair Wigs",@"Hand Tied Wigs",@"Synthetic Wigs",@"Actress Wigs",@"Entertainer Wigs", nil];
    
    rating = [[NSMutableArray alloc] initWithObjects:@"8",@"10",@"1",@"9",@"7",@"3",@"5",@"3",@"10",@"3",@"10",@"10",@"7",@"5",@"10",@"5",@"10",@"5",@"10",@"10", nil];
    
    NSLog(@"%@",hairTypes);
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView1 numberOfRowsInSection:(NSInteger)section
{
    
    if (section == 0) {
        return 10;
    }
    else if (section == 1)
{
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
                cell.textLabel.text = (NSString*)[hairTypes objectAtIndex:indexPath.row];
                cell.ratingLabel.text = [[NSString alloc] initWithFormat:@"R-%@/10", [rating objectAtIndex:indexPath.row]];
            }
        }
    }
   
    
    NSInteger actualRow = 0;
    actualRow = (indexPath.section * 10) + indexPath.row;
    
    if (indexPath.section == 0) {
        cell.textLabel.text = (NSString*)[hairTypes objectAtIndex:actualRow];
        cell.ratingLabel.text = [[NSString alloc] initWithFormat:@"R-%@/10", [rating objectAtIndex:actualRow]];
    }
    else if (indexPath.section == 1)
    {
        cell.textLabel.text = (NSString*)[hairTypes objectAtIndex:actualRow];
        cell.ratingLabel.text = [[NSString alloc] initWithFormat:@"R-%@/10", [rating objectAtIndex:actualRow]];
    }

    return cell;
    

}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"name=%@", [hairTypes objectAtIndex:indexPath.row]);
}
@end
