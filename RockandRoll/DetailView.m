//
//  DetailView.m
//  RockandRoll
//
//  Created by Priya Mishra on 17/03/16.
//  Copyright © 2016 Priya Mishra. All rights reserved.
//

#import "DetailView.h"


@implementation DetailView

@synthesize lblTitle,lblBandName,imgSongIcon,txtSongDetail;
- (id)init
{

self = [super init];
if (self) {
   
   

    
    
    self=[[[NSBundle mainBundle] loadNibNamed:@"DetailView" owner:self options:nil] objectAtIndex:0];
    self.txtSongDetail.layer.masksToBounds = YES;
    self.txtSongDetail.layer.cornerRadius = 8.0;
    self.imgSongIcon.layer.masksToBounds = YES;
    self.imgSongIcon.layer.cornerRadius = 4.0;
    
}
return self;
}

@end
