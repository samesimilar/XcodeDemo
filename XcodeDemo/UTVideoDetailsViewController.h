//
//  UTVideoDetailsViewController.h
//  XcodeDemo
//
//  Created by Mike Spears on 2014-12-15.
//  Copyright (c) 2014 University of Toronto. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UTVideoDetailsViewController : UIViewController

@property (nonatomic) NSDictionary * video;

@property (nonatomic) IBOutlet UILabel * titleLabel;
@property (nonatomic) IBOutlet UILabel * descriptionLabel;

@end
