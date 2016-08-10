//
//  SongModel.h
//  RockandRoll
//
//  Created by Priya Mishra on 18/03/16.
//  Copyright © 2016 Priya Mishra. All rights reserved.

//This class stores the data fetched from database

#import <Foundation/Foundation.h>

@interface SongModel : NSObject

@property(nonatomic,strong)NSString* songTitle;
@property(nonatomic,strong)NSString* bandTitle;
@property(nonatomic,strong)NSString* imgSong;
@property(nonatomic,strong)NSString* songDetail;

//
@end
