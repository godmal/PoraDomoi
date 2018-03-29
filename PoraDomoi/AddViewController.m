//
//  AddViewController.m
//  PoraDomoi
//
//  Created by Dima Gorbachev on 26.03.2018.
//  Copyright © 2018 Dima Gorbachev. All rights reserved.
//

#import "AddViewController.h"


@interface AddViewController ()

@end

@implementation AddViewController {
    NSDate* _date;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    PeopleStore* store = [[PeopleStore alloc] init];
    self.model = [[People alloc] initWithStore:store];
    
    UIDatePicker *datePicker = [[UIDatePicker alloc]init];
    datePicker.minimumDate = [DateUtils minLimitDate];
    [datePicker setDate:[DateUtils now]];
    datePicker.backgroundColor = [UIColor whiteColor];
    datePicker.datePickerMode = UIDatePickerModeDate;
    [datePicker addTarget:self action:@selector(dateTextField:) forControlEvents:UIControlEventValueChanged];
    [self.dateInput setInputView:datePicker];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)saveButton:(id)sender {
    [self.model add:[[Person alloc] initWithName:self.nameInput.text andDate:_date andEndDate:nil]];
    NSLog(@"%lu", self.model.people.count);
    [self dismissViewControllerAnimated:YES completion:nil];
}


-(void) dateTextField:(id)sender {
    UIDatePicker *picker = (UIDatePicker*)self.dateInput.inputView;
    _date = picker.date;
    NSString* dateString = [[DateUtils getFormatter] stringFromDate:_date];
    self.dateInput.text = [NSString stringWithFormat:@"%@",dateString];
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self.nameInput resignFirstResponder];
    return YES;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
