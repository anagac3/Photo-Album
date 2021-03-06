//
//  PhotoAlbumViewController.h
//  photoAlbum
//
//  Created by Andres Aguilar on 4/21/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PhotoAlbumViewControllerProtocol.h"
#import "PhotoAlbumCollectionViewDelegate.h"

@protocol PhotoAlbumViewModelProtocol;

@class Photo;
@class UserAlbum;

@interface PhotoAlbumViewController : UIViewController<PhotoAlbumViewControllerProtocol, PhotoAlbumCollectionViewDelegate>

- (instancetype) initWithAlbum:(UserAlbum *)userAlbum viewModel:(id<PhotoAlbumViewModelProtocol>)viewModel;

//PhotoAlbumViewControllerProtocol
- (void) viewModelDidGetPhotos:(NSArray *)photos;
- (void) viewModelGetPhotosDidFailWithError:(NSError *)error;

//PhotoAlbumCollectionViewDelegate
- (void) didSelectPhoto:(Photo *)photo image:(UIImage *)image;

@end
