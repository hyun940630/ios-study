//
//  DocumentBrowserViewController.h
//  ObjectiveC
//
//  Created by xtring on 2021/03/05.
//

#import <UIKit/UIKit.h>

@interface DocumentBrowserViewController : UIDocumentBrowserViewController

- (void)presentDocumentAtURL:(NSURL *)documentURL;

@end
