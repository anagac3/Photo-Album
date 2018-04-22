//
//  NetworkingManager.m
//  photoAlbum
//
//  Created by Andres Aguilar on 4/1/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import "NetworkingManager.h"
#import <AFNetworking/AFURLResponseSerialization.h>

@implementation NetworkingManager

+ (NetworkingManager *) sharedManager {
    static NetworkingManager *sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedManager = [[NetworkingManager alloc] init];
    });
    return sharedManager;
}

- (instancetype) init {
    
    self = [super init];
    if (self) {
        [self setUpManager];
    }
    return self;
}

- (void) setUpManager {
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    _sessionManager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
    //Response in JSON
    AFJSONResponseSerializer *responseSerializer = [[AFJSONResponseSerializer alloc] init];
    [_sessionManager setResponseSerializer:responseSerializer];
}


@end
