//
//  InterfaceController.m
//  TestWatch WatchKit Extension
//
//  Created by 雷勇 on 14-11-20.
//  Copyright (c) 2014年 __FULLNAME__. All rights reserved.
//

#import "InterfaceController.h"
#import "DetailInterfaceController.h"
#import "InterfaceRow.h"

@interface InterfaceController()
@property (nonatomic, strong) IBOutlet WKInterfaceTable      *table;
@property (nonatomic, strong) NSMutableArray       *datas;
@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    self.datas = [NSMutableArray new];
    for(int i=0; i<30; i++){
        [self.datas addObject:[NSString stringWithFormat:@"test %d",i+1]];
    }
    [self.table setNumberOfRows:self.datas.count withRowType:@"leiyongcus"];
    
    for (int i=0; i<self.datas.count; i++) {
        InterfaceRow *elementRow = [self.table rowControllerAtIndex:i];
        [elementRow.label setText:self.datas[i]];
    }
    
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

- (void)table:(WKInterfaceTable *)table didSelectRowAtIndex:(NSInteger)rowIndex{
    [self pushControllerWithName:@"details" context:self.datas[rowIndex]];
}

@end