
#import "RNIcloudFilePicker.h"

@implementation RNIcloudFilePicker

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(showFilePicker:(RCTResponseSenderBlock) callback)
{
    self.callback = callback;
    
    dispatch_async(dispatch_get_main_queue(), ^{
        self.alertWindow = [[UIWindow alloc] initWithFrame: [UIScreen mainScreen].bounds];
        self.alertWindow.rootViewController = [UIViewController new];
        self.alertWindow.windowLevel = UIWindowLevelAlert + 1;
        [self.alertWindow makeKeyAndVisible];
        
        self.documentPickerController = [[UIDocumentPickerViewController alloc] initWithDocumentTypes:@[(NSString*)kUTTypePDF, (NSString*)kUTTypeJPEG, (NSString*)kUTTypePNG, (NSString*)kUTTypeGIF] inMode:UIDocumentPickerModeImport];
        self.documentPickerController.delegate = self;
        [self.alertWindow.rootViewController presentViewController: self.documentPickerController animated: YES completion: nil];
    });
    
}

- (void)documentPicker:(UIDocumentPickerViewController *)controller didPickDocumentAtURL:(NSURL *)url {
    [self cleanup];
    
    NSData* data = [[NSData alloc] initWithContentsOfURL:url];
    NSString* dataString = [data base64EncodedStringWithOptions:NSDataBase64EncodingEndLineWithLineFeed];
    
    self.callback(@[@{ @"success": @YES, @"data": dataString, @"filename": [url absoluteString] }]);
}

- (void)documentPickerWasCancelled:(UIDocumentPickerViewController *)controller {
    dispatch_async(dispatch_get_main_queue(), ^{
        [self cleanup];
        self.callback(@[@{ @"cancelled": @YES }]);
    });
}

- (void)cleanup {
    self.alertWindow.hidden = YES;
}

@end
  
