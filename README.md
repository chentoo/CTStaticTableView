# CTStaticTableView

这是一个用代码封装静态TableView的方式。

你可以用xib初始化CTStaticTableView，也可以用代码：
``` Objective-C
    self.tableView = [[CTStaticTableView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    [self.view addSubview:self.tableView];
```

然后可以合成你的static table view cell
需要两个参数：一个是TableViewCell对象，一个是他的高度。
``` Objective-C
    CTStaticTableViewCell *fristStaticCell = [CTStaticTableViewCell staticTableViewCellWithCell:[DemoTableViewFristCell fristCell] height:50];
    CTStaticTableViewCell *secendStaticCell = [CTStaticTableViewCell staticTableViewCellWithCell:[DemoTableViewSecendCell secendCell] height:80];
```

拼起来吧
``` Objective-C
    [self.tableView showStaticCells:@[fristStaticCell, secendStaticCell]];
    //或者
    [self.tableView showStaticCells:@[fristStaticCell, secendStaticCell] withDidSelectRowDelegate:self];
    //或者
    [self.tableView showStaticCells:@[fristStaticCell, secendStaticCell] withDidSelectRowBlock:^(NSIndexPath *indexPath) {
        NSLog(@"taptaptap");
    }];
```

没了，请看demo代码。

