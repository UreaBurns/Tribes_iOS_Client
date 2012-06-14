//
//  Test.h
//  Tribes_iOS_Client
//
//  Created by Carmelo I. Uria on 6/13/12.
//  Copyright (c) 2012 Carmelo Uria Corporation. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Test : NSManagedObject

@property (nonatomic, retain) NSNumber * status;
@property (nonatomic, retain) NSString * stats;

@end
