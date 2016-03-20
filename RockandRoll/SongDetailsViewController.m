//
//  SongDetailsViewController.m
//  RockandRoll
//
//  Created by Priya Mishra on 17/03/16.
//  Copyright © 2016 Priya Mishra. All rights reserved.
//

#import "SongDetailsViewController.h"

@interface SongDetailsViewController ()

@end



@implementation SongDetailsViewController
@synthesize baseView;



- (id)init {
    self = [super init];
    if (self) {
        
    }
    
    return self;
    


    }


-(void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background.png"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)setDetails:(id)objData

{
    objDetails = [[DetailView alloc]init];

    self.baseView.frame = CGRectMake(self.view.frame.size.width*0.1, self.view.frame.size.height*0.2, self.view.frame.size.width*0.8, self.view.frame.size.height*0.6);
    objDetails.frame  = CGRectMake(0, 0, self.baseView.frame.size.width, self.baseView.frame.size.height);
    objDetails.layer.masksToBounds = YES;
    objDetails.layer.cornerRadius = 8.0;
  
    SongModel * objModel = (SongModel *)objData;
    objDetails.lblTitle.text = [NSString stringWithFormat:@"%@",objModel.songTitle];
    objDetails.lblBandName.text = [NSString stringWithFormat:@"%@",objModel.bandTitle];
    
    objDetails.txtSongDetail.text = [NSString stringWithFormat:@"%@",objModel.songDetail];
    [objDetails.imgSongIcon setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@",objModel.imgSong]]];
    
    [self.baseView addSubview:objDetails];
    [self.view bringSubviewToFront:self.baseView];
    [self.baseView bringSubviewToFront:objDetails];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
