//
//  PeopleListService.m
//  photoAlbum
//
//  Created by Andres Aguilar on 4/1/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import "PeopleListService.h"
#import "APIClient.h"

NSString * const USERS_PATH = @"users";

@implementation PeopleListService

- (void) getPeopleListData: (void (^)(id responseObject, NSError *error)) completion {
    
    APIClient *apiClient = [[APIClient alloc] init];
    
    [apiClient getWithServicePath:USERS_PATH completion:^(NSURLResponse *response, id responseObject, NSError *error) {
        completion(responseObject, error);
    }];
}

@end
