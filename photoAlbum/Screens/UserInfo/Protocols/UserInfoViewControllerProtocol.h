//
//  UserInfoViewControllerProtocol.h
//  photoAlbum
//
//  Created by Andres Aguilar on 4/1/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import "UserInfoViewModelProtocol.h"
#import "User.h"

@protocol UserInfoViewControllerProtocol<NSObject>

- (void) viewModelDidGetUserAlbums: (NSArray *)array;
- (void) viewModelDidFailToGetUserAlbum: (NSError *) error;

@end
