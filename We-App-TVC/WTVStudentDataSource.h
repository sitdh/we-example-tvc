//
//  WTVStudentDataSource.h
//  We-App-TVC
//
//  Created by Sitdhibong Laokok on 28/5/57.
//  Copyright (c) พ.ศ. 2557 App Tree. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

@interface WTVStudentDataSource : NSObject <UITableViewDataSource>

/*! Initiation of class with JSON data
 
 @param dataSource JSON's content to be converted
 @return WTVStudentDataSource's object with data
 */
- (instancetype)initWithData:(NSData *)dataSource;

@end
