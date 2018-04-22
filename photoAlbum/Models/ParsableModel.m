//
//  ParsableModel.m
//  photoAlbum
//
//  Created by Andres Aguilar on 4/21/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import "ParsableModel.h"

@implementation ParsableModel

- (instancetype) initWithDictionary:(NSDictionary *)dictionary {
    
    self = [super init];
    if (self) {
        [self parseDictionary: dictionary];
    }
    return self;
}

- (void) parseDictionary: (NSDictionary *) dictionary {
    @throw [NSException exceptionWithName:NSInternalInconsistencyException
                        reason:[NSString stringWithFormat:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)]
                        userInfo:nil];
}

@end
