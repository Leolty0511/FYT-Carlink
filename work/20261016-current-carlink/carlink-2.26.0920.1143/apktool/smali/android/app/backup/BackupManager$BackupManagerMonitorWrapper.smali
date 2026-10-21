.class Landroid/app/backup/BackupManager$BackupManagerMonitorWrapper;
.super Landroid/app/backup/IBackupManagerMonitor$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/BackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackupManagerMonitorWrapper"
.end annotation


# instance fields
.field final mMonitor:Landroid/app/backup/BackupManagerMonitor;

.field final synthetic this$0:Landroid/app/backup/BackupManager;


# direct methods
.method public constructor <init>(Landroid/app/backup/BackupManager;Landroid/app/backup/BackupManagerMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/app/backup/BackupManager$BackupManagerMonitorWrapper;->this$0:Landroid/app/backup/BackupManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/backup/IBackupManagerMonitor$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroid/app/backup/BackupManager$BackupManagerMonitorWrapper;->mMonitor:Landroid/app/backup/BackupManagerMonitor;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onEvent(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/app/backup/BackupManager$BackupManagerMonitorWrapper;->mMonitor:Landroid/app/backup/BackupManagerMonitor;

    invoke-virtual {v0, p1}, Landroid/app/backup/BackupManagerMonitor;->onEvent(Landroid/os/Bundle;)V

    return-void
.end method
