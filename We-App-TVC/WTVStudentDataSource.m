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

@end
