//
//  CTStaticTableView.h
//  CTStaticTableView
//
//  Created by Zhidi Xia on 15/6/11.
//  Copyright (c) 2015年 chentoo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CTStaticTableViewCell.h"
@class CTStaticTableView;

//protocol
@protocol CTStaticTableViewDelegate <NSObject>

- (void)staticTableView:(CTStaticTableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;

@end

//block

typedef void(^CTStaticTableViewDidSelectRowBlock)(NSIndexPath *indexPath);

@interface CTStaticTableView : UITableView

@property (weak, nonatomic) id <CTStaticTableViewDelegate> staticDelegate;
@property (strong, nonatomic) CTStaticTableViewDidSelectRowBlock didSelectRowBlock;

- (void)showStaticCells:(NSArray *)staticCells;
- (void)showStaticCells:(NSArray *)staticCells withDidSelectRowBlock:(CTStaticTableViewDidSelectRowBlock)didSelectRowBlock;
- (void)showStaticCells:(NSArray *)staticCells withDidSelectRowDelegate:(id <CTStaticTableViewDelegate>)staticDelegate;

@end
