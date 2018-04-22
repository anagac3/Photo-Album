//
//  PhotoAlbumCollectionViewController.h
//  photoAlbum
//
//  Created by Andres Aguilar on 4/21/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PhotoAlbumCollectionViewDelegate.h"

@interface PhotoAlbumCollectionViewController : NSObject<UICollectionViewDelegate, UICollectionViewDataSource>

- (instancetype)initWithCollectionView:(UICollectionView*) collectionView;

@property (strong, nonatomic) NSArray *photoArray;
@property (weak, nonatomic) id<PhotoAlbumCollectionViewDelegate>delegate;

@end
