//
//  TestViewController.h
//  Slider
//
//  Created by Vincent Pillinger on 1/27/14.
//  Copyright (c) 2014 Vincent Pillinger. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestViewController : UIViewController
- (IBAction)valueChanged:(id)sender;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *label;


@end
