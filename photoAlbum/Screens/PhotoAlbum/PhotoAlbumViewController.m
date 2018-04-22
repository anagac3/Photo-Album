//
//  PhotoAlbumViewController.m
//  photoAlbum
//
//  Created by Andres Aguilar on 4/21/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import "PhotoAlbumViewController.h"
#import "PhotoAlbumCollectionViewController.h"
#import "NavigationManager.h"

@interface PhotoAlbumViewController ()

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (weak, nonatomic) IBOutlet UICollectionViewFlowLayout* layout;
@property (weak, nonatomic) IBOutlet UILabel *noContentLabel;

@property (strong, nonatomic) UserAlbum *userAlbum;
@property (strong, nonatomic) id<PhotoAlbumViewModelProtocol> viewModel;
@property (strong, nonatomic) PhotoAlbumCollectionViewController *collectionViewController;

@end

@implementation PhotoAlbumViewController

- (instancetype) initWithAlbum:(UserAlbum *)userAlbum viewModel:(id<PhotoAlbumViewModelProtocol>)viewModel {
    self = [super init];
    if (self) {
        _userAlbum = userAlbum;
        _viewModel = viewModel;
        _viewModel.delegate = self;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = self.userAlbum.title;
    self.noContentLabel.hidden = YES;
    
    [self.viewModel getPhotosForAlbumId:self.userAlbum.albumId];
    [self setupCollectionView];
}

- (void) setupCollectionView {
    self.collectionViewController = [[PhotoAlbumCollectionViewController alloc] initWithCollectionView:self.collectionView];
    self.collectionViewController.delegate = self;
    //To allow dynamically sized cells
    self.layout.estimatedItemSize = CGSizeMake(1.f, 1.f);
    
    self.collectionView.delegate = self.collectionViewController;
    self.collectionView.dataSource = self.collectionViewController;
}

#pragma mark - PhotoAlbumViewModelProtocol
- (void) viewModelDidGetPhotos:(NSArray *)photos {
    
    self.noContentLabel.hidden = (photos.count == 0) ? NO : YES;
    
    self.collectionViewController.photoArray = photos;
    [self.collectionView reloadData];
}

- (void) viewModelGetPhotosDidFailWithError:(NSError *)error {
    
}

#pragma mark - PhotoAlbumServiceProtocol
- (void) didSelectPhoto:(Photo *)photo image:(UIImage *)image {
    [[NavigationManager sharedManager] navigateToPhotoDetail:image];
}

@end
