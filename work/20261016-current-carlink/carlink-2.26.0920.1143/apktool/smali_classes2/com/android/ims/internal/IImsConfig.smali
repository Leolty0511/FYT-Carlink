.class public interface abstract Lcom/android/ims/internal/IImsConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsConfig$Stub;
    }
.end annotation


# virtual methods
.method public abstract getFeatureValue(IILcom/android/ims/ImsConfigListener;)V
.end method

.method public abstract getProvisionedStringValue(I)Ljava/lang/String;
.end method

.method public abstract getProvisionedValue(I)I
.end method

.method public abstract getVideoQuality(Lcom/android/ims/ImsConfigListener;)V
.end method

.method public abstract getVolteProvisioned()Z
.end method

.method public abstract setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
.end method

.method public abstract setProvisionedStringValue(ILjava/lang/String;)I
.end method

.method public abstract setProvisionedValue(II)I
.end method

.method public abstract setVideoQuality(ILcom/android/ims/ImsConfigListener;)V
.end method
