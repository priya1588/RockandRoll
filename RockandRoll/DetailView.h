//
//  DetailView.h
//  RockandRoll
//
//  Created by Priya Mishra on 17/03/16.
//  Copyright © 2016 Priya Mishra. All rights reserved.

//This is owner of custom view which is used in SongDetailsViewController to display song details

#import <UIKit/UIKit.h>


@interface DetailView : UIView
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;
@property (weak, nonatomic) IBOutlet UILabel *lblBandName;
@property (weak, nonatomic) IBOutlet UITextView *txtSongDetail;
@property (weak, nonatomic) IBOutlet UIImageView *imgSongIcon;

- (id)init;

@end
