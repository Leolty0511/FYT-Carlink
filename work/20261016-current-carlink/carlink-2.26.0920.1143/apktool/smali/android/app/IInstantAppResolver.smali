.class public interface abstract Landroid/app/IInstantAppResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IInstantAppResolver$Stub;
    }
.end annotation


# virtual methods
.method public abstract getInstantAppIntentFilterList([ILjava/lang/String;Ljava/lang/String;Landroid/os/IRemoteCallback;)V
.end method

.method public abstract getInstantAppResolveInfoList([ILjava/lang/String;ILandroid/os/IRemoteCallback;)V
.end method
