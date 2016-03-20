//
//  ViewController.m
//  RockandRoll
//
//  Created by Priya Mishra on 17/03/16.
//  Copyright © 2016 Priya Mishra. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    objDBHandler = [[DBHandler alloc]init];
    [objDBHandler fetchData];
    arrSongs = [NSMutableArray arrayWithArray:objDBHandler.arraySongData];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma TableView Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [arrSongs count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"tblCellId";
    
    TableViewCell *cell = (TableViewCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    SongModel * objModel = (SongModel *)[arrSongs objectAtIndex:indexPath.row];
    cell.lblSongTitle.text = [NSString stringWithFormat:@"%@",objModel.songTitle];
    cell.lblBandTitle.text = [NSString stringWithFormat:@"%@",objModel.bandTitle];
    

    [cell.imgSong setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@",objModel.imgSong]]];
    cell.tag = indexPath.row;
    
    return cell;

}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
     NSIndexPath *indexPath = [self.tblSongList indexPathForSelectedRow];
    if ([segue.identifier isEqualToString:@"showDetail"]) {
        
        
        [segue.destinationViewController setDetails:[arrSongs objectAtIndex:indexPath.row]];
        
    }
}






@end
