#if __has_include("RCTBridgeModule.h")
#import "RCTBridgeModule.h"
#else
#import <React/RCTBridgeModule.h>
#endif

#import <UIKit/UIKit.h>

@interface RNIcloudFilePicker : NSObject <RCTBridgeModule, UIDocumentPickerDelegate>

@property (nonatomic) UIWindow* alertWindow;
@property (nonatomic) UIDocumentPickerViewController* documentPickerController;
@property (nonatomic, strong) RCTResponseSenderBlock callback;

@end
  
