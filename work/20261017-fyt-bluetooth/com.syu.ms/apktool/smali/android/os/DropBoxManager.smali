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
.field private final mService:Lo/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DropBoxManager;->mService:Lo/c;

    return-void
.end method

.method public constructor <init>(Lo/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/DropBoxManager;->mService:Lo/c;

    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/String;[BI)V
    .locals 8

    const-string v0, "data == null"

    .line 1
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/os/DropBoxManager;->mService:Lo/c;

    new-instance v7, Landroid/os/DropBoxManager$Entry;

    const-wide/16 v3, 0x0

    move-object v1, v7

    move-object v2, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J[BI)V

    invoke-interface {v0, v7}, Lo/c;->B1(Landroid/os/DropBoxManager$Entry;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public addFile(Ljava/lang/String;Ljava/io/File;I)V
    .locals 7

    const-string v0, "file == null"

    .line 1
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    const-wide/16 v3, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V

    .line 3
    :try_start_0
    iget-object p1, p0, Landroid/os/DropBoxManager;->mService:Lo/c;

    invoke-interface {p1, v0}, Lo/c;->B1(Landroid/os/DropBoxManager$Entry;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-virtual {v0}, Landroid/os/DropBoxManager$Entry;->close()V

    throw p1

    :catch_0
    :goto_0
    invoke-virtual {v0}, Landroid/os/DropBoxManager$Entry;->close()V

    return-void
.end method

.method public addText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/DropBoxManager;->mService:Lo/c;

    new-instance v1, Landroid/os/DropBoxManager$Entry;

    const-wide/16 v2, 0x0

    invoke-direct {v1, p1, v2, v3, p2}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v0, v1}, Lo/c;->B1(Landroid/os/DropBoxManager$Entry;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/DropBoxManager;->mService:Lo/c;

    invoke-interface {v0, p1, p2, p3}, Lo/c;->u2(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isTagEnabled(Ljava/lang/String;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/DropBoxManager;->mService:Lo/c;

    invoke-interface {v0, p1}, Lo/c;->r0(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
