//
//  PeopleListTableViewDataSource.m
//  photoAlbum
//
//  Created by Andres Aguilar on 4/1/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import "PeopleListTableViewController.h"
#import "PeopleListTableViewDelegate.h"
#import "User.h"

static NSString* const kCellIdentifier = @"peopleListCell";

@implementation PeopleListTableViewController

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.peopleArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:kCellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kCellIdentifier];
    }
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    User* user = self.peopleArray[indexPath.row];
    cell.textLabel.text = user.name;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    User *user = self.peopleArray[indexPath.row];
    if ([self.delegate respondsToSelector:@selector(didSelectUser:)]) {
        [self.delegate didSelectUser:user];
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
