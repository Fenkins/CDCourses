//
//  CoarsesTableViewController.h
//  CDCourses
//
//  Created by Fenkins on 24/01/16.
//  Copyright © 2016 Fenkins. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "Course.h"
#import "AddCourseViewController.h"

@interface CoarsesTableViewController : UITableViewController <AddCourseViewControllerDelegate>
@property (nonatomic,strong) NSManagedObjectContext *managedObjectContext;
@property (nonatomic,strong) NSFetchedResultsController *fetchedResultsController;
@end
