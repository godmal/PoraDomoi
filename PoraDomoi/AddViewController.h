//
//  AddViewController.h
//  PoraDomoi
//
//  Created by Dima Gorbachev on 26.03.2018.
//  Copyright © 2018 Dima Gorbachev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *nameInput;
@property (weak, nonatomic) IBOutlet UITextField *dateInput;
@property (weak, nonatomic) IBOutlet UIButton *saveButton;

@end
