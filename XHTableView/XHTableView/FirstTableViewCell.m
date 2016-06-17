//
//  FirstTableViewCell.m
//  XHTableView
//
//  Created by XuHuan on 16/6/17.
//  Copyright © 2016年 XuHuan. All rights reserved.
//

#import "FirstTableViewCell.h"

@implementation FirstTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (IBAction)clicked:(id)sender {
    if ([self.delegate respondsToSelector:@selector(cellClicked:)]) {
        [self.delegate cellClicked:self.indexPath];
    }
}

@end
