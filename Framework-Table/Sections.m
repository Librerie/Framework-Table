//
//  Sections.m
//  Framework-Table
//
//  Created by Marco Velluto on 20/12/13.
//  Copyright (c) 2013 Algos. All rights reserved.
//

#import "Sections.h"
#import "Section.h"

@implementation Sections

@synthesize sections;

- (id)init {
    sections = [[NSMutableArray alloc] init];
    return self;
}

- (id)createSectionWithTitle:(NSString *)title
                     withColor:(UIColor *)color
                     withImage:(UIImage *)image {
    
    Section *section = [[Section alloc] init];
    [section setTitle:title];
    [section setColor:color];
    [section setImage:image];
    
    [sections addObject:section];
    return self;
}

- (int)countOfSections {
    return sections.count;
}

- (NSString *)objectInSectionsAtIndex:(NSUInteger)index {
    return [sections objectAtIndex:index];
}
- (NSString *)titleInSectionsAtIndex:(NSUInteger)index {
    return [[sections objectAtIndex:index] title];
}
@end
