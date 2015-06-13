#import "ViewController.h"
#import "Foo.pbobjc.h"
#import "NSData+Hex.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  // Create a new person.
  Person *alice = [[Person alloc] init];
  alice.firstName = @"Alice";
  alice.lastName = @"Smith";
  alice.gender = Person_Gender_Female;
  
  // Serialize.
  NSData *serializedMessage = [alice data];
  NSLog(@"Serialized proto message: %@", [serializedMessage hexString]);
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
}

@end
