//
//  PeopleListModelView.m
//  photoAlbum
//
//  Created by Andres Aguilar on 4/1/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import "PeopleListViewModel.h"
#import "PeopleListServiceProtocol.h"
#import "PeopleListViewControllerProtocol.h"
#import "User.h"

@interface PeopleListViewModel()

@property (strong, nonatomic) id<PeopleListServiceProtocol> networkService;

@end

@implementation PeopleListViewModel

- (instancetype) initWithService:(id<PeopleListServiceProtocol>)networkService {
    
    self = [super init];
    if (self) {
        _networkService = networkService;
    }
    return self;
}

#pragma mark - PeopleListViewModelProtocol
- (void) getPeopleList {
    [self.networkService getPeopleListData:^(id responseObject, NSError *error) {
        if (error == nil) {
            NSArray *peopleArray = [self parsePeopleData:responseObject];
            [self.delegate viewModelDidGetPeopleList:peopleArray];
        } else {
            [self.delegate viewModelGetPeopleDidFailWitherror:error];
        }
    }];
}

#pragma mark - Private
- (NSArray *) parsePeopleData: (id) peopleData {
    NSArray *dataArray = (NSArray *)peopleData;
    NSMutableArray *peopleArray = [NSMutableArray new];
    for (NSDictionary *dictionary in dataArray) {
        User *newUser = [[User alloc] initWithDictionary:dictionary];
        [peopleArray addObject:newUser];
    }
    
    return [peopleArray copy];
}

@end
