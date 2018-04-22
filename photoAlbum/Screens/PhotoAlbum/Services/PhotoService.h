//
//  PhotoService.h
//  photoAlbum
//
//  Created by Andres Aguilar on 4/21/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PhotoAlbumServiceProtocol.h"

@interface PhotoService : NSObject<PhotoAlbumServiceProtocol>

- (void)getPhotosForAlbumId:(NSInteger)albumId completion:(void (^)(id, NSError *))completion;

@end
