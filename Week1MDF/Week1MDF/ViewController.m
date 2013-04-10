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
    
    done.hidden = TRUE;
    
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
/*
    if (section == 0) {
        return 10;
    }
    else if (section == 1)
{
    return 10;
}
return 0;
}
*/
    return [hairTypes count];
}
    
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
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
                cell.hairLabel.text = (NSString*)[hairTypes objectAtIndex:indexPath.row];
                cell.ratingLabel.text = [[NSString alloc] initWithFormat:@"Rating %@/10", [rating objectAtIndex:indexPath.row]];
            }
        }
    }
   
  /*
    NSInteger actualRow = 0;
    actualRow = (indexPath.section * 10) + indexPath.row;
    
    if (indexPath.section == 0) {
        cell.hairLabel.text = (NSString*)[hairTypes objectAtIndex:actualRow];
        cell.ratingLabel.text = [[NSString alloc] initWithFormat:@"Rating %@/10", [rating objectAtIndex:actualRow]];
    }
    else if (indexPath.section == 1)
    {
        cell.hairLabel.text = (NSString*)[hairTypes objectAtIndex:actualRow];
        cell.ratingLabel.text = [[NSString alloc] initWithFormat:@"Rating %@/10", [rating objectAtIndex:actualRow]];
    }
*/
    return cell;
    

}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
   
    NSLog(@"row=%d name=%@",indexPath.row, [hairTypes objectAtIndex:indexPath.row]);
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        NSLog(@"we want to delete row=%d",indexPath.row);
        //removes object from array
        [hairTypes removeObjectAtIndex:indexPath.row];
        [rating removeObjectAtIndex:indexPath.row];
        [tableView1 deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:true];
    }
}
-(IBAction)editClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    
    if (button.tag == 0) {
        done.hidden = false;
        
        [tableView1 setEditing:true];
    }
    else if (button.tag ==1)
    {
        [tableView1 setEditing:false];
        done.hidden = true;
        
    }
}

/*
- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}
 */
@end
