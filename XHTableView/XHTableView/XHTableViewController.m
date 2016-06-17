//
//  XHTableViewController.m
//  XHTableView
//
//  Created by XuHuan on 16/6/17.
//  Copyright © 2016年 XuHuan. All rights reserved.
//

#import "XHTableViewController.h"
#import "FirstTableViewCell.h"
#import "SecendTableViewCell.h"

@interface XHTableViewController ()<FirstTableViewCellDelegate>

@property (strong, nonatomic) NSMutableArray *demoArr;//**<  */

@end

@implementation XHTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerNib:[UINib nibWithNibName:@"FirstTableViewCell" bundle: nil] forCellReuseIdentifier:@"1"];
    [self.tableView registerNib:[UINib nibWithNibName:@"SecendTableViewCell" bundle: nil] forCellReuseIdentifier:@"2"];
    self.demoArr = [NSMutableArray arrayWithArray:@[@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1]];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.demoArr.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if ([self.demoArr[section] integerValue] == 1) {
        return 1;
    }
    
    return 2;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row ==0) {
        return 60;
    }
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == 0) {
        FirstTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"1" forIndexPath:indexPath];
        cell.delegate = self;
        cell.indexPath = indexPath;
        // Configure the cell...
        
        return cell;
    } else {
        SecendTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"2" forIndexPath:indexPath];
        return cell;
    }
    
}

- (void)cellClicked:(NSIndexPath *)indexPath {
    
    NSIndexPath *newIndecPath = [NSIndexPath indexPathForRow:indexPath.row + 1 inSection:indexPath.section];
    if ([self.demoArr[indexPath.section] integerValue] == 1) {
        [self.demoArr replaceObjectAtIndex:indexPath.section withObject:@"2"];
        [self.tableView insertRowsAtIndexPaths:@[newIndecPath] withRowAnimation:UITableViewRowAnimationBottom];
    } else{
        [self.demoArr replaceObjectAtIndex:indexPath.section withObject:@"1"];
        [self.tableView deleteRowsAtIndexPaths:@[newIndecPath] withRowAnimation:UITableViewRowAnimationBottom];
    }
//    [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:indexPath.section] withRowAnimation:UITableViewRowAnimationBottom];
    
    
    
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
