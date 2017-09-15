//
//  ViewController.m
//  AplicacionTarea3
//
//  Created by Ivan on 9/15/17.
//  Copyright © 2017 wondererApps. All rights reserved.
//

#import "Home.h"

@interface Home ()

@end

@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CAShapeLayer *circleLayer = [CAShapeLayer layer];
    [circleLayer setPath:[[UIBezierPath bezierPathWithOvalInRect:CGRectMake(160, 50, 100, 100)] CGPath]];
    [[self.view layer] addSublayer:circleLayer];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
