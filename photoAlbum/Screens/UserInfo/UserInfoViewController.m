//
//  UserInfoViewController.m
//  photoAlbum
//
//  Created by Andres Aguilar on 4/1/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import "UserInfoViewController.h"

#import "User.h"
#import "UserAlbum.h"

#import "UserInfoTableViewController.h"
#import "NavigationManager.h"

#import "UserInfoViewModelProtocol.h"
#import <AFNetworking/UIImageView+AFNetworking.h>

@interface UserInfoViewController ()

@property (strong, nonatomic) id<UserInfoViewModelProtocol> viewModel;
@property (strong, nonatomic) UserInfoTableViewController *tableViewController;
@property (strong, nonatomic) User *user;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *phoneLabel;
@property (weak, nonatomic) IBOutlet UILabel *emailLabel;
@property (weak, nonatomic) IBOutlet UILabel *websiteLabel;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation UserInfoViewController

- (instancetype) initWithUser:(User *)user viewModel:(id<UserInfoViewModelProtocol>)viewModel {
    self = [super init];
    if (self) {
        _viewModel = viewModel;
        _viewModel.delegate = self;
        _user = user;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUserInfo];
    [self setupTableView];
    [self.viewModel getAlbumsForUserId:self.user.userId];
    self.title = @"User Info";
}

#pragma mark - Setup
- (void) setupTableView {
    self.tableViewController = [[UserInfoTableViewController alloc] init];
    self.tableViewController.delegate = self;
    self.tableView.dataSource = self.tableViewController;
    self.tableView.delegate = self.tableViewController;
}

- (void) setupUserInfo {
    self.nameLabel.text = self.user.name;
    self.phoneLabel.text = self.user.phone;
    self.emailLabel.text = self.user.email;
    self.websiteLabel.text = self.user.website;
    [self.imageView setImageWithURL:[NSURL URLWithString:@"https://placeimg.com/100/100/people"]];
}

#pragma mark - UserInfoTableViewDelegate
- (void) didSelectAlbum:(UserAlbum *)album {
    [[NavigationManager sharedManager] navigateToPhotoAlbum:album];
}

#pragma mark - UserInfoViewControllerProtocol
- (void) viewModelDidGetUserAlbums: (NSArray *)array {
    self.tableViewController.userAlbums = array;
    [self.tableView reloadData];
}

- (void) viewModelDidFailToGetUserAlbum: (NSError *) error {
    
}

@end
