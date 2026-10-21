.class Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;
.super Landroid/app/backup/ISelectBackupTransportCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/BackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectTransportListenerWrapper"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/app/backup/SelectBackupTransportCallback;

.field final synthetic this$0:Landroid/app/backup/BackupManager;


# direct methods
.method public constructor <init>(Landroid/app/backup/BackupManager;Landroid/content/Context;Landroid/app/backup/SelectBackupTransportCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;->this$0:Landroid/app/backup/BackupManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/backup/ISelectBackupTransportCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    iput-object p3, p0, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;->mListener:Landroid/app/backup/SelectBackupTransportCallback;

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic access$000(Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;)Landroid/app/backup/SelectBackupTransportCallback;
    .locals 0

    iget-object p0, p0, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;->mListener:Landroid/app/backup/SelectBackupTransportCallback;

    return-object p0
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2

    iget-object v0, p0, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper$2;

    invoke-direct {v1, p0, p1}, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper$2;-><init>(Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper$1;

    invoke-direct {v1, p0, p1}, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper$1;-><init>(Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
