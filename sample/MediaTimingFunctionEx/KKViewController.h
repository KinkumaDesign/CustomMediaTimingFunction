//
//  KKViewController.h
//  MediaTimingFunctionEx
//
//  Created by Maeda Tasuku on 12/26/12.
//  Copyright (c) 2012 KinkumaDesign. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KKViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, weak) IBOutlet UITableView *curveTypeTables;
@end
