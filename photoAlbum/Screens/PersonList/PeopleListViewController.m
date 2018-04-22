//
//  PersonListViewController.m
//  photoAlbum
//
//  Created by Andres Aguilar on 4/1/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import "PeopleListViewController.h"
#import "PeopleListTableViewController.h"
#import "User.h"
#import "NavigationManager.h"

@interface PeopleListViewController ()

@property (strong, nonatomic) id<PeopleListViewModelProtocol> modelView;
@property (strong, nonatomic) PeopleListTableViewController *tableViewController;

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation PeopleListViewController

- (instancetype) initWithViewModel:(id<PeopleListViewModelProtocol>) model {
    
    self = [super init];
    if (self) {
        _modelView = model;
        _modelView.delegate = self;
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"People List";
    [self.modelView getPeopleList];
    [self setupTableView];
}

- (void) setupTableView {
    self.tableViewController = [PeopleListTableViewController new];
    self.tableViewController.delegate = self;
    self.tableView.dataSource = self.tableViewController;
    self.tableView.delegate = self.tableViewController;
}

#pragma mark - PeopleListTableViewProtocol
- (void) viewModelDidGetPeopleList:(NSArray *)peopleList {
    self.tableViewController.peopleArray = peopleList;
    [self.tableView reloadData];
}

#pragma mark - PeopleListViewControllerProtocol
- (void) viewModelGetPeopleDidFailWitherror: (NSError *)error {
    
}

- (void) didSelectUser:(User *)user {
    [[NavigationManager sharedManager] navigateToUserInfo:user];
}

@end
