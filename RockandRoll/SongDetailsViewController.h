//
//  SongDetailsViewController.h
//  RockandRoll
//
//  Created by Priya Mishra on 17/03/16.
//  Copyright © 2016 Priya Mishra. All rights reserved.

//The view controller which shows details about the selected song

#import <UIKit/UIKit.h>
#import "DetailView.h"
#import "SongModel.h"

@interface SongDetailsViewController : UIViewController
{
    DetailView *objDetails;
}

@property (weak, nonatomic) IBOutlet UIView *baseView;



-(void)setDetails:(id)objData;

@end
