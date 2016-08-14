//
//  SearchVC.m
//  IosRecipeApp2
//
//  Created by indianic on 21/07/16.
//  Copyright © 2016 indianic. All rights reserved.
//

#import "SearchVC.h"
#import "AppDelegate.h"

@interface SearchVC ()

@end

@implementation SearchVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //navigation bar methods
    self.navigationController.navigationBar.titleTextAttributes = @{NSFontAttributeName: [UIFont fontWithName:@"Cochin-Italic" size:21], NSForegroundColorAttributeName: [UIColor whiteColor]};


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


#pragma mark- searchvc buttons on clicked methods

- (IBAction)btnByAllRecipes:(UIButton *)sender {
    
    SearchVCTableViewController *objsVc = [self.storyboard instantiateViewControllerWithIdentifier:@"SearchVCTableViewController"];
    objsVc.strNavTitle = @"Recipes";
    [self.navigationController pushViewController:objsVc animated:true];
}

- (IBAction)btnSearchByIngredients:(UIButton *)sender {
    
    SearchByIngredientsViewController *searchVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SearchByIngredientsViewController"];
    
    [self.navigationController pushViewController:searchVC animated:true];

}

- (IBAction)btnSearchByCategories:(UIButton *)sender {
    
    //instantiating categories view controller on button click
    
    CategoriesVC *objCategoriesVc = [self.storyboard instantiateViewControllerWithIdentifier:@"CategoriesVC"];
    objCategoriesVc.isBackOn = @"Yes";
    [self.navigationController pushViewController:objCategoriesVc animated:true];
    
}

- (IBAction)btnSearchByRegion:(UIButton *)sender {

    RegionVC *objRegionVc = [self.storyboard instantiateViewControllerWithIdentifier:@"RegionVC"];
   [self.navigationController pushViewController:objRegionVc animated:true];

}
- (IBAction)btnSearchByFavourites:(UIButton *)sender {
    
    // this had been changed to my recipes
    
    SearchVCTableViewController *objsVc = [self.storyboard instantiateViewControllerWithIdentifier:@"SearchVCTableViewController"];
    objsVc.recipeType = 4;
    objsVc.strRecipeFrom =[AppDelegate sharedInstance].userId;
    NSLog(@"id %@",[AppDelegate sharedInstance].userId);
    objsVc.strNavTitle = @"My Recipes";
    [self.navigationController pushViewController:objsVc animated:true];

    
}


#pragma mark - bar button tapped methods

- (IBAction)onDrawer:(UIBarButtonItem *)sender
{
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideRight animated:YES completion:nil];
}

@end
