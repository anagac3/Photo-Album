//
//  UserInfoService.h
//  photoAlbum
//
//  Created by Andres Aguilar on 4/1/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInfoServiceProtocol.h"

@interface UserInfoService : NSObject<UserInfoServiceProtocol>

- (void)getAlbumsForUserId:(NSInteger)userId completion:(void (^)(id, NSError *))completion;

@end
