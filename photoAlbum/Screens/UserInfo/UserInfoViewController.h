//
//  UserInfoViewController.h
//  photoAlbum
//
//  Created by Andres Aguilar on 4/1/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UserInfoViewControllerProtocol.h"
#import "UserInfoTableViewDelegate.h"

@class User;
@class UserAlbum;

@protocol UserInfoViewModelProtocol;

@interface UserInfoViewController : UIViewController<UserInfoViewControllerProtocol, UserInfoTableViewDelegate>

- (instancetype) initWithUser:(User *)user viewModel:(id<UserInfoViewModelProtocol>)viewModel;

//UserInfoViewControllerProtocol
- (void) viewModelDidGetUserAlbums: (NSArray *)array;
- (void) viewModelDidFailToGetUserAlbum: (NSError *) error;

//UserInfoTableViewDelegate
- (void) didSelectAlbum:(UserAlbum *)album;

@end
