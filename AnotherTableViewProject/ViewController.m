//
//  ViewController.m
//  AnotherTableViewProject
//
//  Created by lab on 9/19/18.
//  Copyright © 2018 digicon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

NSArray *cricketerNames;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    cricketerNames =[NSArray arrayWithObjects:@"Mashrafe Bin Mortuza",@"Mushfiqur Rahim",@"Mahmudullah Riyad",@"Sakib Al Hasan",@"Mustafizur Rahman",@"Rubel Hossain",@"Najmul Hossain Apu",@"Mehedi Miraj", nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [cricketerNames count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *names = @"CricketerNames";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:names];
    
    if(cell == nil){
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:names];
        
    }
    
    cell.textLabel.text = [cricketerNames objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:@"Bangladesh_Map"];
    
    return cell;
}


@end
