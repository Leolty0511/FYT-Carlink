.class public interface abstract Lcom/android/internal/telephony/ICarrierConfigLoaderEx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ICarrierConfigLoaderEx$Stub;
    }
.end annotation


# virtual methods
.method public abstract getConfigForPhoneId(I)Landroid/os/PersistableBundle;
.end method

.method public abstract getConfigForSubId(I)Landroid/os/PersistableBundle;
.end method

.method public abstract getDefaultCarrierServicePackageName()Ljava/lang/String;
.end method

.method public abstract notifyConfigChangedForSubId(I)V
.end method

.method public abstract updateConfigForPhoneId(ILjava/lang/String;)V
.end method
