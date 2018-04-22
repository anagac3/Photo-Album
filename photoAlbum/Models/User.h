//
//  User.h
//  photoAlbum
//
//  Created by Andres Aguilar on 4/1/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ParsableModel.h"

@interface User : ParsableModel

@property (assign, nonatomic) NSInteger userId;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *username;
@property (strong, nonatomic) NSString *email;
@property (strong, nonatomic) NSString *phone;
@property (strong, nonatomic) NSString *website;

@end
