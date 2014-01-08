//
//  Cell.m
//  Framework-Table
//
//  Created by Marco Velluto on 23/12/13.
//  Copyright (c) 2013 Algos. All rights reserved.
//

#import "Cell.h"

@implementation Cell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (id)cellWithRadioButtonAndText:(NSString *)text {
    return self;
}

@end
