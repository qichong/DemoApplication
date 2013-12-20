//
//  AnnotationDemoViewController.m
//  BigNerdDemo
//
//  Created by Tanmay Khandelwal on 19/12/13.
//  Copyright (c) 2013 Aashish Dhawan. All rights reserved.
//

#import "AnnotationDemoViewController.h"

@interface AnnotationDemoViewController ()

@end

@implementation AnnotationDemoViewController


-(NSString * )title{
    return @"Location Demo";
}

-(void)setMapView:(MKMapView *)mapView{
    _mapView = mapView;
    _mapView.showsUserLocation = YES;
    _mapView.delegate = self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}
-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation{
    CLLocationCoordinate2D location = [userLocation  coordinate];
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(location, 500, 500);
    [mapView setRegion:region animated:YES];
}
@end
