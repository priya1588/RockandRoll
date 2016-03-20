//
//  DBHandler.m
//  RockandRoll
//
//  Created by Priya Mishra on 18/03/16.
//  Copyright © 2016 Priya Mishra. All rights reserved.
//

#import "DBHandler.h"

@implementation DBHandler
SongModel *modelObj;
@synthesize arraySongData;


-(id)init
{
    self = [super init];
    if (self) {
        
        arraySongData = [[NSMutableArray alloc]init];
        [self initDB];
    }
    return self;
}

/* This method initializes database */

-(void)initDB
{
    NSFileManager *fmngr = [[NSFileManager alloc] init];
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"SongsDB" ofType:@"sqlite"];
    NSError *error;
    NSString *docsDir;
    NSArray *dirPaths;
    static BOOL success;
    
    dirPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    docsDir = [dirPaths objectAtIndex:0];
    _databasePath = [[NSString alloc]initWithString:[docsDir stringByAppendingString:@"/Priya"]];
    NSArray *listOfFiles = [fmngr contentsOfDirectoryAtPath:_databasePath error:nil];
    if ([listOfFiles count]> 0 || ( success == YES)) {
        
        
    }
    else
    {
        [fmngr copyItemAtPath:filePath toPath:_databasePath
                        error:&error];
        success = TRUE;
    }
    
}

/* This method posts query to fetch song related data from SongList database */

-(void)fetchData
{
    const char *dbpath = [_databasePath UTF8String];
    sqlite3_stmt *statement;
    
    if (sqlite3_open(dbpath, &_database) == SQLITE_OK)
    {
        NSString *querySQL = [NSString stringWithFormat:
                              @"select * from SongList"];
        
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(_database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            
            
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                modelObj =[[SongModel alloc]init];
                
                modelObj.songTitle= [[NSString alloc]initWithUTF8String:(const char *) sqlite3_column_text(
                                                                                                       statement, 0)];
                modelObj.bandTitle = [[NSString alloc]
                                   initWithUTF8String:(const char *)
                                   sqlite3_column_text(statement, 1)];
               
                modelObj.imgSong = [[NSString alloc]
                                 initWithUTF8String:(const char *)
                                 sqlite3_column_text(statement, 2)];
                modelObj.songDetail = [[NSString alloc]
                                  initWithUTF8String:(const char *)
                                  sqlite3_column_text(statement, 3)];
              
                NSLog(@"Song title is..%@",modelObj.songTitle);
                NSLog(@"Band name is..%@",modelObj.bandTitle);
                NSLog(@"Image is..%@",modelObj.imgSong);
                NSLog(@"Detail is..%@",modelObj.songDetail);
               
                [arraySongData addObject:modelObj];
                
                
            }
            sqlite3_finalize(statement);
        }
        sqlite3_close(_database);
    }
}

@end