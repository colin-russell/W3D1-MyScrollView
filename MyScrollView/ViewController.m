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
@property (nonatomic, strong) MyScrollView *scrollView;
@property (nonatomic) NSMutableArray *maxXArray;
@property (nonatomic) NSMutableArray *maxYArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.maxXArray = [NSMutableArray new];
    self.maxXArray = [NSMutableArray new];
    self.scrollView = [MyScrollView new];
    self.scrollView.frame = self.view.frame;
    [self.view addSubview:self.scrollView];
    [self setupColorViews];
    [self computeContentSize];
}

- (void)setupColorViews {
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
//    self.maxXArray addObject:
//    redView.bounds.origin.x
    [self.scrollView addSubview:redView];
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    greenView.backgroundColor = [UIColor greenColor];
    [self.scrollView addSubview:greenView];
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    blueView.backgroundColor = [UIColor blueColor];
    [self.scrollView addSubview:blueView];
    UIView *yellowView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 160)];
    yellowView.backgroundColor = [UIColor yellowColor];
    [self.scrollView addSubview:yellowView];
    
    
}

- (void)computeContentSize {
    CGSize contentSize = CGSizeMake(280, 200);
    
    self.scrollView.contentSize = contentSize;
    
}

@end
