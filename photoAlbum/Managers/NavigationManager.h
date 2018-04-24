//
//  NavigationManager.h
//  photoAlbum
//
//  Created by Andres Aguilar on 4/1/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import <UIKit/UIKit.h>

@class User;
@class UserAlbum;

@interface NavigationManager : NSObject

+ (NavigationManager *) sharedManager;

- (UINavigationController *) createRootNavController;
- (void) navigateToUserInfo: (User *)user;
- (void) navigateToPhotoAlbum:(UserAlbum *)album;
- (void) navigateToPhotoDetail: (UIImage*)image;


@end
