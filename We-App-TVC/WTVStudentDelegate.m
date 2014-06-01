//
//  WTVStudentDelegate.m
//  We-App-TVC
//
//  Created by Sitdhibong Laokok on 28/5/57.
//  Copyright (c) พ.ศ. 2557 App Tree. All rights reserved.
//

#import "WTVStudentDelegate.h"

@interface WTVStudentDelegate ()

@property (nonatomic, strong) NSArray *fruits;

@end

@implementation WTVStudentDelegate

- (id)initWithData:(NSData *)data
{
    self = [super init];
    if (self) {
        // Serialized JSON's data to object
        NSArray *tempData = [NSJSONSerialization JSONObjectWithData:data
                                                            options:kNilOptions
                                                              error:nil];
        
        NSSortDescriptor *sortByName = [NSSortDescriptor sortDescriptorWithKey:@"fruit_name"
                                                                     ascending:YES];
        
        self.fruits = [tempData sortedArrayUsingDescriptors:@[sortByName]];
    }
    
    return self;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *selectedCell = [tableView cellForRowAtIndexPath:indexPath];
    selectedCell.selected = NO;
    
    NSDictionary *fruit = [self.fruits objectAtIndex:indexPath.row];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"%@", fruit[@"fruit_name"]]
                                                    message:[NSString stringWithFormat:@"%@", fruit[@"information"]]
                                                   delegate:nil
                                          cancelButtonTitle:@"Cancel"
                                          otherButtonTitles:nil];
    
    [alert show];
}

@end
