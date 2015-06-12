//
//  DemoTableViewFristCell.m
//  CTStaticTableView
//
//  Created by Zhidi Xia on 15/6/11.
//  Copyright (c) 2015年 chentoo. All rights reserved.
//

#import "DemoTableViewFristCell.h"

NSString * const DemoTableViewFristCellIdentifier = @"DemoTableViewFristCellIdentifier";

@implementation DemoTableViewFristCell

- (void)awakeFromNib {
    // Initialization code
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

+ (instancetype)fristCell
{
    DemoTableViewFristCell *firstCell = [[[NSBundle mainBundle] loadNibNamed:@"DemoTableViewFristCell" owner:self options:nil] lastObject];
    return firstCell;
}
@end
