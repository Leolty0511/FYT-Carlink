.class public interface abstract Lcom/android/internal/telephony/IPhoneSubInfoEx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IPhoneSubInfoEx$Stub;
    }
.end annotation


# virtual methods
.method public abstract getIsimDomainForSubscriber(I)Ljava/lang/String;
.end method

.method public abstract getIsimImpiForSubscriber(I)Ljava/lang/String;
.end method

.method public abstract getIsimImpuForSubscriber(I)[Ljava/lang/String;
.end method

.method public abstract getIsimIstForSubscriber(I)Ljava/lang/String;
.end method

.method public abstract getIsimPcscfForSubscriber(I)[Ljava/lang/String;
.end method
