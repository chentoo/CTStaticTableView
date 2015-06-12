//
//  CTStaticTableView.m
//  CTStaticTableView
//
//  Created by Zhidi Xia on 15/6/11.
//  Copyright (c) 2015年 chentoo. All rights reserved.
//

#import "CTStaticTableView.h"

@interface CTStaticTableView () <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSArray *staticCells;


@end

@implementation CTStaticTableView

#pragma mark - Init

- (instancetype)init
{
    self = [super init];
    if (self) {
        _staticCells = @[];
        [self configureStaticTableView];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _staticCells = @[];
        [self configureStaticTableView];
    }
    return self;
}

- (void)awakeFromNib
{
    _staticCells = @[];
    [self configureStaticTableView];
}

#pragma mark - Configure

- (void)configureStaticTableView
{
    self.delegate = self;
    self.dataSource = self;
    self.tableFooterView = [[UIView alloc] init];
}

#pragma mark - Setter

- (void)setStaticCells:(NSArray *)staticCells
{
    _staticCells = staticCells;
    [self reloadData];
}

#pragma mark - Update

- (void)showStaticCells:(NSArray *)staticCells
{
    [self setStaticCells:staticCells];
}

- (void)showStaticCells:(NSArray *)staticCells withDidSelectRowBlock:(CTStaticTableViewDidSelectRowBlock)didSelectRowBlock
{
    [self showStaticCells:staticCells];
    if (didSelectRowBlock != NULL) {
        self.didSelectRowBlock = didSelectRowBlock;
    }
}

- (void)showStaticCells:(NSArray *)staticCells withDidSelectRowDelegate:(id<CTStaticTableViewDelegate>)staticDelegate
{
    [self showStaticCells:staticCells];
    self.staticDelegate = staticDelegate;
}

#pragma mark - UITableView DataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.staticCells.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CTStaticTableViewCell *staticCell = self.staticCells[indexPath.row];
    
    return staticCell.cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CTStaticTableViewCell *staticCell = self.staticCells[indexPath.row];
    
    return staticCell.height;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([self.staticDelegate respondsToSelector:@selector(staticTableView:didSelectRowAtIndexPath:)])
    {
        [self.staticDelegate staticTableView:self didSelectRowAtIndexPath:indexPath];
    }
    
    if (self.didSelectRowBlock) {
        self.didSelectRowBlock(indexPath);
    }
}

@end
