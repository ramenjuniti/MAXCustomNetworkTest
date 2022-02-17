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
}

- (void)showRewardedAdForParameters:(nonnull id<MAAdapterResponseParameters>)parameters andNotify:(nonnull id<MARewardedAdapterDelegate>)delegate {
    NSLog(@"flucSDKの広告表示");
}

#pragma - MARewardedAdapterDelegate


- (void)didLoadRewardedAd {
    NSLog(@"%@", NSStringFromSelector(_cmd));
}

/**
* This method should called when an ad has been loaded.
*
* @param extraInfo Extra info passed from the adapter.
*/
- (void)didLoadRewardedAdWithExtraInfo:(nullable NSDictionary<NSString *, id> *)extraInfo {
    NSLog(@"%@", NSStringFromSelector(_cmd));
}

/**
* This method should be called when an ad could not be loaded.
*
* @param adapterError An error that indicates the cause of the failure.
*/
- (void)didFailToLoadRewardedAdWithError:(MAAdapterError *)adapterError {
    NSLog(@"%@", NSStringFromSelector(_cmd));
}

/**
* This method should be called when the adapter has successfully displayed an ad to the user.
*/
- (void)didDisplayRewardedAd {
    NSLog(@"%@", NSStringFromSelector(_cmd));
}

/**
* This method should be called when the adapter has successfully displayed an ad to the user.
*
* @param extraInfo Extra info passed from the adapter.
*/
- (void)didDisplayRewardedAdWithExtraInfo:(nullable NSDictionary<NSString *, id> *)extraInfo {
    NSLog(@"%@", NSStringFromSelector(_cmd));
}

/**
* This method is should be called when an ad could not be displayed.
*
* @param adapterError An error that indicates the cause of the failure
*/
- (void)didFailToDisplayRewardedAdWithError:(MAAdapterError *)adapterError {
    NSLog(@"%@", NSStringFromSelector(_cmd));
}

/**
* This method should be called when the user has clicked adapter's ad.
*/
- (void)didClickRewardedAd {
    NSLog(@"%@", NSStringFromSelector(_cmd));
}

/**
* This method should be called when adapter's ad has been dismissed.
*/
- (void)didHideRewardedAd {
    NSLog(@"%@", NSStringFromSelector(_cmd));
}

/**
* This method should be invoked when rewarded video has started video playback.
*/
- (void)didStartRewardedAdVideo {
    NSLog(@"%@", NSStringFromSelector(_cmd));
}

/**
* This method should be invoked when rewarded video has completed video playback.
*/
- (void)didCompleteRewardedAdVideo {
    NSLog(@"%@", NSStringFromSelector(_cmd));
}

/**
* This method should be invoked when a user should be granted a reward.
*
* @param reward The reward to be granted to the user.
*/
- (void)didRewardUserWithReward:(MAReward *)reward {
    NSLog(@"%@", NSStringFromSelector(_cmd));
}

@end
