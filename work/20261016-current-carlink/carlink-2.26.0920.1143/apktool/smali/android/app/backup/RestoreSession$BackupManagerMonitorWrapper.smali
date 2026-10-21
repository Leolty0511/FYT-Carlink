.class Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;
.super Landroid/app/backup/IBackupManagerMonitor$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/RestoreSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackupManagerMonitorWrapper"
.end annotation


# instance fields
.field final mMonitor:Landroid/app/backup/BackupManagerMonitor;

.field final synthetic this$0:Landroid/app/backup/RestoreSession;


# direct methods
.method public constructor <init>(Landroid/app/backup/RestoreSession;Landroid/app/backup/BackupManagerMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;->this$0:Landroid/app/backup/RestoreSession;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/backup/IBackupManagerMonitor$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;->mMonitor:Landroid/app/backup/BackupManagerMonitor;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onEvent(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;->mMonitor:Landroid/app/backup/BackupManagerMonitor;

    invoke-virtual {v0, p1}, Landroid/app/backup/BackupManagerMonitor;->onEvent(Landroid/os/Bundle;)V

    return-void
.end method
