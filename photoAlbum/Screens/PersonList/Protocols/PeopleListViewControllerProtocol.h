//
//  PeopleListViewControllerDelegate.h
//  photoAlbum
//
//  Created by Andres Aguilar on 4/1/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

@protocol PeopleListViewControllerProtocol<NSObject>

- (void) viewModelDidGetPeopleList: (NSArray *) peopleList;
- (void) viewModelGetPeopleDidFailWitherror: (NSError *)error;

@end
