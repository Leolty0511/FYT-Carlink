.class public interface abstract Lcom/android/internal/telephony/ISub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISub$Stub;
    }
.end annotation


# virtual methods
.method public abstract addSubInfoRecord(Ljava/lang/String;I)I
.end method

.method public abstract clearDefaultsForInactiveSubIds()V
.end method

.method public abstract clearSubInfo()I
.end method

.method public abstract getAccessibleSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getActiveSubIdList()[I
.end method

.method public abstract getActiveSubInfoCount(Ljava/lang/String;)I
.end method

.method public abstract getActiveSubInfoCountMax()I
.end method

.method public abstract getActiveSubscriptionInfo(ILjava/lang/String;)Landroid/telephony/SubscriptionInfo;
.end method

.method public abstract getActiveSubscriptionInfoForIccId(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
.end method

.method public abstract getActiveSubscriptionInfoForSimSlotIndex(ILjava/lang/String;)Landroid/telephony/SubscriptionInfo;
.end method

.method public abstract getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllSubInfoCount(Ljava/lang/String;)I
.end method

.method public abstract getAllSubInfoList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAvailableSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefaultDataSubId()I
.end method

.method public abstract getDefaultSmsSubId()I
.end method

.method public abstract getDefaultSubId()I
.end method

.method public abstract getDefaultVoiceSubId()I
.end method

.method public abstract getPhoneId(I)I
.end method

.method public abstract getSimStateForSlotIndex(I)I
.end method

.method public abstract getSlotIndex(I)I
.end method

.method public abstract getSubId(I)[I
.end method

.method public abstract getSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isActiveSubId(I)Z
.end method

.method public abstract requestEmbeddedSubscriptionInfoListRefresh()V
.end method

.method public abstract setDataRoaming(II)I
.end method

.method public abstract setDefaultDataSubId(I)V
.end method

.method public abstract setDefaultSmsSubId(I)V
.end method

.method public abstract setDefaultVoiceSubId(I)V
.end method

.method public abstract setDisplayName(Ljava/lang/String;I)I
.end method

.method public abstract setDisplayNameUsingSrc(Ljava/lang/String;IJ)I
.end method

.method public abstract setDisplayNumber(Ljava/lang/String;I)I
.end method

.method public abstract setIconTint(II)I
.end method

.method public abstract setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V
.end method
