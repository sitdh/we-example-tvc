//
//  WTVStudentsTableViewController.m
//  We-App-TVC
//
//  Created by Sitdhibong Laokok on 28/5/57.
//  Copyright (c) พ.ศ. 2557 App Tree. All rights reserved.
//

#import "WTVStudentsTableViewController.h"

#import "WTVStudentDataSource.h"

@interface WTVStudentsTableViewController () {
    WTVStudentDataSource *dataSource;
}

@end

@implementation WTVStudentsTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *contentPath = [[NSBundle mainBundle] pathForResource:@"fruits" ofType:@"json"];
    NSData *fruitData = [NSData dataWithContentsOfFile:contentPath];
    
    dataSource = [[WTVStudentDataSource alloc] initWithData:fruitData];
    
    self.tableView.dataSource = dataSource;
    
}

@end
