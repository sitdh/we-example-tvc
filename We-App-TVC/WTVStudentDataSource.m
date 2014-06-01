//
//  WTVStudentDataSource.m
//  We-App-TVC
//
//  Created by Sitdhibong Laokok on 28/5/57.
//  Copyright (c) พ.ศ. 2557 App Tree. All rights reserved.
//

#import "WTVStudentDataSource.h"

@interface WTVStudentDataSource ()

@property (nonatomic, strong) NSMutableArray *fruits;

@end

@implementation WTVStudentDataSource

- (instancetype)initWithData:(NSData *)dataSource
{
    self = [super init];
    
    if (self) {
        
        // Serialized JSON's data to object
        NSArray *tempData = [NSJSONSerialization JSONObjectWithData:dataSource
                                                      options:kNilOptions
                                                        error:nil];
        
        NSSortDescriptor *sortByName = [NSSortDescriptor sortDescriptorWithKey:@"fruit_name"
                                                                     ascending:YES];
        
        NSArray *sortedFruits = [tempData sortedArrayUsingDescriptors:@[sortByName]];
        self.fruits = [[NSMutableArray alloc] initWithArray:sortedFruits];
        
    }
    
    return self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Count number of element in self.fruits
    return (nil == self.fruits) ? 0 : [self.fruits count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * kBasicCellIdentifer = @"kBasicCellIdentifer";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kBasicCellIdentifer forIndexPath:indexPath];
    
    NSDictionary *fruitInformation = self.fruits[indexPath.row];
    
    cell.textLabel.text = fruitInformation[@"fruit_name"];
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{

    if (UITableViewCellEditingStyleDelete == editingStyle) {
        
        [self.fruits removeObjectAtIndex:indexPath.row];
        
    }
    
    [tableView reloadData];
}

@end
