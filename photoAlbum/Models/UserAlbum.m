//
//  UserAlbum.m
//  photoAlbum
//
//  Created by Andres Aguilar on 4/1/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import "UserAlbum.h"

static const NSString *kIdKey = @"id";
static const NSString *kTitleKey = @"title";
static const NSString *kUserIdKey = @"userId";

@implementation UserAlbum

- (void) parseDictionary: (NSDictionary *) dictionary {
    _userId =  ([dictionary objectForKey:kUserIdKey]) ? [[dictionary objectForKey:kUserIdKey] integerValue] : 0;
    _title = ([dictionary objectForKey:kTitleKey]) ? [dictionary objectForKey:kTitleKey] : @"";
    _albumId = ([dictionary objectForKey:kIdKey]) ? [[dictionary objectForKey:kIdKey] integerValue] : 0;
}

@end
