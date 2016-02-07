//
//  AddCourseViewController.h
//  CDCourses
//
//  Created by Fenkins on 07/02/16.
//  Copyright © 2016 Fenkins. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Course.h"

@protocol AddCourseViewControllerDelegate;

@interface AddCourseViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UITextField *authorField;
@property (weak, nonatomic) IBOutlet UITextField *releaseDateField;

@property (weak, nonatomic) id <AddCourseViewControllerDelegate> delegate;
@property (strong, nonatomic) Course* currentCourse;

- (IBAction)cancel:(id)sender;
- (IBAction)save:(id)sender;

@end

@protocol AddCourseViewControllerDelegate

-(void)addCourseViewControllerDidSave;
-(void)addCourseViewControllerDidCancel:(Course*)courseToDelete;

@end