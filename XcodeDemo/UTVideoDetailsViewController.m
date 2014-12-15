//
//  UTVideoDetailsViewController.m
//  XcodeDemo
//
//  Created by Mike Spears on 2014-12-15.
//  Copyright (c) 2014 University of Toronto. All rights reserved.
//

// UTVideoDetailsViewController configures the video details screen, and launches the video player when the button is pressed.

#import "UTVideoDetailsViewController.h"
#import <AVKit/AVKit.h>
#import <AVFoundation/AVFoundation.h>

@interface UTVideoDetailsViewController ()

@end

@implementation UTVideoDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewWillAppear:(BOOL)animated
{
    self.titleLabel.text = self.video[@"title"];
    self.descriptionLabel.text = self.video[@"description"];
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    AVPlayerViewController * avc = (AVPlayerViewController *) segue.destinationViewController;
    AVPlayer *player = [[AVPlayer alloc] initWithURL:[[NSBundle mainBundle] URLForResource:self.video[@"filename"] withExtension:nil]];
    avc.player = player;
    
    
}


@end
