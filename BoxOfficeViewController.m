//
//  BoxOfficeViewController.m
//  RottenTomatoesClient
//
//  Created by Ashish Nagavaram on 6/4/14.
//  Copyright (c) 2014 personal. All rights reserved.
//

#import "BoxOfficeViewController.h"
#import "RottenTomatoesClient.h"

@interface BoxOfficeViewController ()

@end

@implementation BoxOfficeViewController

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
    RottenTomatoesClient *client = [[RottenTomatoesClient alloc] init];
    client.returnBoxofficeMovies;
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
