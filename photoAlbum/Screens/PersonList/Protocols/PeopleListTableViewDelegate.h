//
//  PeopleListTableViewProtocol.h
//  photoAlbum
//
//  Created by Andres Aguilar on 4/21/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import "User.h"

@protocol PeopleListTableViewDelegate<NSObject>

- (void) didSelectUser: (User *) user;

@end

