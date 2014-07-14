//
//  AQCoreDataStack.h
//  Diary
//
//  Created by Sebastian Bastidas on 7/10/14.
//  Copyright (c) 2014 Adtq. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AQCoreDataStack : NSObject

+(instancetype) defaultStack;
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
