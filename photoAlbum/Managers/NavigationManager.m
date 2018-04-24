//
//  NavigationManager.m
//  photoAlbum
//
//  Created by Andres Aguilar on 4/1/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import "NavigationManager.h"

#import "PeopleListService.h"
#import "PeopleListViewModel.h"
#import "PeopleListViewController.h"

#import "UserInfoViewController.h"
#import "UserInfoViewModel.h"
#import "UserInfoService.h"

#import "PhotoAlbumViewController.h"
#import "PhotoAlbumViewModel.h"
#import "PhotoService.h"

#import <NYTPhotoViewer/NYTPhotosViewController.h>
#import <NYTPhotoViewer/NYTPhotoViewerArrayDataSource.h>
#import "NYTImage.h"

#import "User.h"
#import "UserAlbum.h"

@interface NavigationManager()

@property (strong, nonatomic) UINavigationController *navController;

@end

@implementation NavigationManager

+ (NavigationManager *) sharedManager {
    static NavigationManager *sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedManager = [[NavigationManager alloc] init];
    });
    return sharedManager;
}

- (UINavigationController *) createRootNavController {
    
    PeopleListService *service = [[PeopleListService alloc] init];
    PeopleListViewModel *modelView = [[PeopleListViewModel alloc] initWithService:service];
    PeopleListViewController *peopleListVC = [[PeopleListViewController alloc] initWithViewModel:modelView];
    
    self.navController = [[UINavigationController alloc] initWithRootViewController:peopleListVC];
    
    return self.navController;
}

- (void) navigateToUserInfo: (User *)user {
    UserInfoService *networkService = [[UserInfoService alloc] init];
    UserInfoViewModel *viewModel = [[UserInfoViewModel alloc] initWithService:networkService];
    UserInfoViewController *userInfoVC = [[UserInfoViewController alloc] initWithUser:user viewModel:viewModel];
    
    [self.navController pushViewController:userInfoVC animated:YES];
}

- (void) navigateToPhotoAlbum:(UserAlbum *)album {
    
    PhotoService *photoService = [[PhotoService alloc] init];
    PhotoAlbumViewModel *viewModel = [[PhotoAlbumViewModel alloc] initWithService:photoService];
    PhotoAlbumViewController *viewController = [[PhotoAlbumViewController alloc] initWithAlbum:album viewModel:viewModel];
    
    [self.navController pushViewController:viewController animated:YES];
}

- (void) navigateToPhotoDetail: (UIImage*)image {
    NYTImage *nytImage = [NYTImage new];
    nytImage.image = image;
    
    NYTPhotoViewerArrayDataSource* dataSource = [[NYTPhotoViewerArrayDataSource alloc] initWithPhotos:@[nytImage]];
    NYTPhotosViewController *viewController = [[NYTPhotosViewController alloc] initWithDataSource:dataSource initialPhoto:nytImage delegate:nil];
    [self.navController.topViewController presentViewController:viewController animated:YES completion:nil];
}

@end
