.class public Landroid/app/backup/SharedPreferencesBackupHelper;
.super Landroid/app/backup/FileBackupHelperBase;
.source "SourceFile"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SharedPreferencesBackupHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPrefGroups:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/app/backup/FileBackupHelperBase;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Landroid/app/backup/SharedPreferencesBackupHelper;->mContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Landroid/app/backup/SharedPreferencesBackupHelper;->mPrefGroups:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/app/backup/SharedPreferencesBackupHelper;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 3
    iget-object v1, p0, Landroid/app/backup/SharedPreferencesBackupHelper;->mPrefGroups:[Ljava/lang/String;

    .line 4
    array-length v2, v1

    .line 5
    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 6
    aget-object v5, v1, v4

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1, p2, p3, v3, v1}, Landroid/app/backup/FileBackupHelperBase;->performBackup_checked(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/backup/SharedPreferencesBackupHelper;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Landroid/app/backup/SharedPreferencesBackupHelper;->mPrefGroups:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/app/backup/FileBackupHelperBase;->isKeyInList(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, p1}, Landroid/app/backup/FileBackupHelperBase;->writeFile(Ljava/io/File;Landroid/app/backup/BackupDataInputStream;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/backup/FileBackupHelperBase;->writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method
