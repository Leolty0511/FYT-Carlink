.class public interface abstract Landroid/print/IPrintSpooler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrintSpooler$Stub;
    }
.end annotation


# virtual methods
.method public abstract clearCustomPrinterIconCache(Landroid/print/IPrintSpoolerCallbacks;I)V
.end method

.method public abstract createPrintJob(Landroid/print/PrintJobInfo;)V
.end method

.method public abstract getCustomPrinterIcon(Landroid/print/PrinterId;Landroid/print/IPrintSpoolerCallbacks;I)V
.end method

.method public abstract getPrintJobInfo(Landroid/print/PrintJobId;Landroid/print/IPrintSpoolerCallbacks;II)V
.end method

.method public abstract getPrintJobInfos(Landroid/print/IPrintSpoolerCallbacks;Landroid/content/ComponentName;III)V
.end method

.method public abstract onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;Landroid/print/IPrintSpoolerCallbacks;I)V
.end method

.method public abstract pruneApprovedPrintServices(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeObsoletePrintJobs()V
.end method

.method public abstract setClient(Landroid/print/IPrintSpoolerClient;)V
.end method

.method public abstract setPrintJobCancelling(Landroid/print/PrintJobId;Z)V
.end method

.method public abstract setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;Landroid/print/IPrintSpoolerCallbacks;I)V
.end method

.method public abstract setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;Landroid/print/IPrintSpoolerCallbacks;I)V
.end method

.method public abstract setProgress(Landroid/print/PrintJobId;F)V
.end method

.method public abstract setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V
.end method

.method public abstract setStatusRes(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V
.end method

.method public abstract writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
.end method
