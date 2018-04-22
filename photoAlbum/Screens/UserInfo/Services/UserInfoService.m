//
//  UserInfoService.m
//  photoAlbum
//
//  Created by Andres Aguilar on 4/1/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import "UserInfoService.h"
#import "APIClient.h"

NSString * const ALBUMS_PATH = @"albums";

@implementation UserInfoService

- (void)getAlbumsForUserId:(NSInteger)userId completion:(void (^)(id, NSError *))completion {
    
    APIClient *apiClient = [[APIClient alloc] init];
    NSDictionary *parameters = @{@"userId": [NSNumber numberWithInteger: userId]};
    
    [apiClient getWithServicePath:ALBUMS_PATH parameters:parameters completion:^(NSURLResponse *response, id responseObject, NSError *error) {
        completion(responseObject, error);
    }];
}

@end
