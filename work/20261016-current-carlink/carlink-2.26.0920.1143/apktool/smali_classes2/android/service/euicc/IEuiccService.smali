.class public interface abstract Landroid/service/euicc/IEuiccService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/euicc/IEuiccService$Stub;
    }
.end annotation


# virtual methods
.method public abstract deleteSubscription(ILjava/lang/String;Landroid/service/euicc/IDeleteSubscriptionCallback;)V
.end method

.method public abstract downloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/service/euicc/IDownloadSubscriptionCallback;)V
.end method

.method public abstract eraseSubscriptions(ILandroid/service/euicc/IEraseSubscriptionsCallback;)V
.end method

.method public abstract getDefaultDownloadableSubscriptionList(IZLandroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;)V
.end method

.method public abstract getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;ZLandroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;)V
.end method

.method public abstract getEid(ILandroid/service/euicc/IGetEidCallback;)V
.end method

.method public abstract getEuiccInfo(ILandroid/service/euicc/IGetEuiccInfoCallback;)V
.end method

.method public abstract getEuiccProfileInfoList(ILandroid/service/euicc/IGetEuiccProfileInfoListCallback;)V
.end method

.method public abstract retainSubscriptionsForFactoryReset(ILandroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;)V
.end method

.method public abstract switchToSubscription(ILjava/lang/String;ZLandroid/service/euicc/ISwitchToSubscriptionCallback;)V
.end method

.method public abstract updateSubscriptionNickname(ILjava/lang/String;Ljava/lang/String;Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;)V
.end method
