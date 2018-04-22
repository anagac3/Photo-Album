//
//  PhotoAlbumCollectionViewDelegate.h
//  photoAlbum
//
//  Created by Andres Aguilar on 4/21/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import "Photo.h"

@protocol PhotoAlbumCollectionViewDelegate

- (void) didSelectPhoto:(Photo *)photo image:(UIImage *)image;

@end
