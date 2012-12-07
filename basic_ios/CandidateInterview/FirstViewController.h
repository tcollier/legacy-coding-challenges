//
//  FirstViewController.h
//  CandidateInterview
//
//  Created by Tom Collier on 10/31/12.
//  Copyright (c) 2012 www.tommymaxhanks.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, retain) UILabel *welcomeLabel;
@property (nonatomic, retain) UIButton *pushBtn;
@property (nonatomic, retain) UITableView *tableView;
@end
