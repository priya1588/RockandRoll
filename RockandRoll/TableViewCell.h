//
//  TableViewCell.h
//  RockandRoll
//
//  Created by Priya Mishra on 17/03/16.
//  Copyright © 2016 Priya Mishra. All rights reserved.


//This is owner of custom cell

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *lblSongTitle;
@property (weak, nonatomic) IBOutlet UIImageView *imgSong;
@property (weak, nonatomic) IBOutlet UILabel *lblBandTitle;

@end
