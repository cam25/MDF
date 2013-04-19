//
//  FirstViewController.m
//  week3MDF1
//
//  Created by Cameron Mozie on 4/18/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
        
         buisnesses = [[NSMutableArray alloc] initWithObjects:@"Maquitas Hair Salon",@"Lenny's Carryout",@"Shoe Club NY",@"Phillies Cheesesteaks",@"Chicago Hot Doug's",@"Carolina's Diner",@"Cameron's Anime",@"Kennys Barbershop",@"Sports Galore",@"Play Time", nil];
        
        locations = [[NSMutableArray alloc]initWithObjects:@"Baltimore,MD",@"Glenarden, MD",@"Brooklyn, NY",@"Philadelphia, PA",@"Chicago, IL",@"Anderson, SC",@"Alexandria, VA",@"San Francisco, CA",@"Boston, MA",@"Atlanta, GA", nil];
    
        
    }
    return self;
}
							
- (void)viewDidLoad
{
    
   
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
    return [buisnesses count];
   
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
       
       
    }
     cell.textLabel.text = [buisnesses objectAtIndex:indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"row = %d name = %@", indexPath.row, [buisnesses objectAtIndex:indexPath.row]);
    
    
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;//1 section in tabel view
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        NSLog(@"row=%d", indexPath.row);
        [buisnesses removeObjectAtIndex:indexPath.row];
        [buisnessTableView deleteRowsAtIndexPaths:[NSMutableArray arrayWithObject:indexPath] withRowAnimation:true];
    }
}
-(IBAction)editClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    
    if(button.tag == 0)
{
    [buisnessTableView setEditing:true];
}else if (button.tag == 1)
{
    [buisnessTableView setEditing:false];
}
    
    
}

@end
