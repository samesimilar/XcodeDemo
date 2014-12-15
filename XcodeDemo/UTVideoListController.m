//
//  UTVideoListController.m
//  XcodeDemo
//
//  Created by Mike Spears on 2014-12-15.
//  Copyright (c) 2014 University of Toronto. All rights reserved.
//

// UTVideoListController mediates between the list of videos, and the table view that displays the list.

#import "UTVideoListController.h"
#import "AppDelegate.h"
#import "UTVideos.h"
#import "UTVideoDetailsViewController.h"

@interface UTVideoListController ()

@property (nonatomic) NSArray * videos;

@end

@implementation UTVideoListController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    AppDelegate * ad = [UIApplication sharedApplication].delegate;
    self.videos = ad.videos.videos;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return self.videos.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TitleCell" forIndexPath:indexPath];
    
    
    NSDictionary * video = self.videos[indexPath.row];
    cell.textLabel.text = video[@"title"];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}





#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    UTVideoDetailsViewController * vc = segue.destinationViewController;
    
    NSDictionary * video = self.videos[[self.tableView indexPathForSelectedRow].row];
    vc.video = video;
    
}


@end
