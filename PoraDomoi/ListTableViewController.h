//
//  ListTableViewController.h
//  PoraDomoi
//
//  Created by Dima Gorbachev on 28.03.2018.
//  Copyright © 2018 Dima Gorbachev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "People.h"
#import "Person.h"
#import "MainViewController.h"

@interface ListTableViewController : UITableViewController

@property (strong, nonatomic) People* model;
@property (strong, nonatomic) Person* person;

@end
