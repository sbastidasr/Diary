//
//  AQAppDelegate.h
//  Diary
//
//  Created by Sebastian Bastidas on 7/10/14.
//  Copyright (c) 2014 Adtq. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AQAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
