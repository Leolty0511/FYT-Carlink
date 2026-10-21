.class public final Landroid/graphics/pdf/PdfRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/pdf/PdfRenderer$Page;,
        Landroid/graphics/pdf/PdfRenderer$RenderMode;
    }
.end annotation


# static fields
.field static final sPdfiumLock:Ljava/lang/Object;


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

.field private mInput:Landroid/os/ParcelFileDescriptor;

.field private final mNativeDocument:J

.field private final mPageCount:I

.field private final mTempPoint:Landroid/graphics/Point;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 9
    .line 10
    new-instance v1, Landroid/graphics/Point;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Landroid/graphics/pdf/PdfRenderer;->mTempPoint:Landroid/graphics/Point;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    sget v3, Landroid/system/OsConstants;->SEEK_SET:I

    .line 26
    .line 27
    const-wide/16 v4, 0x0

    .line 28
    .line 29
    invoke-interface {v1, v2, v4, v5, v3}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 30
    .line 31
    .line 32
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v1, v2}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-wide v1, v1, Landroid/system/StructStat;->st_size:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    iput-object p1, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    .line 45
    .line 46
    sget-object p1, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    .line 47
    .line 48
    monitor-enter p1

    .line 49
    :try_start_1
    iget-object v3, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    .line 50
    .line 51
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFd()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-static {v3, v1, v2}, Landroid/graphics/pdf/PdfRenderer;->nativeCreate(IJ)J

    .line 56
    .line 57
    .line 58
    move-result-wide v1

    .line 59
    iput-wide v1, p0, Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    .line 61
    :try_start_2
    invoke-static {v1, v2}, Landroid/graphics/pdf/PdfRenderer;->nativeGetPageCount(J)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    iput v1, p0, Landroid/graphics/pdf/PdfRenderer;->mPageCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    .line 67
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 68
    const-string p1, "close"

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    :try_start_4
    iget-wide v1, p0, Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J

    .line 76
    .line 77
    invoke-static {v1, v2}, Landroid/graphics/pdf/PdfRenderer;->nativeClose(J)V

    .line 78
    .line 79
    .line 80
    throw v0

    .line 81
    :catchall_1
    move-exception v0

    .line 82
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 83
    throw v0

    .line 84
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 85
    .line 86
    const-string v0, "file descriptor not seekable"

    .line 87
    .line 88
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p1

    .line 92
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 93
    .line 94
    const-string/jumbo v0, "input cannot be null"

    .line 95
    .line 96
    .line 97
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p1
.end method

.method public static synthetic access$100(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Landroid/graphics/pdf/PdfRenderer;->mTempPoint:Landroid/graphics/Point;

    return-object p0
.end method

.method public static synthetic access$200(Landroid/graphics/pdf/PdfRenderer;)J
    .locals 2

    iget-wide v0, p0, Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J

    return-wide v0
.end method

.method public static synthetic access$300(JILandroid/graphics/Point;)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/pdf/PdfRenderer;->nativeOpenPageAndGetSize(JILandroid/graphics/Point;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$400(JJLandroid/graphics/Bitmap;IIIIJI)V
    .locals 0

    invoke-static/range {p0 .. p11}, Landroid/graphics/pdf/PdfRenderer;->nativeRenderPage(JJLandroid/graphics/Bitmap;IIIIJI)V

    return-void
.end method

.method public static synthetic access$500(J)V
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/pdf/PdfRenderer;->nativeClosePage(J)V

    return-void
.end method

.method public static synthetic access$602(Landroid/graphics/pdf/PdfRenderer;Landroid/graphics/pdf/PdfRenderer$Page;)Landroid/graphics/pdf/PdfRenderer$Page;
    .locals 0

    iput-object p1, p0, Landroid/graphics/pdf/PdfRenderer;->mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

    return-object p1
.end method

.method private doClose()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/pdf/PdfRenderer$Page;->close()V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object v0, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-wide v1, p0, Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J

    .line 12
    .line 13
    invoke-static {v1, v2}, Landroid/graphics/pdf/PdfRenderer;->nativeClose(J)V

    .line 14
    .line 15
    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :try_start_1
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 20
    .line 21
    .line 22
    :catch_0
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    .line 24
    .line 25
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 26
    .line 27
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    throw v1
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeClosePage(J)V
.end method

.method private static native nativeCreate(IJ)J
.end method

.method private static native nativeGetPageCount(J)I
.end method

.method private static native nativeOpenPageAndGetSize(JILandroid/graphics/Point;)J
.end method

.method private static native nativeRenderPage(JJLandroid/graphics/Bitmap;IIIIJI)V
.end method

.method private static native nativeScaleForPrinting(J)Z
.end method

.method private throwIfClosed()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "Already closed"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method private throwIfPageNotInDocument(I)V
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Landroid/graphics/pdf/PdfRenderer;->mPageCount:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v0, "Invalid page index"

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method private throwIfPageOpened()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "Current page not closed"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfClosed()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfPageOpened()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->doClose()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->doClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public getPageCount()I
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfClosed()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/graphics/pdf/PdfRenderer;->mPageCount:I

    .line 5
    .line 6
    return v0
.end method

.method public openPage(I)Landroid/graphics/pdf/PdfRenderer$Page;
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfClosed()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfPageOpened()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfRenderer;->throwIfPageNotInDocument(I)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroid/graphics/pdf/PdfRenderer$Page;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/pdf/PdfRenderer$Page;-><init>(Landroid/graphics/pdf/PdfRenderer;ILandroid/graphics/pdf/PdfRenderer$1;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

    .line 17
    .line 18
    return-object v0
.end method

.method public shouldScaleForPrinting()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfClosed()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-wide v1, p0, Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J

    .line 8
    .line 9
    invoke-static {v1, v2}, Landroid/graphics/pdf/PdfRenderer;->nativeScaleForPrinting(J)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    monitor-exit v0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v1
.end method
