.class public interface abstract Landroid/net/lowpan/ILowpanNetScanCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/ILowpanNetScanCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onNetScanBeacon(Landroid/net/lowpan/LowpanBeaconInfo;)V
.end method

.method public abstract onNetScanFinished()V
.end method
