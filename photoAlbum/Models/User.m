//
//  User.m
//  photoAlbum
//
//  Created by Andres Aguilar on 4/1/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import "User.h"

const NSString *IDKEY = @"id";
const NSString *NAMEKEY = @"name";
const NSString *USERNAMEKEY = @"username";
const NSString *EMAILKEY = @"email";
const NSString *PHONEKEY = @"phone";
const NSString *WEBSITEKEY = @"website";

@implementation User

- (void) parseDictionary: (NSDictionary *) dictionary {
    
    _userId =  ([dictionary objectForKey:IDKEY]) ? [[dictionary objectForKey:IDKEY] integerValue] : 0;
    _name = ([dictionary objectForKey:NAMEKEY]) ? [dictionary objectForKey:NAMEKEY] : @"";
    _username = ([dictionary objectForKey:USERNAMEKEY]) ? [dictionary objectForKey:USERNAMEKEY] : @"";
    _email = ([dictionary objectForKey:EMAILKEY]) ? [dictionary objectForKey:EMAILKEY] : @"";
    _phone = ([dictionary objectForKey:PHONEKEY]) ? [dictionary objectForKey:PHONEKEY] : @"";
    _website = ([dictionary objectForKey:WEBSITEKEY]) ? [dictionary objectForKey:WEBSITEKEY] : @"";
}
@end
