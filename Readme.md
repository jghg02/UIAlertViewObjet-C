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
	
	

