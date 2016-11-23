//
//  Copyright (c) 2015 Google Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

//
// For more information on setting up and running this sample code, see
// https://firebase.google.com/docs/analytics/ios/start
//

#import "ViewController.h"

@import FirebaseAnalytics;

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated {
  [super viewWillAppear:animated];

  NSString *name = [NSString stringWithFormat:@"Pattern~%@", self.title];
    NSString *sso_id = [NSString stringWithFormat:@"sso_id_%@", self.title];
    NSString *client_id = [NSString stringWithFormat:@"client_id_%@", self.title];
    NSString *FB_id = [NSString stringWithFormat:@"FB_id_%@", self.title];
  
    
    [FIRAnalytics logEventWithName:@"screenView" parameters:@{ @"screenName":name,
                                                             @"sso_id":sso_id,
                                                             @"client_id":client_id,
                                                             @"FB_id":FB_id,
                                                             @"lat_lng":@"14.1212,9.33",
                                                             @"Device_id":@"044444"}];
}

@end
