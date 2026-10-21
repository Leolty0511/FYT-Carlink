.class public interface abstract Landroid/bluetooth/le/IScannerCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/IScannerCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onBatchScanResults(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onFoundOrLost(ZLandroid/bluetooth/le/ScanResult;)V
.end method

.method public abstract onScanManagerErrorCallback(I)V
.end method

.method public abstract onScanResult(Landroid/bluetooth/le/ScanResult;)V
.end method

.method public abstract onScannerRegistered(II)V
.end method
