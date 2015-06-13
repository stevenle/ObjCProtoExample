#import "NSData+Hex.h"

@implementation NSData (NSData_Hex)

- (NSString *)hexString {
  NSUInteger length = [self length];
  if (length == 0) {
    return @"";
  }
  
  NSMutableString *hexString = [NSMutableString stringWithCapacity:(length * 3) - 1];
  const unsigned char *buffer = (const unsigned char *)[self bytes];
  for (int i = 0; i < length; i++) {
    NSString *format = (i == 0) ? @"%02x" : @" %02x";
    [hexString appendFormat:format, buffer[i]];
  }
  return hexString;
}

@end