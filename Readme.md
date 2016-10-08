#UIAlertView

Manejo de `UIAlertView` para **iOS** 

##Create UIAlerController

	
	UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Question" message:@"Are you In!!!" preferredStyle:UIAlertControllerStyleAlert];
	
	
##Create Action

	UIAlertAction *action = [UIAlertAction actionWithTitle:@"YES" style:UIAlertActionStyleDefault handler:nil)
	
##Add Action to UIAlertView

	[alert addAction:action];
	
##Show AlertView

	[self presentViewController:alert animated:YES completion:nil];
	
	
	
___
#Property Access 

##Init NSObject 
	self.first = [[First alloc] init];
	[self.first initObject];
	
	
##Set Value to property
	
	self.first.dato = @"Dato from ViewController!!!!";
	[self.first showMessageInTerminal:self.first.dato];
	
##Different Way to assign value 
	[self.first setDato:@"The other way!!!!"];
	[_first showMessageInTerminal:[self.first dato]];
	
	

##Output 
/Users/jhgonzalez/Desktop/Screen Shot 2016-10-08 at 4.40.59 PM.png