//
//  APIClient.m
//  photoAlbum
//
//  Created by Andres Aguilar on 4/1/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import "APIClient.h"
#import "NetworkingManager.h"

 static NSString* const baseURL = @"https://jsonplaceholder.typicode.com";

@implementation APIClient

- (void) getWithServicePath: (NSString *)servicePath parameters: (NSDictionary *)parameters completion:(void (^)(NSURLResponse *response, id responseObject, NSError *error)) completion {
    
    NSString *url = [[[NSURL URLWithString:baseURL] URLByAppendingPathComponent:servicePath] absoluteString];
    NSURLRequest *request = [[AFHTTPRequestSerializer serializer] requestWithMethod:@"GET" URLString:url parameters:parameters error:nil];
    
    NSURLSessionDataTask *dataTask = [[NetworkingManager sharedManager].sessionManager dataTaskWithRequest:request uploadProgress:nil downloadProgress:nil completionHandler:completion];
    [dataTask resume];
}

- (void) getWithServicePath: (NSString *)servicePath completion:(void (^)(NSURLResponse *response, id responseObject, NSError *error)) completion {
    [self getWithServicePath:servicePath parameters:nil completion:completion];
}


//POST, ETC

@end
