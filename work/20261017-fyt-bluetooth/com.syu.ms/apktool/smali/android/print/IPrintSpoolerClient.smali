.class public interface abstract Landroid/print/IPrintSpoolerClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrintSpoolerClient$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAllPrintJobsForServiceHandled(Landroid/content/ComponentName;)V
.end method

.method public abstract onAllPrintJobsHandled()V
.end method

.method public abstract onPrintJobQueued(Landroid/print/PrintJobInfo;)V
.end method

.method public abstract onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
.end method
