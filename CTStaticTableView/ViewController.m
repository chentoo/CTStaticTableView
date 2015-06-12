//
//  ViewController.m
//  CTStaticTableView
//
//  Created by Zhidi Xia on 15/6/11.
//  Copyright (c) 2015年 chentoo. All rights reserved.
//

#import "ViewController.h"
#import "CTStaticTableView.h"
#import "DemoTableViewFristCell.h"
#import "DemoTableViewSecendCell.h"
#import "DemoTableViewThirdCell.h"

@interface ViewController () <CTStaticTableViewDelegate>

@property (strong, nonatomic) CTStaticTableView *tableViewFromCode;
@property (weak, nonatomic) IBOutlet CTStaticTableView *tableViewFromXib;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self configureTableViewFromCode];
    [self configureTableViewFromXib];
    
}

- (void)configureTableViewFromCode
{
    //init CTStaticTableView
    self.tableViewFromCode = [[CTStaticTableView alloc] initWithFrame:CGRectMake(self.view.bounds.size.width / 2, 80, self.view.bounds.size.width / 2, self.view.bounds.size.height - 60)];
    [self.view addSubview:self.tableViewFromCode];
    
    CTStaticTableViewCell *fristStaticCell = [CTStaticTableViewCell staticTableViewCellWithCell:[DemoTableViewFristCell fristCell] height:50];
    
    CTStaticTableViewCell *secendStaticCell = [CTStaticTableViewCell staticTableViewCellWithCell:[DemoTableViewSecendCell secendCell] height:80];
    
    CTStaticTableViewCell *thirdStaticCell = [CTStaticTableViewCell staticTableViewCellWithCell:[DemoTableViewThirdCell thirdCell] height:80];
    
    //you can use delegate
    [self.tableViewFromCode showStaticCells:@[fristStaticCell, secendStaticCell, thirdStaticCell] withDidSelectRowDelegate:self];
    
    //or block
    
//    [self.tableViewFromCode showStaticCells:@[fristStaticCell, thirdStaticCell] withDidSelectRowBlock:^(NSIndexPath *indexPath) {
//        NSLog(@"taptaptap");
//    }];
}

- (void)configureTableViewFromXib
{
    CTStaticTableViewCell *fristStaticCell = [CTStaticTableViewCell staticTableViewCellWithCell:[DemoTableViewFristCell fristCell] height:50];
    
    CTStaticTableViewCell *secendStaticCell = [CTStaticTableViewCell staticTableViewCellWithCell:[DemoTableViewSecendCell secendCell] height:80];
    
    CTStaticTableViewCell *thirdStaticCell = [CTStaticTableViewCell staticTableViewCellWithCell:[DemoTableViewThirdCell thirdCell] height:80];
    
    CTStaticTableViewCell *fourthStaticCell = [CTStaticTableViewCell staticTableViewCellWithCell:[DemoTableViewSecendCell secendCell] height:80];
    
    //you can use delegate
//    [self.tableViewFromXib showStaticCells:@[fristStaticCell, secendStaticCell, thirdStaticCell] withDidSelectRowDelegate:self];
    
    //or block
    
    [self.tableViewFromXib showStaticCells:@[fristStaticCell, secendStaticCell, thirdStaticCell, fourthStaticCell] withDidSelectRowBlock:^(NSIndexPath *indexPath) {
        NSLog(@"taptaptap");
    }];
}

#pragma mark - CTStaticTableView Delegate

- (void)staticTableView:(CTStaticTableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"taptaptap");
}

@end
