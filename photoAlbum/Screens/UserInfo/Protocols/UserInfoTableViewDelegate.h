//
//  Header.h
//  photoAlbum
//
//  Created by Andres Aguilar on 4/21/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

@class UserAlbum;

@protocol UserInfoTableViewDelegate<NSObject>

- (void) didSelectAlbum:(UserAlbum *)album;

@end

