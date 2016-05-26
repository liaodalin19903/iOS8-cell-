//
//  ViewController.m
//  Test11
//
//  Created by 优谱德 on 16/5/26.
//  Copyright © 2016年 优谱德. All rights reserved.
//

#import "ViewController.h"
#import "CusTableViewCell.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initUI];
}

#pragma mark - init

- (void)initUI {

    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 150;
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

#pragma mark - tableView delegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cell_id = @"cell_id";
    
    CusTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cell_id];
    if (cell == nil) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"CusTableViewCell" owner:self options:nil].firstObject;
    }
    
    /* 配置cell */
    if (indexPath.row == 3) {
        
        cell.contentLabel.text = @"上传图片：不管是处方，经验交流，信息采集，或者买卖都用这个接口上传上传图片：不管是处方，经验交流，信息采集，或者买卖都用这个接口上传上传图片：不管是处方，经验交流，信息采集，或者买卖都用这个接口上传上传图片：不管是处方，经验交流，信息采集，或者买卖都用这个接口上传上传图片：不管是处方，经验交流，信息采集，或者买卖都用这个接口上传上传图片：不管是处方，经验交流，信息采集，或者买卖都用这个接口上传";
        cell.content2.text =  @"上传图片：不管是处方，经验交流，信息采集，或者买卖都用这个接口上传上传图片：不管是处方，经验交流，信息采集，或者买卖都用这个接口上传上传图片：不管是处方，经验交流，信息采集，或者买卖都用这个接口上传上传图片：不管是处方，经验交流，信息采集，或者买卖都用这个接口上传上传图片：不管是处方，经验交流，信息采集，或者买卖都用这个接口上传上传图片：不管是处方，经验交流，信息采集，或者买卖都用这个接口上传上传图片：不管是处方，经验交流，信息采集，或者买卖都用这个接口上传上传图片：不管是处方，经验交流，信息采集，或者买卖都用这个接口上传上传图片：不管是处方，经验交流，信息采集，或者买卖都用这个接口上传上传图片：不管是处方，经验交流，信息采集，或者买卖都用这个接口上传上传图片：不管是处方，经验交流，信息采集，或者买卖都用这个接口上传上传图片：不管是处方，经验交流，信息采集，或者买卖都用这个接口上传上传图片：不管是处方，经验交流，信息采集，或者买卖都用这个接口上传上传图片：不管是处方，经验交流，信息采集，或者买卖都用这个接口上传上传图片：不管是处方，经验交流，信息采集，或者买卖都用这个接口上传上传图片：不管是处方，经验交流，信息采集，或者买卖都用这个接口上传上传图片：不管是处方，经验交流，信息采集，或者买卖都用这个接口上传上传图片：不管是处方，经验交流，信息采集，或者买卖都用这个接口上传";
        
        [cell.bottomView setFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 20)];
        
        NSArray *cons = cell.bottomView.constraints;
        for (NSLayoutConstraint *con in cons) {
            
            if (con.firstAttribute == NSLayoutAttributeHeight) {
                con.constant = 2;
            }
        }
        
        cell.bottomView.backgroundColor = [UIColor redColor];
        
        
    }
    
    return cell;
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    
}

- (void)viewDidLayoutSubviews {

    [self loadViewIfNeeded];
}

@end
