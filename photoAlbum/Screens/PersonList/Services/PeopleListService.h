//
//  PeopleListService.h
//  photoAlbum
//
//  Created by Andres Aguilar on 4/1/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PeopleListServiceProtocol.h"

@interface PeopleListService : NSObject<PeopleListServiceProtocol>

- (void) getPeopleListData: (void (^)(id responseObject, NSError *error)) peopleData;

@end
