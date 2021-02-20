//
//  SCTabBarController.m
//  iOS-项目框架搭建
//
//  Created by Evan Yang on 2021/2/18.
//

#import "SCTabBarController.h"
#import "SCNavigationController.h"
#import "HomeViewController.h"
#import "MySettingViewController.h"

@interface SCTabBarController ()

@end

@implementation SCTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self addSubNavigiationController];
}

- (void)addSubNavigiationController{
    [self addChildControllerWithClass:[HomeViewController class] itemTitle:@"首页" itemImageName:@"tabbar_home" selectedItemImageName:@"tabbar_home_selected"];
    
    [self addChildControllerWithClass:[HomeViewController class] itemTitle:@"日历" itemImageName:@"tabbar_message_center" selectedItemImageName:@"tabbar_message_center_selected"];
    
    [self addChildControllerWithClass:[HomeViewController class] itemTitle:@"发现" itemImageName:@"tabbar_discover" selectedItemImageName:@"tabbar_discover_selected"];
    
    [self addChildControllerWithClass:[MySettingViewController class] itemTitle:@"设置" itemImageName:@"tabbar_profile" selectedItemImageName:@"tabbar_profile_selected"];
}

-(void)addChildControllerWithClass:(Class)class itemTitle:(NSString *)itemTitle itemImageName:(NSString *)itemImageName selectedItemImageName:(NSString *)selectedImageName{
    UIViewController *vc = [[class alloc]init];
    vc.title = itemTitle;
    vc.tabBarItem.image = [UIImage imageNamed:itemImageName];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImageName];
    SCNavigationController *nav = [[SCNavigationController alloc]initWithRootViewController:vc];
    [self addChildViewController:nav];
}


@end
