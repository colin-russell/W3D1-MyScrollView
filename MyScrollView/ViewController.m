//
//  ViewController.m
//  MyScrollView
//
//  Created by Colin on 2018-04-23.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()
@property (nonatomic) UIView *myView;
@property (nonatomic, weak) MyScrollView *scrollView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.myView = [[UIView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:self.myView];
    [self setupColorViews];
    
}

- (void)setupColorViews {
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    [self.myView addSubview:redView];
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    greenView.backgroundColor = [UIColor greenColor];
    [self.myView addSubview:greenView];
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    blueView.backgroundColor = [UIColor blueColor];
    [self.myView addSubview:blueView];
    UIView *yellowView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 160)];
    yellowView.backgroundColor = [UIColor yellowColor];
    [self.myView addSubview:yellowView];
}

- (void)viewDidAppear:(BOOL)animated {
    CGRect frame = self.view.bounds;
    frame.origin.y += 100;
    self.myView.bounds = frame;
}


@end
