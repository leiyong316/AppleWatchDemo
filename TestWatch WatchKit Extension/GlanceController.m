//
//  GlanceController.m
//  TestWatch WatchKit Extension
//
//  Created by 雷勇 on 14-11-20.
//  Copyright (c) 2014年 __FULLNAME__. All rights reserved.
//

#import "GlanceController.h"


@interface GlanceController()

@end


@implementation GlanceController


- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    // Initialize variables here.
    // Configure interface objects here.
    NSLog(@"%@ initWithContext", self);
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    NSLog(@"%@ will activate", self);
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@ did deactivate", self);
}

@end



