//
//  LCTableViewController.m
//  tableView demo
//
//  Created by Mac on 14-12-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "LCTableViewController.h"

#import "LCTableViewCell.h"

@implementation LCTableViewController

-(void)viewDidLoad
{

    self.tableView.separatorStyle  =  UITableViewCellSeparatorStyleNone;

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 100;

}

-(UITableViewCell  *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    LCTableViewCell  *cell  = [LCTableViewCell  cellWithTableView:tableView];
//    CGRect frame = CGRectMake(0, 0, 50, 10);
//    
//    cell.imageView1.frame  = frame;
//    cell.imageView1.center  = CGPointMake(160, 35);
//
//    [UIView  animateWithDuration:0.6 animations:^{
//        cell.imageView1.frame  =  CGRectMake(10, 5, 300, 60);
//        
//        
//    }];
    
    

    cell.imageView1.transform = CGAffineTransformMakeScale(0.2, 0.2);
    
    cell.imageView1.center  = CGPointMake(160, 35);
    
    [UIView  animateWithDuration:0.6 animations:^{
        
        cell.imageView1.transform = CGAffineTransformMakeScale(1.0, 1.0);
        
    }];
    

    

    
  //  NSLog(@"%@",cell.subviews);
       
    return  cell;




}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{

    return 70;
}


@end
