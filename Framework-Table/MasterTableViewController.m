//
//  MasterTableViewController.m
//  Framework-Table
//
//  Created by Marco Velluto on 20/12/13.
//  Copyright (c) 2013 Algos. All rights reserved.
//

#import "MasterTableViewController.h"
#import "Sections.h"
#import "Section.h"

@interface MasterTableViewController ()

@end

@implementation MasterTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    data = [[NSMutableArray alloc] init];
    sections = [[Sections alloc] init];
    [self createSections];


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

//////////////////////////////
/////// SEZIONI  /////////////
//////////////////////////////

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return sections.countOfSections;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return [sections titleInSectionsAtIndex:section];
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    Section *tempSection = (Section *)[sections objectInSectionsAtIndex:section];
    
    UIView *tempView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 200, 50)];
    tempView.backgroundColor = [tempSection color];
    
    //******** Image **********
    CGRect rectImage;
    CGRect rectLabel;
    if (tempSection.image) { //withImage
        rectImage = CGRectMake(20, 0, 38, 38);
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:rectImage];
        [imageView setImage:Nil];
        [imageView setBackgroundColor:[UIColor blackColor]];
        [tempView addSubview:imageView];

        
        rectLabel = CGRectMake(80, 0, 250, 38);
    }
    else {
        rectLabel = CGRectMake(30, 0, 300, 38);
    }
    
#warning Impostastare immagine
    
    //******** Label **********
    UILabel *label = [[UILabel alloc] initWithFrame:rectLabel];
    [label setText:tempSection.title];
    [tempView addSubview:label];
    
    
    
    return tempView;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 38.0f;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}


#pragma mark - Creazione Sezioni


- (void)createSections {
    [sections createSectionWithTitle:@"Interesse di valutazione per la persona anziana" withColor:[UIColor redColor] withImage:Nil];
    [sections createSectionWithTitle:@"section 2" withColor:[UIColor greenColor] withImage:Nil];
    [sections createSectionWithTitle:@"section 3" withColor:[UIColor blueColor] withImage:Nil];
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
