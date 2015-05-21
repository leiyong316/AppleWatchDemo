//
//  DetailInterfaceController.m
//  TestWatch
//
//  Created by 雷勇 on 14-11-20.
//  Copyright (c) 2014年 __FULLNAME__. All rights reserved.
//

#import "DetailInterfaceController.h"


@interface DetailInterfaceController()
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *detailLabel;
- (IBAction)switchAction:(id)sender;
- (IBAction)sliderAction:(float)sender;
- (IBAction)buttonAction;
@end

@implementation DetailInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    [self setTitle:context];
    [self.detailLabel setText:@"wkInterfaceLabel"];
}

- (void)willActivate{
    [super willActivate];
    NSLog(@"willActivate");
}

- (void)didDeactivate{
    [super didDeactivate];
    NSLog(@"didDeactivate");
}

- (IBAction)switchAction:(id)sender{
    NSLog(@"%@",sender);
}

- (IBAction)sliderAction:(float)sender{
    NSLog(@"%f",sender);
}

- (IBAction)buttonAction{

}
@end
