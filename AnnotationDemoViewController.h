//
//  AnnotationDemoViewController.h
//  BigNerdDemo
//
//  Created by Tanmay Khandelwal on 19/12/13.
//  Copyright (c) 2013 Aashish Dhawan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface AnnotationDemoViewController : UIViewController<MKMapViewDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@end


