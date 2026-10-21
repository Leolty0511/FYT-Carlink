.class public Landroid/database/CursorWindow;
.super Landroid/database/sqlite/SQLiteClosable;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/database/CursorWindow;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATS_TAG:Ljava/lang/String; = "CursorWindowStats"

.field private static final sCursorWindowSize:I

.field private static final sWindowToPidMap:Landroid/util/SparseIntArray;


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mName:Ljava/lang/String;

.field private mStartPos:I

.field public mWindowPtr:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    sput v0, Landroid/database/CursorWindow;->sCursorWindowSize:I

    .line 2
    new-instance v0, Landroid/database/CursorWindow$1;

    invoke-direct {v0}, Landroid/database/CursorWindow$1;-><init>()V

    sput-object v0, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 12
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 14
    invoke-static {p1}, Landroid/database/CursorWindow;->nativeCreateFromParcel(Landroid/os/Parcel;)I

    move-result p1

    iput p1, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    if-eqz p1, :cond_0

    .line 15
    invoke-static {p1}, Landroid/database/CursorWindow;->nativeGetName(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    const-string p1, "close"

    .line 16
    invoke-virtual {v0, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    .line 17
    :cond_0
    new-instance p1, Landroid/database/CursorWindowAllocationException;

    const-string v0, "Cursor window could not be created from binder."

    invoke-direct {p1, v0}, Landroid/database/CursorWindowAllocationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/database/CursorWindow$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/database/CursorWindow;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 3
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "<unnamed>"

    :goto_0
    iput-object p1, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    .line 6
    sget v1, Landroid/database/CursorWindow;->sCursorWindowSize:I

    invoke-static {p1, v1}, Landroid/database/CursorWindow;->nativeCreate(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    if-eqz p1, :cond_1

    const-string p1, "close"

    .line 7
    invoke-virtual {v0, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-direct {p0, p1, v0}, Landroid/database/CursorWindow;->recordNewWindow(II)V

    return-void

    .line 9
    :cond_1
    new-instance p1, Landroid/database/CursorWindowAllocationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor window allocation of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " kb failed. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/database/CursorWindow;->printStats()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/database/CursorWindowAllocationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 3
    :cond_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, v0}, Landroid/database/CursorWindow;->recordClosingOfWindow(I)V

    .line 5
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0}, Landroid/database/CursorWindow;->nativeDispose(I)V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    :cond_1
    return-void
.end method

.method private static native nativeAllocRow(I)Z
.end method

.method private static native nativeClear(I)V
.end method

.method private static native nativeCopyStringToBuffer(IIILandroid/database/CharArrayBuffer;)V
.end method

.method private static native nativeCreate(Ljava/lang/String;I)I
.end method

.method private static native nativeCreateFromParcel(Landroid/os/Parcel;)I
.end method

.method private static native nativeDispose(I)V
.end method

.method private static native nativeFreeLastRow(I)V
.end method

.method private static native nativeGetBlob(III)[B
.end method

.method private static native nativeGetDouble(III)D
.end method

.method private static native nativeGetLong(III)J
.end method

.method private static native nativeGetName(I)Ljava/lang/String;
.end method

.method private static native nativeGetNumRows(I)I
.end method

.method private static native nativeGetString(III)Ljava/lang/String;
.end method

.method private static native nativeGetType(III)I
.end method

.method private static native nativePutBlob(I[BII)Z
.end method

.method private static native nativePutDouble(IDII)Z
.end method

.method private static native nativePutLong(IJII)Z
.end method

.method private static native nativePutNull(III)Z
.end method

.method private static native nativePutString(ILjava/lang/String;II)Z
.end method

.method private static native nativeSetNumColumns(II)Z
.end method

.method private static native nativeWriteToParcel(ILandroid/os/Parcel;)V
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Landroid/database/CursorWindow;
    .locals 1

    .line 1
    sget-object v0, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/CursorWindow;

    return-object p0
.end method

.method private printStats()Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 3
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 4
    sget-object v3, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    monitor-enter v3

    .line 5
    :try_start_0
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-nez v4, :cond_0

    const-string v0, ""

    .line 6
    monitor-exit v3

    return-object v0

    :cond_0
    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    .line 7
    sget-object v7, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    .line 8
    invoke-virtual {v2, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    .line 9
    invoke-virtual {v2, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 10
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    move v4, v5

    move v6, v4

    :goto_1
    if-ge v4, v3, :cond_3

    const-string v7, " (# cursors opened by "

    .line 12
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    if-ne v7, v1, :cond_2

    const-string/jumbo v8, "this proc="

    .line 14
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 15
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :goto_2
    invoke-virtual {v2, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    .line 17
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 18
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/16 v2, 0x3d4

    if-le v1, v2, :cond_4

    invoke-virtual {v0, v5, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Open Cursors="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 20
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private recordClosingOfWindow(I)V
    .locals 2

    .line 1
    sget-object v0, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private recordNewWindow(II)V
    .locals 2

    .line 1
    sget-object v0, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    const-string p1, "CursorWindowStats"

    const/4 p2, 0x2

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "CursorWindowStats"

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Created a new Cursor. "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/database/CursorWindow;->printStats()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public allocRow()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 2
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0}, Landroid/database/CursorWindow;->nativeAllocRow(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 3
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0}, Landroid/database/CursorWindow;->nativeClear(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method public copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V
    .locals 2

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 2
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int/2addr p1, v1

    invoke-static {v0, p1, p2, p3}, Landroid/database/CursorWindow;->nativeCopyStringToBuffer(IIILandroid/database/CharArrayBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CharArrayBuffer should not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 3
    :cond_0
    invoke-direct {p0}, Landroid/database/CursorWindow;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public freeLastRow()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 2
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0}, Landroid/database/CursorWindow;->nativeFreeLastRow(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method public getBlob(II)[B
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 2
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int/2addr p1, v1

    invoke-static {v0, p1, p2}, Landroid/database/CursorWindow;->nativeGetBlob(III)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public getDouble(II)D
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 2
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int/2addr p1, v1

    invoke-static {v0, p1, p2}, Landroid/database/CursorWindow;->nativeGetDouble(III)D

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return-wide p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public getFloat(II)F
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getDouble(II)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public getInt(II)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide p1

    long-to-int p1, p1

    return p1
.end method

.method public getLong(II)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 2
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int/2addr p1, v1

    invoke-static {v0, p1, p2}, Landroid/database/CursorWindow;->nativeGetLong(III)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return-wide p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumRows()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 2
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0}, Landroid/database/CursorWindow;->nativeGetNumRows(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method public getShort(II)S
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide p1

    long-to-int p1, p1

    int-to-short p1, p1

    return p1
.end method

.method public getStartPosition()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    return v0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 2
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int/2addr p1, v1

    invoke-static {v0, p1, p2}, Landroid/database/CursorWindow;->nativeGetString(III)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public getType(II)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 2
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int/2addr p1, v1

    invoke-static {v0, p1, p2}, Landroid/database/CursorWindow;->nativeGetType(III)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public isBlob(II)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result p1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isFloat(II)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isLong(II)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public isNull(II)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isString(II)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onAllReferencesReleased()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/database/CursorWindow;->dispose()V

    return-void
.end method

.method public putBlob([BII)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 2
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int/2addr p2, v1

    invoke-static {v0, p1, p2, p3}, Landroid/database/CursorWindow;->nativePutBlob(I[BII)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public putDouble(DII)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 2
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int/2addr p3, v1

    invoke-static {v0, p1, p2, p3, p4}, Landroid/database/CursorWindow;->nativePutDouble(IDII)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public putLong(JII)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 2
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int/2addr p3, v1

    invoke-static {v0, p1, p2, p3, p4}, Landroid/database/CursorWindow;->nativePutLong(IJII)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public putNull(II)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 2
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int/2addr p1, v1

    invoke-static {v0, p1, p2}, Landroid/database/CursorWindow;->nativePutNull(III)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public putString(Ljava/lang/String;II)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 2
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int/2addr p2, v1

    invoke-static {v0, p1, p2, p3}, Landroid/database/CursorWindow;->nativePutString(ILjava/lang/String;II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public setNumColumns(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 2
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0, p1}, Landroid/database/CursorWindow;->nativeSetNumColumns(II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public setStartPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/database/CursorWindow;->mStartPos:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/database/CursorWindow;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 2
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0, p1}, Landroid/database/CursorWindow;->nativeWriteToParcel(ILandroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method
