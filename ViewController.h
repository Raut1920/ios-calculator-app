//
//  ViewController.h
//  rahul
//
//  Created by rahul raut on 5/29/17.
//  Copyright (c) 2017 rahul raut. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{

    BOOL operatorPressed;
    char op;
    NSString *firstEntry;
    NSString *secondEntry;
    
}

@property (strong, nonatomic) IBOutlet UILabel *lableOutput;

- (IBAction)clearPressed:(id)sender;

- (IBAction)addPressed:(id)sender;

- (IBAction)minusPressed:(id)sender;

- (IBAction)equalsPressed:(id)sender;

-(IBAction)numberPressed:(UIButton*)sender;

@end

