//
//  CTStaticTableViewCell.m
//  CTStaticTableView
//
//  Created by Zhidi Xia on 15/6/11.
//  Copyright (c) 2015年 chentoo. All rights reserved.
//

#import "CTStaticTableViewCell.h"

@implementation CTStaticTableViewCell

+ (instancetype)staticTableViewCellWithCell:(UITableViewCell *)cell height:(CGFloat)height
{
    CTStaticTableViewCell *staticCell = [[CTStaticTableViewCell alloc] init];
    staticCell.cell = cell;
    staticCell.height = height;
    
    return staticCell;
}

@end
