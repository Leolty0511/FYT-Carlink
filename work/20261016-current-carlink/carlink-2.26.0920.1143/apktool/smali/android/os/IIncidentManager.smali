.class public interface abstract Landroid/os/IIncidentManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IIncidentManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract reportIncident(Landroid/os/IncidentReportArgs;)V
.end method

.method public abstract reportIncidentToStream(Landroid/os/IncidentReportArgs;Landroid/os/IIncidentReportStatusListener;Ljava/io/FileDescriptor;)V
.end method

.method public abstract systemRunning()V
.end method
