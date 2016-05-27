//
//  ViewController.m
//  MVVMTableView
//
//  Created by ChenQing on 16/5/27.
//  Copyright © 2016年 ChenQing. All rights reserved.
//

#import "ViewController.h"
#import "TableViewModel.h"
@interface ViewController (){
    UITableView *mTalbeView;
    TableViewModel *tableViewModel;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"UITableView";
    mTalbeView=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, 375, 568) style:UITableViewStylePlain];
    mTalbeView.rowHeight=40;
    [self.view addSubview:mTalbeView];
    tableViewModel=[[TableViewModel alloc]initWithTableViewCellIdentifier:@"CellId"];
    mTalbeView.dataSource=tableViewModel;
    mTalbeView.separatorStyle=UITableViewCellSeparatorStyleNone;
    [mTalbeView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"CellId"];
    tableViewModel.items=@[@"测试1",@"测试2",@"测试3",@"测试4"];
    tableViewModel.tabelViewModelBlock=^(UITableViewCell *cell,NSString *str){
        cell.textLabel.text=str;
    };
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
