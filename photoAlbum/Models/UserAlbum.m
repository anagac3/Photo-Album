//
//  UserAlbum.m
//  photoAlbum
//
//  Created by Andres Aguilar on 4/1/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import "UserAlbum.h"

const NSString *ALBUMIDKEY = @"id";
const NSString *TITLEKEY = @"title";
const NSString *USERIDKEY = @"userId";

@implementation UserAlbum

- (void) parseDictionary: (NSDictionary *) dictionary {
    _userId =  ([dictionary objectForKey:USERIDKEY]) ? [[dictionary objectForKey:USERIDKEY] integerValue] : 0;
    _title = ([dictionary objectForKey:TITLEKEY]) ? [dictionary objectForKey:TITLEKEY] : @"";
    _albumId = ([dictionary objectForKey:ALBUMIDKEY]) ? [[dictionary objectForKey:ALBUMIDKEY] integerValue] : 0;
}

@end
