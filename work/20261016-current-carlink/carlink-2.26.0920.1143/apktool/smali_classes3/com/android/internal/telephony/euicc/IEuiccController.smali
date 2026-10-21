.class public interface abstract Lcom/android/internal/telephony/euicc/IEuiccController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/IEuiccController$Stub;
    }
.end annotation


# virtual methods
.method public abstract continueOperation(Landroid/content/Intent;Landroid/os/Bundle;)V
.end method

.method public abstract deleteSubscription(ILjava/lang/String;Landroid/app/PendingIntent;)V
.end method

.method public abstract downloadSubscription(Landroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;Landroid/app/PendingIntent;)V
.end method

.method public abstract eraseSubscriptions(Landroid/app/PendingIntent;)V
.end method

.method public abstract getDefaultDownloadableSubscriptionList(Ljava/lang/String;Landroid/app/PendingIntent;)V
.end method

.method public abstract getDownloadableSubscriptionMetadata(Landroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;Landroid/app/PendingIntent;)V
.end method

.method public abstract getEid()Ljava/lang/String;
.end method

.method public abstract getEuiccInfo()Landroid/telephony/euicc/EuiccInfo;
.end method

.method public abstract retainSubscriptionsForFactoryReset(Landroid/app/PendingIntent;)V
.end method

.method public abstract switchToSubscription(ILjava/lang/String;Landroid/app/PendingIntent;)V
.end method

.method public abstract updateSubscriptionNickname(ILjava/lang/String;Landroid/app/PendingIntent;)V
.end method
