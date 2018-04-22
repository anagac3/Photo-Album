//
//  UserInfoViewModel.m
//  photoAlbum
//
//  Created by Andres Aguilar on 4/1/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import "UserInfoViewModel.h"
#import "UserAlbum.h"

@interface UserInfoViewModel()

@property (strong, nonatomic) id<UserInfoServiceProtocol> networkService;

@end

@implementation UserInfoViewModel

- (instancetype) initWithService: (id<UserInfoServiceProtocol>)networkService {
    self = [super init];
    if (self) {
        _networkService = networkService;
    }
    return self;
}

#pragma mark - UserInfoViewModelProtocol
- (void) getAlbumsForUserId:(NSInteger )userId {
    [self.networkService getAlbumsForUserId:userId completion:^(id responseObject, NSError *error) {
        if (error == nil) {
            NSArray *albumArray = [self parseAlbumData:responseObject];
            [self.delegate viewModelDidGetUserAlbums:albumArray];
        }else {
            [self.delegate viewModelDidFailToGetUserAlbum:error];
        }
    }];
}

#pragma mark - Private
- (NSArray *) parseAlbumData:(id) response {
    NSArray *dataArray = (NSArray *)response;
    NSMutableArray *albumArray = [NSMutableArray new];
    for (NSDictionary *dictionary in dataArray) {
        UserAlbum *newAlbum = [[UserAlbum alloc] initWithDictionary:dictionary];
        [albumArray addObject:newAlbum];
    }
    
    return [albumArray copy];
}

@end
