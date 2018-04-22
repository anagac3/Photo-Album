//
//  PhotoAlbumCollectionViewController.m
//  photoAlbum
//
//  Created by Andres Aguilar on 4/21/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import "PhotoAlbumCollectionViewController.h"
#import "PhotoCollectionViewCell.h"
#import "Photo.h"
#import "UIImageView+AFNetworking.h"

NSString* const PHOTO_CELL_IDENTIFIER = @"PhotoCell";

@interface PhotoAlbumCollectionViewController()

@property (assign, nonatomic) CGFloat cellWidth;

@end

@implementation PhotoAlbumCollectionViewController

- (instancetype) initWithCollectionView:(UICollectionView *)collectionView {
    self = [super init];
    if (self) {
        //We just need the collection view to register the cell's identifier
        [collectionView registerNib:[UINib nibWithNibName:@"PhotoCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:PHOTO_CELL_IDENTIFIER];
        
        [self calculateCellSize];
    }
    return self;
}

- (void) calculateCellSize {
    
    //If we are on iPad, set the cell to 300px
  /*  if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        self.cellWidth = 300.0f;
        return;
    }*/
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    //10 on each margin
    screenWidth -= 20;
    //On iphone we want two cells per row, -5 per cell for spacing
    CGFloat cellWidth = (screenWidth/2) - 5;
    self.cellWidth = floor(cellWidth);
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.photoArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    PhotoCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:PHOTO_CELL_IDENTIFIER forIndexPath:indexPath];
    [cell setCellWidth:self.cellWidth];
    Photo *photo = self.photoArray[indexPath.row];
    [cell.imageView setImageWithURL:[NSURL URLWithString:photo.url]];
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    PhotoCollectionViewCell *cell = (PhotoCollectionViewCell *)[collectionView cellForItemAtIndexPath:indexPath];
    Photo *photo = self.photoArray[indexPath.row];
    [self.delegate didSelectPhoto:photo image:cell.imageView.image];
}
@end
