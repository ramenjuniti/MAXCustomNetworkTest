//
//  FluctNetworkMediationAdapter.m
//  MAXCustomNetworkTest
//
//  Created by y-saito21 on 2022/02/17.
//

#import "FluctNetworkMediationAdapter.h"

@implementation FluctNetworkMediationAdapter

- (void)initializeWithParameters:(id<MAAdapterInitializationParameters>)parameters completionHandler:(void (^)(MAAdapterInitializationStatus initializationStatus, NSString *_Nullable errorMessage))completionHandler {
    
    completionHandler(MAAdapterInitializationStatusInitializedSuccess, nil);
}

- (NSString *)SDKVersion {
    return @"1.0.0.0";
}

- (NSString *)adapterVersion {
    return @"1.0.0.0.0";
}

- (void)destroy {}

@end
