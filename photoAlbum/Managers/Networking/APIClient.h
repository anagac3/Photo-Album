//
//  APIClient.h
//  photoAlbum
//
//  Created by Andres Aguilar on 4/1/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APIClient : NSObject

- (void) getWithServicePath: (NSString *)servicePath completion:(void (^)(NSURLResponse *response, id responseObject, NSError *error)) completion;
- (void) getWithServicePath: (NSString *)servicePath parameters: (NSDictionary *)parameters completion:(void (^)(NSURLResponse *response, id responseObject, NSError *error)) completion;

@end
