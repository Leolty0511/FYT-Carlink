.class public Landroid/app/backup/BackupAgentHelper;
.super Landroid/app/backup/BackupAgent;
.source "SourceFile"


# static fields
.field static final TAG:Ljava/lang/String; = "BackupAgentHelper"


# instance fields
.field mDispatcher:Landroid/app/backup/BackupHelperDispatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/app/backup/BackupHelperDispatcher;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/app/backup/BackupHelperDispatcher;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/app/backup/BackupAgentHelper;->mDispatcher:Landroid/app/backup/BackupHelperDispatcher;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V
    .locals 1

    iget-object v0, p0, Landroid/app/backup/BackupAgentHelper;->mDispatcher:Landroid/app/backup/BackupHelperDispatcher;

    invoke-virtual {v0, p1, p2}, Landroid/app/backup/BackupHelperDispatcher;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    return-void
.end method

.method public getDispatcher()Landroid/app/backup/BackupHelperDispatcher;
    .locals 1

    iget-object v0, p0, Landroid/app/backup/BackupAgentHelper;->mDispatcher:Landroid/app/backup/BackupHelperDispatcher;

    return-object v0
.end method

.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    iget-object v0, p0, Landroid/app/backup/BackupAgentHelper;->mDispatcher:Landroid/app/backup/BackupHelperDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/backup/BackupHelperDispatcher;->performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 1

    iget-object v0, p0, Landroid/app/backup/BackupAgentHelper;->mDispatcher:Landroid/app/backup/BackupHelperDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/backup/BackupHelperDispatcher;->performRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    return-void
.end method
