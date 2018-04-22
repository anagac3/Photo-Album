//
//  PeopleListServiceProtocol.h
//  photoAlbum
//
//  Created by Andres Aguilar on 4/1/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PeopleListServiceProtocol

- (void) getPeopleListData: (void (^)(id responseObject, NSError *error)) completion;

@end
