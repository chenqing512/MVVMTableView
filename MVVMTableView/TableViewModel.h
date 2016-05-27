//
//  TableViewModel.h
//  MVVMTableView
//
//  Created by ChenQing on 16/5/27.
//  Copyright © 2016年 ChenQing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void (^TableViewModelBlock)(id cell,id item);

@interface TableViewModel : NSObject<UITableViewDataSource>

@property (nonatomic, copy) NSString *cellIdentifier;//cell标识

@property (nonatomic, strong) NSArray *items;//数据源

@property (nonatomic, strong) TableViewModelBlock tabelViewModelBlock;

-(id)initWithTableViewCellIdentifier:(NSString *)cellIdentifier;

@end
