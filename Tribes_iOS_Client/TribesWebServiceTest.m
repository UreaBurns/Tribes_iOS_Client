//
//  TribesWebServiceTest.m
//  Tribes_iOS_Client
//
//  Created by Carmelo I. Uria on 6/13/12.
//  Copyright (c) 2012 Carmelo Uria Corporation. All rights reserved.
//

#import "TribesWebServiceTest.h"

@implementation TribesWebServiceTest

- (void) executeBasicTest
{
    [[RKClient sharedClient] get:@"/" delegate:self];
}

#pragma mark -
#pragma mark - RKRequestDelegate methods

- (void)request:(RKRequest*)request didLoadResponse:(RKResponse*)response
{
    if ([request isGET])
    {
        // Handling GET /
        
        if ([response isOK])
        {
            if ([response isJSON])
            {
                // Success! Let's take a look at the data
                NSLog(@"Retrieved JSON response: %@", [response bodyAsString]);

            }
            else
            {
                // Success! Let's take a look at the data
                NSLog(@"Retrieved response: %@", [response bodyAsString]);
            }
        }
        
    }
    else if ([request isPOST])
    {
        
        // Handling POST /
        if ([response isJSON])
        {
            NSLog(@"Got a JSON response back from our POST!");
        }
        
    }
    else if ([request isDELETE])
    {
        
        // Handling DELETE
        if ([response isNotFound])
        {
            NSLog(@"The resource path '%@' was not found.", [request resourcePath]);
        }
    }
}

- (void) request:(RKRequest *) request didFailLoadWithError:(NSError *) error
{
    NSLog(@"request did fail: %@", [error description]);
}

@end
