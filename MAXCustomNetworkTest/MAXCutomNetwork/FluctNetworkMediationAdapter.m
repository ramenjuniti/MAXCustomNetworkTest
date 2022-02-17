//
//  FluctNetworkMediationAdapter.m
//  MAXCustomNetworkTest
//
//  Created by y-saito21 on 2022/02/17.
//

#import "FluctNetworkMediationAdapter.h"

@interface FluctNetworkMediationAdapter ()

@end

@implementation FluctNetworkMediationAdapter

- (void)initializeWithParameters:(id<MAAdapterInitializationParameters>)parameters completionHandler:(void (^)(MAAdapterInitializationStatus initializationStatus, NSString *_Nullable errorMessage))completionHandler {
    
    NSLog(@"initializeWithParameters: %@", parameters.customParameters.description);
    
    completionHandler(MAAdapterInitializationStatusInitializedSuccess, nil);
}

- (NSString *)SDKVersion {
    return @"1.0.0.0";
}

- (NSString *)adapterVersion {
    return @"1.0.0.0.0";
}

- (void)destroy {}

#pragma - MARewardedAdapter

- (void)initializeWithParameters:(nonnull id<MAAdapterInitializationParameters>)parameters withCompletionHandler:(nonnull void (^)(void))completionHandler {
    NSLog(@"%@", NSStringFromSelector(_cmd));
}


- (void)loadRewardedAdForParameters:(nonnull id<MAAdapterResponseParameters>)parameters andNotify:(nonnull id<MARewardedAdapterDelegate>)delegate {
    NSLog(@"flucSDKの広告読み込み");
//    [delegate didLoadRewardedAd];
}

- (void)showRewardedAdForParameters:(nonnull id<MAAdapterResponseParameters>)parameters andNotify:(nonnull id<MARewardedAdapterDelegate>)delegate {
    NSLog(@"flucSDKの広告表示");
//    [delegate didDisplayRewardedAd];
}

@end
