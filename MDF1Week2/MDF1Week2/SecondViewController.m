//
//  SecondViewController.m
//  MDF1Week2
//
//  Created by Cameron Mozie on 4/12/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "SecondViewController.h"
#import "FourthViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Second", @"Second");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    
    xmlInfo = [[NSArray alloc] initWithObjects:@"XML?", @"XML Indexing?",@"Special XML Characters", nil];
    xmlDetails = [[NSArray alloc]initWithObjects:@"XML stands for eXtended Markup Language. Its a documuent that is designed using a set of elements to show where a paragraph begins/ends and or where list items start and end. XML is basically the complete structure of an HTML document. It allows you to divide your page into sections for manipulation in other documents and display elements in an html doc a certain way.",@"XML Indexing is a form of embedded indexing in which tags are inserted into an XML document to mark the occurences of indexable terms or topics. The good thing about XML Indexing is that the publishing process automatically generates an index from the embeded index elements. The process handles the layout in ways such as font, size, style, indenting, and word by word or letter by letter alphabetization. Due to the process handling all the layout its one less concern for the developer.",@"XML Indexing special characters and symbols are used often times when publishing computer books. Certain symbols such as the Greek omega Ω symbol is represented as &omega and the & has special meanings in XML and is always represented by &amp.", nil];
    
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
    
    return [xmlInfo count];//returns number of hair types based on how many objects in array
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
    UITableViewCell *cell = [tableView1 dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        
        
        //stores data from the custom cell
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        //loops through the array of views for a customTableCell class
        cell.textLabel.text = [xmlInfo objectAtIndex:indexPath.row];
    }
    
    return cell;
    
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    FourthViewController *detailView = [[FourthViewController alloc] initWithNibName:@"FourthViewController" bundle:nil];
    [self presentViewController:detailView animated:YES completion:nil];
}
@end
