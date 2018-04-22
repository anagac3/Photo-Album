//
//  UserInfoViewModelProtocol.h
//  photoAlbum
//
//  Created by Andres Aguilar on 4/1/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//


//Forward Declaration
@protocol UserInfoViewControllerProtocol;

@protocol UserInfoViewModelProtocol<NSObject>

@property (weak, nonatomic) id<UserInfoViewControllerProtocol> delegate;
- (void) getAlbumsForUserId:(NSInteger )userId;

@end
