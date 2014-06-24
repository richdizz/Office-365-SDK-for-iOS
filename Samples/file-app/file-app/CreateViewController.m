//
//  CreateViewController.m
//  file-app
//
//  Created by Lagash on 6/24/14.
//  Copyright (c) 2014 microsoft. All rights reserved.
//

#import "CreateViewController.h"

@implementation CreateViewController

- (IBAction)CreateFile:(id)sender {
    [self CreateFile];
}

-(void)CreateFile{
    UIActivityIndicatorView* spinner = [[UIActivityIndicatorView alloc]initWithFrame:CGRectMake(135,140,50,50)];
    spinner.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
    [self.view addSubview:spinner];
    spinner.hidesWhenStopped = YES;
    
    [spinner startAnimating];
    
    OAuthentication* authentication = [OAuthentication alloc];
    [authentication setToken:self.token];
    
    FileClient* client = [[FileClient alloc] initWithUrl:@"https://lagashsystems365-my.sharepoint.com/personal/gustavoh_lagash_com" credentials: authentication];
    
    
    NSString* fileName = self.FileNameTxt.text;
    NSData* data =  [self.ContentText.text dataUsingEncoding:NSUTF8StringEncoding];

    NSURLSessionTask* task = [client createFile:fileName overwrite :true body:data folder:nil
                                       callback:^(NSData * data, NSURLResponse * response, NSError * error) {
                                           NSError* parseError = nil;
                                           
                                          //[client parseData : data];
                                           
                                           dispatch_async(dispatch_get_main_queue(), ^{
                                               //  [self.tableView reloadData];
                                               [spinner stopAnimating];
                                               [self.navigationController popViewControllerAnimated:YES];
                                           });
                                       }];
    
    [task resume];
}
@end
