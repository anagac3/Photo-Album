//
//  Photo.m
//  photoAlbum
//
//  Created by Andres Aguilar on 4/21/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import "Photo.h"

static const NSString *kIdKey = @"id";
static const NSString *kAlbumId = @"albumId";
static const NSString *kTitleKey = @"title";
static const NSString *kUrlKey = @"url";
static const NSString *kThumbnailUrlKey = @"thumbnailUrl";

@implementation Photo

- (void) parseDictionary: (NSDictionary *) dictionary {
    _photoId =  ([dictionary objectForKey:kIdKey]) ? [[dictionary objectForKey:kIdKey] integerValue] : 0;
    _albumId =  ([dictionary objectForKey:kAlbumId]) ? [[dictionary objectForKey:kAlbumId] integerValue] : 0;
    _title = ([dictionary objectForKey:kTitleKey]) ? [dictionary objectForKey:kTitleKey] : @"";
    _url = ([dictionary objectForKey:kUrlKey]) ? [dictionary objectForKey:kUrlKey] : @"";
    _thumbnailUrl = ([dictionary objectForKey:kThumbnailUrlKey]) ? [dictionary objectForKey:kThumbnailUrlKey] : @"";
}
@end
