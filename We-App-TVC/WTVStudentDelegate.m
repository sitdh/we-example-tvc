//
//  WTVStudentDelegate.m
//  We-App-TVC
//
//  Created by Sitdhibong Laokok on 28/5/57.
//  Copyright (c) พ.ศ. 2557 App Tree. All rights reserved.
//

#import "WTVStudentDelegate.h"

@implementation WTVStudentDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *selectedCell = [tableView cellForRowAtIndexPath:indexPath];
    selectedCell.selected = NO;
}

@end
