//
//  PeopleListTableViewDataSource.h
//  photoAlbum
//
//  Created by Andres Aguilar on 4/1/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol PeopleListTableViewDelegate;

@interface PeopleListTableViewController : NSObject<UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSArray* peopleArray;
@property (weak, nonatomic) id<PeopleListTableViewDelegate> delegate;

@end
