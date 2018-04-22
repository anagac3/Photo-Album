//
//  PhotoService.m
//  photoAlbum
//
//  Created by Andres Aguilar on 4/21/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import "PhotoService.h"
#import "APIClient.h"

NSString * const PHOTOS_PATH = @"photos";

@implementation PhotoService

- (void)getPhotosForAlbumId:(NSInteger)albumId completion:(void (^)(id, NSError *))completion {
    
    APIClient *apiClient = [[APIClient alloc] init];
    NSDictionary *parameters = @{@"albumId": [NSNumber numberWithInteger: albumId]};
    
    [apiClient getWithServicePath:PHOTOS_PATH parameters: parameters completion:^(NSURLResponse *response, id responseObject, NSError *error) {
        completion(responseObject, error);
    }];
    
}

@end
