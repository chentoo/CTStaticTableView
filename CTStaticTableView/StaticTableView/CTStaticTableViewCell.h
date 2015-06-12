//
//  CTStaticTableViewCell.h
//  CTStaticTableView
//
//  Created by Zhidi Xia on 15/6/11.
//  Copyright (c) 2015年 chentoo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CTStaticTableViewCell : NSObject

@property (assign, nonatomic) CGFloat  height;
@property (strong, nonatomic) UITableViewCell *cell;

+ (instancetype)staticTableViewCellWithCell:(UITableViewCell *)cell
                                     height:(CGFloat)height;

@end
