//
//  TestCollectionViewController.m
//  AutosizeTest
//
//  Created by Juraj Antas on 8/11/15.
//  Copyright © 2015 antas.sk. All rights reserved.
//

#import "TestCollectionViewController.h"

@interface TestCollectionViewController ()
@property (strong, nonatomic) NSArray* items;
@end

@implementation TestCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //sample data
    self.items = [@"Before going further, you should know that self-sizing cells are supported starting from iOS8. If you have to implement something similar in the previous iOS versions, you have to calculate the cells sizes and set their frame in your own UICollectionViewFlowLayout subclass. The cells have fixed width and automatically resize their height to fit the content. Open XCode and create a Single View Application. Delete the default view controller from the Main.storyboard, as well as the ViewController.h and ViewController.m files from the project file tree. We will replace them with a custom collection view controller. Before going further, you should know that self-sizing cells are supported starting from iOS8. If you have to implement something similar in the previous iOS versions, you have to calculate the cells sizes and set their frame in your own UICollectionViewFlowLayout subclass. The cells have fixed width and automatically resize their height to fit the content. Open XCode and create a Single View Application. Delete the default view controller from the Main.storyboard, as well as the ViewController.h and ViewController.m files from the project file tree. We will replace them with a custom collection view controller. Long string test:Before going further, you should know that self-sizing cells are supported starting from iOS8. If you have to implement something similar in the previous iOS versions, you have to calculate the cells sizes and set their frame in your own UICollectionViewFlowLayout subclass. The cells have fixed width and automatically resize their height to fit the content. Open XCode and create a Single View Application. Delete the default view controller from the Main.storyboard, as well as the ViewController.h and ViewController.m files from the project file tree. We will replace them with a custom collection view controller. Long string test:Before going further, you should know that self-sizing cells are supported starting from iOS8. If you have to implement something similar in the previous iOS versions, you have to calculate the cells sizes and set their frame in your own UICollectionViewFlowLayout subclass. The cells have fixed width and automatically resize their height to fit the content. Open XCode and create a Single View Application. Delete the default view controller from the Main.storyboard, as well as the ViewController.h and ViewController.m files from the project file tree. We will replace them with a custom collection view controller. Long string test:Long string test:  -BEGIN-LongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongString-  LongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongString-  LongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongStringLongString-END" componentsSeparatedByString:@" "];
    
    UICollectionViewFlowLayout* flow = (UICollectionViewFlowLayout*) self.collectionView.collectionViewLayout;
    flow.estimatedItemSize = CGSizeMake(1, 1);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    [self.collectionView invalidateIntrinsicContentSize];
}
#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.items count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    UILabel* label = (UILabel*)[cell viewWithTag:3456];
    label.text = [self.items objectAtIndex:[indexPath row]];
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
