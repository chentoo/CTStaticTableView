//
//  DemoTableViewThirdCell.m
//  CTStaticTableView
//
//  Created by Zhidi Xia on 15/6/11.
//  Copyright (c) 2015年 chentoo. All rights reserved.
//

#import "DemoTableViewThirdCell.h"

NSString * const DemoTableViewThirdCellIdentifier = @"DemoTableViewThirdCellIdentifier";

@implementation DemoTableViewThirdCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

+ (instancetype)thirdCell
{
    DemoTableViewThirdCell *thirdCell = [[[NSBundle mainBundle] loadNibNamed:@"DemoTableViewThirdCell" owner:self options:nil] lastObject];
    return thirdCell;
}

@end
