//
//  PhotoAlbumViewModelProtocol.h
//  photoAlbum
//
//  Created by Andres Aguilar on 4/21/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

//Forward Declaration
@protocol PhotoAlbumViewControllerProtocol;

@protocol PhotoAlbumViewModelProtocol

@property (weak, nonatomic) id<PhotoAlbumViewControllerProtocol>delegate;
- (void) getPhotosForAlbumId: (NSInteger) albumId;

@end
