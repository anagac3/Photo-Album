//
//  PhotoAlbumViewModel.h
//  photoAlbum
//
//  Created by Andres Aguilar on 4/21/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PhotoAlbumViewModelProtocol.h"
#import "PhotoAlbumViewControllerProtocol.h"
#import "PhotoAlbumServiceProtocol.h"

@interface PhotoAlbumViewModel : NSObject<PhotoAlbumViewModelProtocol>

- (instancetype) initWithService:(id<PhotoAlbumServiceProtocol>)networkService;

@property (weak, nonatomic) id<PhotoAlbumViewControllerProtocol>delegate;
- (void) getPhotosForAlbumId: (NSInteger) albumId;

@end

