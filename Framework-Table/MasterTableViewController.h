//
//  MasterTableViewController.h
//  Framework-Table
//
//  Created by Marco Velluto on 20/12/13.
//  Copyright (c) 2013 Algos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Sections.h"

@interface MasterTableViewController : UITableViewController {
    
    //Array di dictionary
    NSMutableArray *data;
    Sections *sections;
}

@end
