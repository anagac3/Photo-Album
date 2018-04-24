//
//  PeopleListModelView.h
//  photoAlbum
//
//  Created by Andres Aguilar on 4/1/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PeopleListViewModelProtocol.h"

@protocol PeopleListServiceProtocol;
@protocol PeopleListViewControllerProtocol;

@interface PeopleListViewModel : NSObject<PeopleListViewModelProtocol>

- (instancetype) initWithService: (id<PeopleListServiceProtocol>)networkService;

//PeopleListViewModelProtocol
@property (weak, nonatomic) id<PeopleListViewControllerProtocol> delegate;
- (void) getPeopleList;

@end
