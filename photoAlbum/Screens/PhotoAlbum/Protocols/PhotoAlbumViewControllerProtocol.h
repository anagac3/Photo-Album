//
//  PhotoAlbumViewControllerProtocol.h
//  photoAlbum
//
//  Created by Andres Aguilar on 4/21/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

@protocol PhotoAlbumViewControllerProtocol

- (void) viewModelDidGetPhotos: (NSArray *)photos;
- (void) viewModelGetPhotosDidFailWithError: (NSError *) error;

@end
