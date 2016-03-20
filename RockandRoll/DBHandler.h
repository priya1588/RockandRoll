//
//  DBHandler.h
//  RockandRoll
//
//  Created by Priya Mishra on 18/03/16.
//  Copyright © 2016 Priya Mishra. All rights reserved.

// This class handles database functionality.

#import <Foundation/Foundation.h>
#import <sqlite3.h>
#import "SongModel.h"

@interface DBHandler : NSObject
{
    NSMutableArray *arraySongData;
    
}

@property(nonatomic,strong)NSString *databasePath;
@property(nonatomic)sqlite3 *database;
@property(nonatomic,strong)NSMutableArray *arraySongData;
@property(nonatomic)sqlite3_stmt *statement;

-(void)initDB;
-(void)fetchData;

@end
