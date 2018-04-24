//
//  PhotoAlbumViewModel.m
//  photoAlbum
//
//  Created by Andres Aguilar on 4/21/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import "PhotoAlbumViewModel.h"

#import "PhotoAlbumViewControllerProtocol.h"
#import "PhotoAlbumServiceProtocol.h"

#import "Photo.h"

@interface PhotoAlbumViewModel()

@property (strong, nonatomic) id<PhotoAlbumServiceProtocol> networkService;

@end

@implementation PhotoAlbumViewModel

- (instancetype) initWithService:(id<PhotoAlbumServiceProtocol>)networkService {
    self = [super init];
    if (self) {
        _networkService = networkService;
    }
    return self;
}

- (void) getPhotosForAlbumId:(NSInteger)albumId {
    [self.networkService getPhotosForAlbumId:albumId completion:^(id responseObject, NSError *error) {
        if (error == nil) {
            NSArray *albumArray = [self parsePhotoData:responseObject];
            [self.delegate viewModelDidGetPhotos:albumArray];
        }else {
            [self.delegate viewModelGetPhotosDidFailWithError:error];
        }
    }];
}

#pragma mark - Private
- (NSArray *) parsePhotoData:(id) response {
    NSArray *dataArray = (NSArray *)response;
    NSMutableArray *photosArray = [NSMutableArray new];
    for (NSDictionary *dictionary in dataArray) {
        Photo *newPhoto = [[Photo alloc] initWithDictionary:dictionary];
        [photosArray addObject:newPhoto];
    }
    
    return [photosArray copy];
}

@end
