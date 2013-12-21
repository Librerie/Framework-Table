//
//  Sections.h
//  Framework-Table
//
//  Created by Marco Velluto on 20/12/13.
//  Copyright (c) 2013 Algos. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Sections : NSObject

@property (nonatomic, strong)NSMutableArray *sections;


- (id)createSectionWithTitle:(NSString *)title
                     withColor:(UIColor *)color
                     withImage:(UIImage *)image;

- (int)countOfSections;
- (NSString *)objectInSectionsAtIndex:(NSUInteger)index;
- (NSString *)titleInSectionsAtIndex:(NSUInteger)index;
@end
