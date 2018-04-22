//
//  UserAlbum.h
//  photoAlbum
//
//  Created by Andres Aguilar on 4/1/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ParsableModel.h"

@interface UserAlbum : ParsableModel

@property (assign, nonatomic) NSInteger userId;
@property (strong, nonatomic) NSString *title;
@property (assign, nonatomic) NSInteger albumId;

@end
