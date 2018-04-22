//
//  Photo.h
//  photoAlbum
//
//  Created by Andres Aguilar on 4/21/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ParsableModel.h"

@interface Photo : ParsableModel

@property (assign, nonatomic) NSInteger photoId;
@property (assign, nonatomic) NSInteger albumId;
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *url;
@property (strong, nonatomic) NSString *thumbnailUrl;

@end
