//
//  TribesCoreDataWebServiceTest.m
//  Tribes_iOS_Client
//
//  Created by Carmelo I. Uria on 6/13/12.
//  Copyright (c) 2012 Carmelo Uria Corporation. All rights reserved.
//

#import "TribesCoreDataWebServiceTest.h"

@implementation TribesCoreDataWebServiceTest

- (id) init
{
    self = [super init];
    
    if (self != nil)
    {
        RKObjectManager* objectManager = [RKObjectManager objectManagerWithBaseURL:@"http://coreapi.net/SNAPSHOTS/stage/tribe"];
        RKManagedObjectStore* objectStore = [RKManagedObjectStore objectStoreWithStoreFilename:@"Tribes_iOS_Client.sqlite"];
        objectManager.objectStore = objectStore;
        [RKObjectManager setSharedManager:objectManager];

    }
    
    return self;
}

@end
