//
//  PeopleListTableViewDataSource.m
//  photoAlbum
//
//  Created by Andres Aguilar on 4/1/18.
//  Copyright © 2018 Andres Aguilar. All rights reserved.
//

#import "PeopleListTableViewController.h"
#import "User.h"

NSString* const CELLIDENTIFIER = @"peopleListCell";

@implementation PeopleListTableViewController

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.peopleArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:CELLIDENTIFIER];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CELLIDENTIFIER];
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
