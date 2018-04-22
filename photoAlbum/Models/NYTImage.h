//
//  NYTImage.h
//  photoAlbum
//
//  Created by Andres Aguilar on 4/22/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <NYTPhotoViewer/NYTPhoto.h>

@interface NYTImage : NSObject<NYTPhoto>

@property (strong, nonatomic) UIImage *image;
@property (strong, nonatomic) UIImage *placeholderImage;
@property (strong, nonatomic) NSData *imageData;

@property (strong, nonatomic) NSAttributedString *attributedCaptionTitle;
@property (strong, nonatomic) NSAttributedString *attributedCaptionSummary;
@property (strong, nonatomic) NSAttributedString *attributedCaptionCredit;

@end
