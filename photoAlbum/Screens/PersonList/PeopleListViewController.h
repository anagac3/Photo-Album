//
//  PersonListViewController.h
//  photoAlbum
//
//  Created by Andres Aguilar on 4/1/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "PeopleListViewControllerProtocol.h"
#import "PeopleListTableViewDelegate.h"

@protocol PeopleListViewModelProtocol;

@interface PeopleListViewController : UIViewController<PeopleListViewControllerProtocol, PeopleListTableViewDelegate>

- (instancetype) initWithViewModel:(id<PeopleListViewModelProtocol>) model;

//PeopleListViewControllerProtocol
- (void) viewModelDidGetPeopleList:(NSArray *)peopleList;
- (void) viewModelGetPeopleDidFailWitherror: (NSError *)error;

//PeopleListTableViewProtocol
- (void) didSelectUser:(User *)user;

@end
