//
//  FluctNetworkMediationAdapter.m
//  MAXCustomNetworkTest
//
//  Created by y-saito21 on 2022/02/17.
//

#import "FluctNetworkMediationAdapter.h"
@import FluctSDK;

@interface FluctNetworkMediationAdapter () <FSSRewardedVideoDelegate>

@property (nonatomic) id<MARewardedAdapterDelegate> rewardedAdapterDelegate;

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
    FSSRewardedVideo.sharedInstance.delegate = self;
    [FSSRewardedVideo.sharedInstance loadRewardedVideoWithGroupId:parameters.customParameters[@"groupID"] unitId:parameters.customParameters[@"unitID"]];
    self.rewardedAdapterDelegate = delegate;
    
}

- (void)showRewardedAdForParameters:(nonnull id<MAAdapterResponseParameters>)parameters andNotify:(nonnull id<MARewardedAdapterDelegate>)delegate {
    NSLog(@"flucSDKの広告表示");
    [FSSRewardedVideo.sharedInstance presentRewardedVideoAdForGroupId:parameters.customParameters[@"groupID"] unitId:parameters.customParameters[@"unitID"] fromViewController:[ALUtils topViewControllerFromKeyWindow]];
    [delegate didDisplayRewardedAd];
}


- (void)rewardedVideoShouldRewardForGroupID:(NSString *)groupId unitId:(NSString *)unitId {
    
}
- (void)rewardedVideoDidLoadForGroupID:(NSString *)groupId unitId:(NSString *)unitId {
    NSLog(@"rewardedVideoDidLoadForGroupID");
    [self.rewardedAdapterDelegate didLoadRewardedAd];
}
- (void)rewardedVideoDidFailToLoadForGroupId:(NSString *)groupId unitId:(NSString *)unitId error:(NSError *)error {
    
}
- (void)rewardedVideoWillAppearForGroupId:(NSString *)groupId unitId:(NSString *)unitId {
    
}
- (void)rewardedVideoDidAppearForGroupId:(NSString *)groupId unitId:(NSString *)unitId {
    
}
- (void)rewardedVideoWillDisappearForGroupId:(NSString *)groupId unitId:(NSString *)unitId {
    
}
- (void)rewardedVideoDidDisappearForGroupId:(NSString *)groupId unitId:(NSString *)unitId {
    
}
- (void)rewardedVideoDidFailToPlayForGroupId:(NSString *)groupId unitId:(NSString *)unitId error:(NSError *)error {
    
}

@end
