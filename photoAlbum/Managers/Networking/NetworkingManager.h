//
//  NetworkingManager.h
//  photoAlbum
//
//  Created by Andres Aguilar on 4/1/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>

@interface NetworkingManager : NSObject

+ (NetworkingManager *) sharedManager;

@property (strong, nonatomic) AFURLSessionManager *sessionManager;

@end
