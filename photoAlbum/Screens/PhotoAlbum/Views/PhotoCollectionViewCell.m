//
//  PhotoCollectionViewCell.m
//  photoAlbum
//
//  Created by Andres Aguilar on 4/21/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import "PhotoCollectionViewCell.h"

@interface PhotoCollectionViewCell()

@property (strong, nonatomic) NSLayoutConstraint *cellWidthConstraint;

@end

@implementation PhotoCollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.cellWidthConstraint = [self.contentView.widthAnchor constraintEqualToConstant:0.0f];
}

- (void) setCellWidth: (CGFloat) width {
    self.cellWidthConstraint.constant = width;
    self.cellWidthConstraint.active = YES;
}

@end
