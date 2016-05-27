//
//  TableViewModel.m
//  MVVMTableView
//
//  Created by ChenQing on 16/5/27.
//  Copyright © 2016年 ChenQing. All rights reserved.
//

#import "TableViewModel.h"

@implementation TableViewModel

-(id)initWithTableViewCellIdentifier:(NSString *)cellIdentifier{
    if(self=[super init]){
        self.cellIdentifier=cellIdentifier;
        self.items=[[NSMutableArray alloc]initWithCapacity:0];
    }
    return self;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.items.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:self.cellIdentifier forIndexPath:indexPath];
    cell.selectionStyle=UITableViewCellSelectionStyleNone;
    self.tabelViewModelBlock(cell,self.items[indexPath.row]);
    return cell;
}
@end
