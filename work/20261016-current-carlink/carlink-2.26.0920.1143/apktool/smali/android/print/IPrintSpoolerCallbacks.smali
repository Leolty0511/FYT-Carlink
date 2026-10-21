.class public interface abstract Landroid/print/IPrintSpoolerCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrintSpoolerCallbacks$Stub;
    }
.end annotation


# virtual methods
.method public abstract customPrinterIconCacheCleared(I)V
.end method

.method public abstract onCancelPrintJobResult(ZI)V
.end method

.method public abstract onCustomPrinterIconCached(I)V
.end method

.method public abstract onGetCustomPrinterIconResult(Landroid/graphics/drawable/Icon;I)V
.end method

.method public abstract onGetPrintJobInfoResult(Landroid/print/PrintJobInfo;I)V
.end method

.method public abstract onGetPrintJobInfosResult(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onSetPrintJobStateResult(ZI)V
.end method

.method public abstract onSetPrintJobTagResult(ZI)V
.end method
