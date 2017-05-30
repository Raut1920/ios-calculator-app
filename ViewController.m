//
//  ViewController.m
//  rahul
//
//  Created by rahul raut on 5/15/17.
//  Copyright (c) 2017 rahul raut. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clearPressed:(id)sender {
}

- (IBAction)addPressed:(id)sender {
    add= TRUE;
}

- (IBAction)minusPressed:(id)sender {
    add= FALSE;
}

- (IBAction)equalsPressed:(id)sender {
    if(add==false){
    int outputNum = [firstEntry intValue] - [secondEntry intValue]
        _lableOutput.text = [NSString stringWithFormat:@"%i",outputNum ]
    }
    else{
     int outputNum = [firstEntry intValue] + [secondEntry intValue]
        _lableOutput.text = [NSString stringWithFormat:@"%i",outputNum ]
    }
    operatorPressed = FALSE;
    firstEntry = NULL;
    secondEntry = NULL;
}

-(IBAction)numberPressed:(UIButton*)sender{
   long int tag = sender.tag;
    
    if(operatorPressed==false)
    {
        if(firstEntry == NULL){
        firstEntry = [NSString stringWithFormat:@"%li",tag];
        _lableOutput.text = firstEntry;
        }
        else{
     firstEntry = [NSString stringWithFormat:@"%@%li",firstEntry,tag];
        }
    }
else{
    if(secondEntry == NULL){
        secondEntry = [NSString stringWithFormat:@"%li",tag];
    _lableOutput.text = secondEntry;
}
else{
    secondEntry = [NSString stringWithFormat:@"%@%li",secondEntry,tag];
_lableOutput.text = secondEntry;
    
}
}
    }
@end
