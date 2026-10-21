.class public interface abstract Landroid/printservice/IPrintService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/printservice/IPrintService$Stub;
    }
.end annotation


# virtual methods
.method public abstract createPrinterDiscoverySession()V
.end method

.method public abstract destroyPrinterDiscoverySession()V
.end method

.method public abstract onPrintJobQueued(Landroid/print/PrintJobInfo;)V
.end method

.method public abstract requestCancelPrintJob(Landroid/print/PrintJobInfo;)V
.end method

.method public abstract setClient(Landroid/printservice/IPrintServiceClient;)V
.end method

.method public abstract startPrinterDiscovery(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startPrinterStateTracking(Landroid/print/PrinterId;)V
.end method

.method public abstract stopPrinterDiscovery()V
.end method

.method public abstract stopPrinterStateTracking(Landroid/print/PrinterId;)V
.end method

.method public abstract validatePrinters(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation
.end method
