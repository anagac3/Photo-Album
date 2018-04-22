//
//  Photo.m
//  photoAlbum
//
//  Created by Andres Aguilar on 4/21/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import "Photo.h"

const NSString *PHOTOIDKEY = @"id";
const NSString *PHOTOALBUMIDKEY = @"albumId";
const NSString *PHOTOTITLEKEY = @"title";
const NSString *URLKEY = @"url";
const NSString *THUMBNAILKEY = @"thumbnailUrl";

@implementation Photo

- (void) parseDictionary: (NSDictionary *) dictionary {
    _photoId =  ([dictionary objectForKey:PHOTOIDKEY]) ? [[dictionary objectForKey:PHOTOIDKEY] integerValue] : 0;
    _albumId =  ([dictionary objectForKey:PHOTOALBUMIDKEY]) ? [[dictionary objectForKey:PHOTOALBUMIDKEY] integerValue] : 0;
    _title = ([dictionary objectForKey:PHOTOTITLEKEY]) ? [dictionary objectForKey:PHOTOTITLEKEY] : @"";
    _url = ([dictionary objectForKey:URLKEY]) ? [dictionary objectForKey:URLKEY] : @"";
    _thumbnailUrl = ([dictionary objectForKey:THUMBNAILKEY]) ? [dictionary objectForKey:THUMBNAILKEY] : @"";
}
@end
