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

CGFloat red=0.00;
CGFloat blue=0.00;
CGFloat green=0.00;
CAShapeLayer *circleLayer;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    circleLayer = [CAShapeLayer layer];
    [circleLayer setPath:[[UIBezierPath bezierPathWithOvalInRect:CGRectMake(160, 50, 100, 100)] CGPath]];
    [[self.view layer] addSublayer:circleLayer];
    //[circleLayer setFillColor:[[UIColor colorWithRed: red/255.f green:green/255.f blue: blue/255.f alpha: 1.0] CGColor]];
}

//[redSlider addTarget:self action:@selector(changeRedValue:) forControlEvents:UIControlEventValueChanged];

- (IBAction)changeRedValue:(id)sender {
    red=self.redSlider.value;
    self.lblRed.text= [ NSString stringWithFormat:@"%.0f" ,red ];
    [circleLayer setFillColor:[[UIColor colorWithRed: red/255.f green:green/255.f blue: blue/255.f alpha: 1.0] CGColor]];
}

- (IBAction)changeGreenValue:(id)sender {
    green=self.greenSlider.value ;
    self.lblGreen.text= [ NSString stringWithFormat:@"%.0f" ,green ];
    [circleLayer setFillColor:[[UIColor colorWithRed: red/255.f green:green/255.f blue: blue/255.f alpha: 1.0] CGColor]];
}

- (IBAction)changeBlueValue:(id)sender {
    blue=self.blueSlider.value;
    self.lblBlue.text= [ NSString stringWithFormat:@"%.0f" ,blue ];
    [circleLayer setFillColor:[[UIColor colorWithRed: red/255.f green:green/255.f blue: blue/255.f alpha: 1.0] CGColor]];
    
}
- (IBAction)circleVisible:(id)sender {
    if (self.cirlceSwitch.isOn){
        [circleLayer setFillColor:[[UIColor colorWithRed: red/255.f green:green/255.f blue: blue/255.f alpha: 1.0] CGColor]];    }
    else{
        [circleLayer setFillColor:[[UIColor clearColor] CGColor]];    }
}
- (IBAction)randomColoredCircle:(id)sender {
    red = ((float)rand()/RAND_MAX)*255;
    green = ((float)rand()/RAND_MAX)*255;
    blue = ((float)rand()/RAND_MAX)*255;
    [circleLayer setFillColor:[[UIColor colorWithRed: red/255.f green:green/255.f blue: blue/255.f alpha: 1.0] CGColor]];
    self.redSlider.value = red;
    self.greenSlider.value = green;
    self.blueSlider.value = blue;
    self.lblRed.text= [ NSString stringWithFormat:@"%.0f" ,red ];
    self.lblGreen.text= [ NSString stringWithFormat:@"%.0f" ,green ];
    self.lblBlue.text= [ NSString stringWithFormat:@"%.0f" ,blue ];
}
- (IBAction)alertMessage:(id)sender {
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
