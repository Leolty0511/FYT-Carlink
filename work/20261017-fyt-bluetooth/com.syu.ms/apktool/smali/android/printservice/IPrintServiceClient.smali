.class public interface abstract Landroid/printservice/IPrintServiceClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/printservice/IPrintServiceClient$Stub;
    }
.end annotation


# virtual methods
.method public abstract getPrintJobInfo(Landroid/print/PrintJobId;)Landroid/print/PrintJobInfo;
.end method

.method public abstract getPrintJobInfos()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V
.end method

.method public abstract onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V
.end method

.method public abstract setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z
.end method

.method public abstract setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;)Z
.end method

.method public abstract writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
.end method
