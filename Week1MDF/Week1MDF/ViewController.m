//
//  ViewController.m
//  Week1MDF
//
//  Created by Cameron Mozie on 4/8/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableCell.h" 
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //array for hair types
    hairTypes = [[NSMutableArray alloc] initWithObjects:@"Maylasian Hair",@"Brazilian Hair",@"African Hair",@"Indian Hair",@"Peruvian Hair", @"Cambodian Hair",@"Russian Hair",@"Chinese Hair",@"European Hair",@"Filipino Hair",@"Regular Wigs",@"LaceFront Wigs",@"Glueless Wigs",@"Full Lace Wigs", @"Kids Lace Wigs",@"Human Hair Wigs",@"Hand Tied Wigs",@"Synthetic Wigs",@"Dermafix Wigs",@"Entertainer Wigs", nil];
    
    //array for rating numbers
    rating = [[NSMutableArray alloc] initWithObjects:@"8",@"10",@"1",@"9",@"7",@"3",@"5",@"3",@"10",@"3",@"10",@"10",@"7",@"5",@"10",@"5",@"10",@"5",@"10",@"10", nil];
    
    //array for info
    hairInfo = [[NSMutableArray alloc]initWithObjects:@"Pros: Well behaved,Manageable, easy for styling, and thick hair. Con: Various styles tend to not hold for long periods of time.",@"Pros: Thick, Wavy, very heat resilient for styling. Cons: If weaps not sealed hair will shed.", @"Pros:Corse and thick, Heat Resiliant, Can handle chemicals well. Cons: Some people dont like thick/corse hair.", @"Pros: Holds texture very well and also can be dyed in any color. Very popular. Cons:Quality varies due to processing of hair. Looses texture.", @"Pros:Good Smooth Hair, holds styles very well. Cons: Expensive.", @"Pros: Durable hair, maintains texture in heated temperatures, Okay to style. Cons:Slightly course. Rare to Obtain.", @"Pros:Thin, straight, good texture. Cons:Shedding.", @"Pros:Best natural texture. Cons:Expensive",@"Pros:Thin, Straight, similar to russian hair. Cons:Shedding", @"Pros:Thin, easy to maintain and comes in very long lengths. Cons:Doesnt hold styles with just heat. Must add various gel's for hold.",@"Regular wigs are made from human or horsehair, and other various textures and very common.",@"Lace Wigs are wigs that have a mesh cap that attaches to the hairline of the individual and often temporarily glued.",@"Glueless wigs are much like the lace front wigs but missing the glue. These are slightly more popular in african american communities.",@"Full lace wigs have a cap and a thin lace sewn inside of the cap. Hair is then sewn inside the thin lace. Full lace is very common and can tolerate hair styles.",@"Much the same as the regular lace wig just coming in smaller sizes for children and often used for kids that are in hair shows.", @"Human Hair wigs are very popular style of wig and is mainly used amoung all races, male and female.", @"Hand tied wigs are top of the line and the most natural looking of all the wigs. The cap inside the wigs have no wefts and the wig sits a top the cap.", @"Synthetic wigs are synthetic for the texture of the hair and is often made of horse hair or other types other than human hair.", @"Dermafix wigs are any wig with a special material call dermafix added inside the wig cap. Very lightweight and comforting.", @"Entertainer wigs are wigs that have been donated to various hair sellers and resold by which entertainer was wearing them.", nil];
    
    NSLog(@"%@",hairTypes);
    
    done.hidden = TRUE;//hides done button
    
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

    return [hairTypes count];//returns number of hair types based on how many objects in array
}
    
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;//1 section in tabel view
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //setter for cell identifier string
    static NSString *CellIdentifier = @"Cell";
    
    //creates a custom tabel cell object
    CustomTableCell *cell = [tableView1 dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        
        
        //stores data from the custom cell
        NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"CustomCellView" owner:nil options:nil];
        
        //loops through the array of views for a customTableCell class
        for (UIView *view in views) {
            
            if ([view isKindOfClass:[CustomTableCell class]]) {//if the view is customTableCell class
                
                cell = (CustomTableCell*)view;//sets object in custom cell to view
                cell.hairLabel.text = (NSString*)[hairTypes objectAtIndex:indexPath.row];//sets the hair type to the hairLabel on my custom cell
                cell.ratingLabel.text = [[NSString alloc] initWithFormat:@"Rating %@/10", [rating objectAtIndex:indexPath.row]];//sets the rating text to the rating label on my custom cell
            }
        }
    }
   
    return cell;
    

}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    //sets secondviewcontroller to variable detailsView
    SecondViewController *detailsView = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    
    
    
   //calls second view/details view
    [self presentViewController:detailsView animated:YES completion:nil];
    
    
    //sets the hair info text  to the textfield on second view based on the index of the selected cell.
    detailsView.detailText.text = (NSString*)[hairInfo objectAtIndex:indexPath.row];
    
    //sets the label text  to the textfield on second view based on the index of the selected cell.
    detailsView.detailLabel.text = (NSString*)[hairTypes objectAtIndex:indexPath.row];
    
    NSLog(@"row=%d name=%@",indexPath.row, [hairInfo objectAtIndex:indexPath.row]);
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        NSLog(@"we want to delete row=%d",indexPath.row);
        
        //removes hairType,Rating,hairInfo objects from array at specific index path
        [hairTypes removeObjectAtIndex:indexPath.row];
        [rating removeObjectAtIndex:indexPath.row];
        [hairInfo removeObjectAtIndex:indexPath.row];
        
        //deletes the rows
        [tableView1 deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:true];
    }
}

//edit function
-(IBAction)editClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    
    if (button.tag == 0) {//if edit button is clicked unhide done button
        done.hidden = false;
        
        [tableView1 setEditing:true];//allow for edit
    }
    else if (button.tag ==1)//if done is selected hide done 
    {
        [tableView1 setEditing:false];//do not allow for edit
        done.hidden = true;
        
    }
}

@end
