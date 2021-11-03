//
//  ViewController.m
//  SivaSample
//
//  Created by sivakumar on 01/11/21.
//

#import "ViewController.h"
#include <stdio.h>
#import <SivaSample-Swift.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIImageView * image = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    
    image.image = [UIImage imageNamed:@"homeImg"];
    
    [self.view addSubview:image];
    
    [self writConsoleLog];
    [self otherViewControlerNavigated];
}

-(void)otherViewControlerNavigated{
    
    UIStoryboard * storyBoard  = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    OtherViewController* otherView  = [storyBoard instantiateViewControllerWithIdentifier:@"OtherViewController"];
    
    otherView.modalPresentationStyle = UIModalPresentationFullScreen;
    
    [self presentViewController:otherView animated:YES completion:nil];
        
}

-(void)writConsoleLog{
    
    NSError * error;
    NSString* path  = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).lastObject;
    NSString* pathName = [path stringByAppendingPathComponent:@"/siva.txt"];
    
    if(![[NSFileManager defaultManager] fileExistsAtPath:pathName]){
        [[NSFileManager defaultManager] createDirectoryAtPath:pathName withIntermediateDirectories:NO attributes:nil error:&error];
    }
        
    freopen([pathName cStringUsingEncoding:NSASCIIStringEncoding], "a+", stderr);
    
}

-(void)plistForStoreValue{
    
    
}

@end
