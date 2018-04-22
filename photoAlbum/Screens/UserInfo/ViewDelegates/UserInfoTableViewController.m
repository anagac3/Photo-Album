//
//  UIUserInfoTableViewController.m
//  photoAlbum
//
//  Created by Andres Aguilar on 4/1/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import "UserInfoTableViewController.h"
#import "UserAlbum.h"

NSString* const USER_ALBUM_CELL_IDENTIFIER = @"UserAlbum";

@implementation UserInfoTableViewController

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.userAlbums.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:USER_ALBUM_CELL_IDENTIFIER];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:USER_ALBUM_CELL_IDENTIFIER];
    }
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    UserAlbum *album = self.userAlbums[indexPath.row];
    cell.textLabel.text = album.title;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UserAlbum *album = self.userAlbums[indexPath.row];
    if ([self.delegate respondsToSelector:@selector(didSelectAlbum:)]) {
        [self.delegate didSelectAlbum:album];
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"Photo Albums";
}

@end
