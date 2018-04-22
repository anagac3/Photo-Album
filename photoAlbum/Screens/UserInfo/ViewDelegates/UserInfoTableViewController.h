//
//  UIUserInfoTableViewController.h
//  photoAlbum
//
//  Created by Andres Aguilar on 4/1/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UserInfoTableViewDelegate.h"

@interface UserInfoTableViewController : NSObject<UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) NSArray *userAlbums;
@property (weak, nonatomic) id<UserInfoTableViewDelegate> delegate;

@end
