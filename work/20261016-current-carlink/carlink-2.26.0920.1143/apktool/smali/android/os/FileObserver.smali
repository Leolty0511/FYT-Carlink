.class public abstract Landroid/os/FileObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/FileObserver$ObserverThread;
    }
.end annotation


# static fields
.field public static final ACCESS:I = 0x1

.field public static final ALL_EVENTS:I = 0xfff

.field public static final ATTRIB:I = 0x4

.field public static final CLOSE_NOWRITE:I = 0x10

.field public static final CLOSE_WRITE:I = 0x8

.field public static final CREATE:I = 0x100

.field public static final DELETE:I = 0x200

.field public static final DELETE_SELF:I = 0x400

.field private static final IS_USERDEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "FileObserver"

.field public static final MODIFY:I = 0x2

.field public static final MOVED_FROM:I = 0x40

.field public static final MOVED_TO:I = 0x80

.field public static final MOVE_SELF:I = 0x800

.field public static final OPEN:I = 0x20

.field private static s_observerThread:Landroid/os/FileObserver$ObserverThread;


# instance fields
.field private m_descriptor:Ljava/lang/Integer;

.field private m_mask:I

.field private m_path:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "ro.build.type"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string/jumbo v1, "userdebug"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput-boolean v0, Landroid/os/FileObserver;->IS_USERDEBUG:Z

    .line 16
    .line 17
    new-instance v0, Landroid/os/FileObserver$ObserverThread;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/os/FileObserver$ObserverThread;-><init>()V

    .line 20
    .line 21
    .line 22
    sput-object v0, Landroid/os/FileObserver;->s_observerThread:Landroid/os/FileObserver$ObserverThread;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xfff

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/os/FileObserver;->m_path:Ljava/lang/String;

    .line 4
    iput p2, p0, Landroid/os/FileObserver;->m_mask:I

    const/4 p1, -0x1

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/os/FileObserver;->m_descriptor:Ljava/lang/Integer;

    return-void
.end method

.method public static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Landroid/os/FileObserver;->IS_USERDEBUG:Z

    return v0
.end method


# virtual methods
.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Landroid/os/FileObserver;->stopWatching()V

    return-void
.end method

.method public abstract onEvent(ILjava/lang/String;)V
.end method

.method public startWatching()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/FileObserver;->m_descriptor:Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Landroid/os/FileObserver;->s_observerThread:Landroid/os/FileObserver$ObserverThread;

    .line 10
    .line 11
    iget-object v1, p0, Landroid/os/FileObserver;->m_path:Ljava/lang/String;

    .line 12
    .line 13
    iget v2, p0, Landroid/os/FileObserver;->m_mask:I

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2, p0}, Landroid/os/FileObserver$ObserverThread;->startWatching(Ljava/lang/String;ILandroid/os/FileObserver;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Landroid/os/FileObserver;->m_descriptor:Ljava/lang/Integer;

    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public stopWatching()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/os/FileObserver;->m_descriptor:Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Landroid/os/FileObserver;->s_observerThread:Landroid/os/FileObserver$ObserverThread;

    .line 10
    .line 11
    iget-object v1, p0, Landroid/os/FileObserver;->m_descriptor:Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/FileObserver$ObserverThread;->stopWatching(I)V

    .line 18
    .line 19
    .line 20
    const/4 v0, -0x1

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Landroid/os/FileObserver;->m_descriptor:Ljava/lang/Integer;

    .line 26
    .line 27
    :cond_0
    return-void
.end method
