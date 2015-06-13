#import "NSData+Hex.h"

@implementation NSData (NSData_Hex)

- (NSString *)hexString {
  NSUInteger length = [self length];
  if (length == 0) {
    return @"";
  }
  
  NSMutableString *hexString = [NSMutableString stringWithCapacity:length * 3];
  const unsigned char *buffer = (const unsigned char *)[self bytes];
  for (int i = 0; i < length; i++) {
    [hexString appendFormat:@"%02x ", buffer[i]];
  }
  return hexString;
}

@end