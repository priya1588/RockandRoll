//
//  TableViewCell.m
//  RockandRoll
//
//  Created by Priya Mishra on 17/03/16.
//  Copyright © 2016 Priya Mishra. All rights reserved.
//

#import "TableViewCell.h"


@implementation TableViewCell
@synthesize lblBandTitle,lblSongTitle,imageView;

- (void)awakeFromNib {
    // Initialization code
    self.imgSong.layer.masksToBounds = YES;
    self.imgSong.layer.cornerRadius = 4.0;

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
}

@end
