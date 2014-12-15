//
//  UTVideos.m
//  XcodeDemo
//
//  Created by Mike Spears on 2014-12-15.
//  Copyright (c) 2014 University of Toronto. All rights reserved.
//

// UTVideos loads the list of videos from a Plist file and makes the data available to the rest of the app.

#import "UTVideos.h"

@implementation UTVideos

- (id) init {
    self = [super init];
    if (self) {
        NSDictionary * fileData = [NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Videos" withExtension:@"plist"]];
        if (fileData) {
            NSArray * v = fileData[@"videos"];
            if (v) {
                self.videos = v;
            }
        }
        if (!self.videos) {
            self.videos = [NSArray new];
        }
    }
    return self;
}
@end
