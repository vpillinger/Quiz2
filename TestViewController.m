//
//  TestViewController.m
//  Slider
//
//  Created by Vincent Pillinger on 1/27/14.
//  Copyright (c) 2014 Vincent Pillinger. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController
@synthesize slider;
@synthesize label;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self valueChanged:nil];
}

- (void)viewDidUnload
{
    [self setSlider:nil];
    [self setLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}
- (IBAction)valueChanged:(id)sender {
    double sliderValue = [slider value];
    NSString *labelText = [NSString stringWithFormat:@"%f",sliderValue];
    [label setText:labelText];
}
@end
