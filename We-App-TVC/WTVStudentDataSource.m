//
//  WTVStudentDataSource.m
//  We-App-TVC
//
//  Created by Sitdhibong Laokok on 28/5/57.
//  Copyright (c) พ.ศ. 2557 App Tree. All rights reserved.
//

#import "WTVStudentDataSource.h"

@interface WTVStudentDataSource ()

@property (nonatomic, strong) NSArray *fruits;

@end

@implementation WTVStudentDataSource

- (instancetype)initWithData:(NSData *)dataSource
{
    self = [super init];
    
    if (self) {
        
        // Serialized JSON's data to object
        self.fruits = [NSJSONSerialization JSONObjectWithData:dataSource
                                                      options:kNilOptions
                                                        error:nil];
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

@end
