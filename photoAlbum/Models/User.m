//
//  User.m
//  photoAlbum
//
//  Created by Andres Aguilar on 4/1/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import "User.h"

static const NSString *kIdKey = @"id";
static const NSString *kNameKey = @"name";
static const NSString *kUsernameKey = @"username";
static const NSString *kEmailKey = @"email";
static const NSString *kPhoneKey = @"phone";
static const NSString *kWebsiteKey = @"website";

@implementation User

- (void) parseDictionary: (NSDictionary *) dictionary {
    
    _userId =  ([dictionary objectForKey:kIdKey]) ? [[dictionary objectForKey:kIdKey] integerValue] : 0;
    _name = ([dictionary objectForKey:kNameKey]) ? [dictionary objectForKey:kNameKey] : @"";
    _username = ([dictionary objectForKey:kUsernameKey]) ? [dictionary objectForKey:kUsernameKey] : @"";
    _email = ([dictionary objectForKey:kEmailKey]) ? [dictionary objectForKey:kEmailKey] : @"";
    _phone = ([dictionary objectForKey:kPhoneKey]) ? [dictionary objectForKey:kPhoneKey] : @"";
    _website = ([dictionary objectForKey:kWebsiteKey]) ? [dictionary objectForKey:kWebsiteKey] : @"";
}
@end
