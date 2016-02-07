//
//  AddCourseViewController.m
//  CDCourses
//
//  Created by Fenkins on 07/02/16.
//  Copyright © 2016 Fenkins. All rights reserved.
//

#import "AddCourseViewController.h"

@interface AddCourseViewController ()

@end

@implementation AddCourseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.titleField.text = [self.currentCourse title];
    self.authorField.text = [self.currentCourse author];
    
    NSDateFormatter* formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    
    self.releaseDateField.text = [formatter stringFromDate:[self.currentCourse releaseDate]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)cancel:(id)sender {
//    [self dismissViewControllerAnimated:YES completion:nil];
    [self.delegate addCourseViewControllerDidCancel:[self currentCourse]];
}

- (IBAction)save:(id)sender {
    [self.currentCourse setTitle:self.titleField.text];
    [self.currentCourse setAuthor:self.authorField.text];
    
    NSDateFormatter* formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    
    [self.currentCourse setReleaseDate:[formatter dateFromString:self.releaseDateField.text]];
    
    [self.delegate addCourseViewControllerDidSave];
}
@end
