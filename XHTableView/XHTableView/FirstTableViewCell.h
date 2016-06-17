//
//  FirstTableViewCell.h
//  XHTableView
//
//  Created by XuHuan on 16/6/17.
//  Copyright © 2016年 XuHuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol FirstTableViewCellDelegate <NSObject>

- (void)cellClicked:(NSIndexPath *)indexPath;

@end


@interface FirstTableViewCell : UITableViewCell

@property (strong, nonatomic) NSIndexPath *indexPath;/**< <#name#> */
@property (weak, nonatomic) id<FirstTableViewCellDelegate> delegate;

@end
