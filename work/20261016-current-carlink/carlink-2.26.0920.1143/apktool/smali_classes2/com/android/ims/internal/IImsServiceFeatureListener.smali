.class public interface abstract Lcom/android/ims/internal/IImsServiceFeatureListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsServiceFeatureListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract imsFeatureCreated(II)V
.end method

.method public abstract imsFeatureRemoved(II)V
.end method

.method public abstract imsStatusChanged(III)V
.end method
