//
//  ViewController.h
//  AplicacionTarea3
//
//  Created by Ivan on 9/15/17.
//  Copyright © 2017 wondererApps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Home : UIViewController
@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;
@property (weak, nonatomic) IBOutlet UILabel *lblRed;
@property (weak, nonatomic) IBOutlet UILabel *lblGreen;
@property (weak, nonatomic) IBOutlet UILabel *lblBlue;
@property (weak, nonatomic) IBOutlet UISwitch *cirlceSwitch;
@property (weak, nonatomic) IBOutlet UIButton *luckyButton;
@property (weak, nonatomic) IBOutlet UITextField *labelNombre;
@property (weak, nonatomic) IBOutlet UITextField *labelTelefono;


@end

