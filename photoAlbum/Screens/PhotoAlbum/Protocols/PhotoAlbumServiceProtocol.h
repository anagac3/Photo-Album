//
//  PhotoAlbumServiceProtocol.h
//  photoAlbum
//
//  Created by Andres Aguilar on 4/21/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

@protocol PhotoAlbumServiceProtocol

- (void) getPhotosForAlbumId: (NSInteger)albumId completion:(void (^)(id responseObject, NSError *error)) completion;

@end
