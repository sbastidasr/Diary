//
//  AQNewEntryViewController.m
//  Diary
//
//  Created by Sebastian Bastidas on 7/14/14.
//  Copyright (c) 2014 Adtq. All rights reserved.
//

#import "AQNewEntryViewController.h"
#import "THDiaryEntry.h"
#import "AQCoreDataStack.h"

@interface AQNewEntryViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation AQNewEntryViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)cancelWasPressed:(id)sender {
    [self dismissSelf];
}
- (IBAction)doneWasPressed:(id)sender {
    [self insertDiaryEntry];
      [self dismissSelf];
}
-(void)dismissSelf{
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}
-(void)insertDiaryEntry{
    AQCoreDataStack *coreDataStack=[AQCoreDataStack defaultStack];
    THDiaryEntry *entry=[NSEntityDescription insertNewObjectForEntityForName:@"THDiaryEntry" inManagedObjectContext:coreDataStack.managedObjectContext];
    entry.body=self.textField.text;
    entry.date=[[NSDate date]timeIntervalSince1970];
    [coreDataStack saveContext];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
