//
//  FirstViewController.m
//  CandidateInterview
//
//  Created by Tom Collier on 10/31/12.
//  Copyright (c) 2012 www.tommymaxhanks.com. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize welcomeLabel = _welcomeLabel;
@synthesize pushBtn = _pushBtn;
@synthesize tableView = _tableView;

- (void) loadView {
    self.view = [[UIView alloc] init];

    self.view.backgroundColor = [UIColor whiteColor];
    
    CGRect frame = CGRectMake(20, 20, 280, 22);
    self.welcomeLabel = [[UILabel alloc] initWithFrame:frame];
    self.welcomeLabel.text = @"Welcome to My Test";
    
    [self.view addSubview:self.welcomeLabel];
    
    frame = CGRectMake(120, 60, 60, 44);
    
    self.pushBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.pushBtn.frame = frame;
    [self.pushBtn setTitle:@"Push" forState:UIControlStateNormal];
    
    [self.view addSubview:self.pushBtn];
    
    frame = CGRectMake(20, 130, 280, 300);
    
    self.tableView = [[UITableView alloc] initWithFrame:frame style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    [self.view addSubview:self.tableView];
    
    [self setView:self.view];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    
}


- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"CellIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"Sample Row %i", indexPath.row+1];

return cell;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"Sample Data";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) dealloc {
    [self.welcomeLabel release];
    [self.tableView release];
    
    [super dealloc];
}

@end
