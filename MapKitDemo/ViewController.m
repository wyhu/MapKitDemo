//
//  ViewController.m
//  MapKitDemo
//
//  Created by huweiya on 16/4/14.
//  Copyright © 2016年 5i5j. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<MKMapViewDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 1. MKMapView的显示项
    // 1.1 设置地图的显示样式
    /*
     MKMapTypeStandard 标准
     MKMapTypeSatellite 卫星
     MKMapTypeHybrid 混合
     MKMapTypeSatelliteFlyover 3D卫星(10_11, 9_0),
     MKMapTypeHybridFlyover 3D混合(10_11, 9_0),
     */
    self.mapView.mapType = MKMapTypeStandard;
    
    // 1.2 显示地图上的指南针
    self.mapView.showsCompass = YES;
    
    // 1.3 显示地图上的建筑物
    self.mapView.showsBuildings = YES;
    
    // 1.4 显示地图上的POI点
    self.mapView.showsPointsOfInterest = YES;
    
    // 1.5 显示地图上的缩放比例
    self.mapView.showsScale = YES;
    
    // 1.6 显示地图上的交通
    self.mapView.showsTraffic = YES;
    
    // 1.7 显示用户当前位置
    // 1.7.1 在iOS8.0之后要请求用户授权
//    [self locationManager];
    // 1.7.2 显示用户当前位置(如果不设置追踪模式,地图不会自动放大)
    self.mapView.showsUserLocation = YES;
    // 1.7.3 设置用户的追踪模式
    self.mapView.userTrackingMode = MKUserTrackingModeFollowWithHeading;
    
    // 2. MKMapView的控制项
    // 2.1 地图滚动
    self.mapView.scrollEnabled = YES;
    
    // 2.2 地图缩放
    self.mapView.zoomEnabled = YES;
    
    // 2.3 地图旋转
    self.mapView.rotateEnabled = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
