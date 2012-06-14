//
//  Test.m
//  Tribes_iOS_Client
//
//  Created by Carmelo I. Uria on 6/13/12.
//  Copyright (c) 2012 Carmelo Uria Corporation. All rights reserved.
//

#import "Test.h"


@implementation Test

@dynamic status;
@dynamic stats;

- (id) init
{
    self = [super init];
    
    if (self != nil)
    {
        RKObjectManager* objectManager = [RKObjectManager objectManagerWithBaseURLString:@"http://coreapi.net/SNAPSHOTS/stage/tribe"];
        RKManagedObjectStore* objectStore = [RKManagedObjectStore objectStoreWithStoreFilename:@"Tribes_iOS_Client.sqlite"];
        objectManager.objectStore = objectStore;
        [RKObjectManager setSharedManager:objectManager];
        
        // Create some starter object if the database is empty
        if ([Test count:nil] == 0)
        {
                Test *test = [Test object];
                test.status = [NSNumber numberWithInt:200];
                test.stats = @"online";
                
                // Persist the object store
                [objectManager.objectStore save:nil];
        }

        
    }
    
    return self;
}

@end
