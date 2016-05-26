//
//  CusTableViewCell.h
//  Test11
//
//  Created by 优谱德 on 16/5/26.
//  Copyright © 2016年 优谱德. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CusTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;
@property (weak, nonatomic) IBOutlet UILabel *content2;
@property (weak, nonatomic) IBOutlet UIView *bottomView;

@end
