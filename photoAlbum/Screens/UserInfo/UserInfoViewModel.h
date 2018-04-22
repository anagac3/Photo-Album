//
//  UserInfoViewModel.h
//  photoAlbum
//
//  Created by Andres Aguilar on 4/1/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInfoViewModelProtocol.h"
#import "UserInfoServiceProtocol.h"
#import "UserInfoViewControllerProtocol.h"

@interface UserInfoViewModel : NSObject<UserInfoViewModelProtocol>

- (instancetype) initWithService: (id<UserInfoServiceProtocol>)networkService;

//UserInfoViewModelProtocol
@property (weak, nonatomic) id<UserInfoViewControllerProtocol> delegate;
- (void) getAlbumsForUserId:(NSInteger )userId;

@end
