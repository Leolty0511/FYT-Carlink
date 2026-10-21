.class public Landroid/os/DropBoxManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/DropBoxManager$Entry;
    }
.end annotation


# static fields
.field public static final ACTION_DROPBOX_ENTRY_ADDED:Ljava/lang/String; = "android.intent.action.DROPBOX_ENTRY_ADDED"

.field public static final EXTRA_TAG:Ljava/lang/String; = "tag"

.field public static final EXTRA_TIME:Ljava/lang/String; = "time"

.field private static final HAS_BYTE_ARRAY:I = 0x8

.field public static final IS_EMPTY:I = 0x1

.field public static final IS_GZIPPED:I = 0x4

.field public static final IS_TEXT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DropBoxManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Lcom/android/internal/os/IDropBoxManagerService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/os/DropBoxManager;->mContext:Landroid/content/Context;

    .line 6
    iput-object v0, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/os/IDropBoxManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/os/DropBoxManager;->mContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/String;[BI)V
    .locals 8

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    .line 4
    .line 5
    new-instance v7, Landroid/os/DropBoxManager$Entry;

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    move-object v1, v7

    .line 10
    move-object v2, p1

    .line 11
    move-object v5, p2

    .line 12
    move v6, p3

    .line 13
    invoke-direct/range {v1 .. v6}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J[BI)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v7}, Lcom/android/internal/os/IDropBoxManagerService;->add(Landroid/os/DropBoxManager$Entry;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catch_0
    move-exception p1

    .line 21
    instance-of p2, p1, Landroid/os/TransactionTooLargeException;

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    iget-object p2, p0, Landroid/os/DropBoxManager;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 32
    .line 33
    const/16 p3, 0x18

    .line 34
    .line 35
    if-ge p2, p3, :cond_0

    .line 36
    .line 37
    const-string p2, "DropBoxManager"

    .line 38
    .line 39
    const-string p3, "App sent too much data, so it was ignored"

    .line 40
    .line 41
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    throw p1

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 51
    .line 52
    const-string p2, "data == null"

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1
.end method

.method public addFile(Ljava/lang/String;Ljava/io/File;I)V
    .locals 7

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance v6, Landroid/os/DropBoxManager$Entry;

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    move-object v0, v6

    .line 8
    move-object v1, p1

    .line 9
    move-object v4, p2

    .line 10
    move v5, p3

    .line 11
    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-object p1, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    .line 15
    .line 16
    invoke-interface {p1, v6}, Lcom/android/internal/os/IDropBoxManagerService;->add(Landroid/os/DropBoxManager$Entry;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v6}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    :try_start_1
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :goto_0
    invoke-virtual {v6}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 36
    .line 37
    const-string p2, "file == null"

    .line 38
    .line 39
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method

.method public addText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    .line 2
    .line 3
    new-instance v1, Landroid/os/DropBoxManager$Entry;

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    invoke-direct {v1, p1, v2, v3, p2}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lcom/android/internal/os/IDropBoxManagerService;->add(Landroid/os/DropBoxManager$Entry;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catch_0
    move-exception p1

    .line 15
    instance-of p2, p1, Landroid/os/TransactionTooLargeException;

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    iget-object p2, p0, Landroid/os/DropBoxManager;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 26
    .line 27
    const/16 v0, 0x18

    .line 28
    .line 29
    if-ge p2, v0, :cond_0

    .line 30
    .line 31
    const-string p2, "DropBoxManager"

    .line 32
    .line 33
    const-string v0, "App sent too much data, so it was ignored"

    .line 34
    .line 35
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    throw p1
.end method

.method public getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/os/IDropBoxManagerService;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p1

    .line 8
    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    throw p1
.end method

.method public isTagEnabled(Ljava/lang/String;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/android/internal/os/IDropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p1

    .line 8
    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    throw p1
.end method
