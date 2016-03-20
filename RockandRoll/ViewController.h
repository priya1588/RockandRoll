//
//  ViewController.h
//  RockandRoll
//
//  Created by Priya Mishra on 17/03/16.
//  Copyright © 2016 Priya Mishra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewCell.h"
#import "SongDetailsViewController.h"
#import "DBHandler.h"
#import "SongModel.h"

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
{
    
    SongDetailsViewController *objDetail;
    DBHandler*objDBHandler;
    NSMutableArray *arrSongs;
}
@property (weak, nonatomic) IBOutlet UITableView *tblSongList;


@end

