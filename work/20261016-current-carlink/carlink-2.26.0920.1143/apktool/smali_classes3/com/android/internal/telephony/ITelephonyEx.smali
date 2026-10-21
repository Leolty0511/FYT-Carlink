.class public interface abstract Lcom/android/internal/telephony/ITelephonyEx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephonyEx$Stub;
    }
.end annotation


# virtual methods
.method public abstract getCellLocationForPhone(I)Landroid/os/Bundle;
.end method

.method public abstract getDataState(I)I
.end method

.method public abstract getHighPriorityPlmn(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getIccFdnEnabledForSubscriber(I)Z
.end method

.method public abstract getIntFromSharedPreference(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getLTECapabilityForPhone(I)Z
.end method

.method public abstract getOriginalServiceProviderName(I)Ljava/lang/String;
.end method

.method public abstract getPnnHomeName(I)Ljava/lang/String;
.end method

.method public abstract getSmscForSubscriber(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getStringFromSharedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isEnhanced4gLteModeSettingEnabledByUser(I)Z
.end method

.method public abstract isInternationalNetworkRoaming(I)Z
.end method

.method public abstract isRingtongUriAvailable(Landroid/net/Uri;)Z
.end method

.method public abstract isUsimCard(I)Z
.end method

.method public abstract isVolteEnabledByPlatform()Z
.end method

.method public abstract setEnhanced4gLteModeSetting(ZI)V
.end method

.method public abstract setLine1NumberForDisplayForSubscriberEx(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setSimEnabled(IZ)V
.end method

.method public abstract setSmscForSubscriber(Ljava/lang/String;I)Z
.end method

.method public abstract updateNetworkList(I[Ljava/lang/String;)Ljava/lang/String;
.end method
