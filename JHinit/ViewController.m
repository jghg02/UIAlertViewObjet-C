//
//  ViewController.m
//  JHinit
//
//  Created by Josue Hernandez Gonzalez on 10/8/16.
//  Copyright © 2016 Josue Hernandez Gonzalez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) NSString *yyy;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	
	self.first = [[First alloc] init];
	[self.first initObject];
	self.first.dato = @"Dato from ViewController!!!!";
	[self.first showMessageInTerminal:self.first.dato];
	
	[self.first setDato:@"The other way!!!!"];
	[_first showMessageInTerminal:[self.first dato]];
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
	
}

- (IBAction)onClickEvent:(id)sender {
	//create UIAlerController
	UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Question" message:@"Are you In!!!" preferredStyle:UIAlertControllerStyleAlert];

	
	//Very Importan
	__weak ViewController *weakSelf = self;
	
	//UIAlertActions
	UIAlertAction *yes = [UIAlertAction actionWithTitle:@"YES" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
		NSLog(@"YES");
		[weakSelf showResult:YES];
	}];
	
	UIAlertAction *no = [UIAlertAction actionWithTitle:@"NO" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
		NSLog(@"NO");
		[weakSelf showResult:NO];
	}];
	
	//Add action to UIAlertController
	[alert addAction:yes];
	[alert addAction:no];
	
	//Show alert
	[self presentViewController:alert animated:YES completion:nil];
	
}

-(void)showResult:(BOOL)result{
	
	NSString *message;
	UIAlertController *dialogMessage;
	
	if (result) {
		message = @"Good Job!!!!";
		dialogMessage = [UIAlertController alertControllerWithTitle:@"Result" message:message preferredStyle:UIAlertControllerStyleActionSheet];
	} else {
		message = @"Try Again!!!!";
		dialogMessage = [UIAlertController alertControllerWithTitle:@"Result" message:message preferredStyle:UIAlertControllerStyleActionSheet];
	}
	
	//Action
	UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDestructive handler:nil];
	
	//Add Action
	[dialogMessage addAction:cancel];
	
	[self presentViewController:dialogMessage animated:YES completion:nil];

}

@end
