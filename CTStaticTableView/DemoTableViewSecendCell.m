//
//  DemoTableViewSecendCell.m
//  CTStaticTableView
//
//  Created by Zhidi Xia on 15/6/11.
//  Copyright (c) 2015年 chentoo. All rights reserved.
//

#import "DemoTableViewSecendCell.h"

NSString * const DemoTableViewSecendCellIdentifier = @"DemoTableViewSecendCellIdentifier";

@implementation DemoTableViewSecendCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

+ (instancetype)secendCell
{
    DemoTableViewSecendCell *secendCell = [[[NSBundle mainBundle] loadNibNamed:@"DemoTableViewSecendCell" owner:self options:nil] lastObject];
    return secendCell;
}

@end
