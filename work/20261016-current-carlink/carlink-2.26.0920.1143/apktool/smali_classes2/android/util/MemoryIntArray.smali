.class public final Landroid/util/MemoryIntArray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Closeable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/util/MemoryIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_SIZE:I = 0x400

.field private static final TAG:Ljava/lang/String; = "MemoryIntArray"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mFd:I

.field private final mIsOwner:Z

.field private final mMemoryAddr:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/MemoryIntArray$1;

    invoke-direct {v0}, Landroid/util/MemoryIntArray$1;-><init>()V

    sput-object v0, Landroid/util/MemoryIntArray;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/util/MemoryIntArray;->mCloseGuard:Ldalvik/system/CloseGuard;

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Landroid/util/MemoryIntArray;->mFd:I

    const/16 v1, 0x400

    if-gt p1, v1, :cond_0

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Landroid/util/MemoryIntArray;->mIsOwner:Z

    .line 6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-direct {p0, v2, p1}, Landroid/util/MemoryIntArray;->nativeCreate(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroid/util/MemoryIntArray;->mFd:I

    .line 8
    invoke-direct {p0, p1, v1}, Landroid/util/MemoryIntArray;->nativeOpen(IZ)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/util/MemoryIntArray;->mMemoryAddr:J

    const-string p1, "close"

    .line 9
    invoke-virtual {v0, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Max size is 1024"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/util/MemoryIntArray;->mCloseGuard:Ldalvik/system/CloseGuard;

    const/4 v1, -0x1

    .line 13
    iput v1, p0, Landroid/util/MemoryIntArray;->mFd:I

    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p0, Landroid/util/MemoryIntArray;->mIsOwner:Z

    const/4 v2, 0x0

    .line 15
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result p1

    iput p1, p0, Landroid/util/MemoryIntArray;->mFd:I

    .line 17
    invoke-direct {p0, p1, v1}, Landroid/util/MemoryIntArray;->nativeOpen(IZ)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/util/MemoryIntArray;->mMemoryAddr:J

    const-string p1, "close"

    .line 18
    invoke-virtual {v0, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "No backing file descriptor"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/util/MemoryIntArray$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/util/MemoryIntArray;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private enforceNotClosed()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/util/MemoryIntArray;->isClosed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v1, "cannot interact with a closed instance"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method private enforceValidIndex(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/util/MemoryIntArray;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    add-int/lit8 v1, v0, -0x1

    .line 8
    .line 9
    if-gt p1, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, " not between 0 and "

    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    add-int/lit8 v0, v0, -0x1

    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v1
.end method

.method private enforceWritable()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/util/MemoryIntArray;->isWritable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 9
    .line 10
    const-string v1, "array is not writable"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public static getMaxSize()I
    .locals 1

    const/16 v0, 0x400

    return v0
.end method

.method private native nativeClose(IJZ)V
.end method

.method private native nativeCreate(Ljava/lang/String;I)I
.end method

.method private native nativeGet(IJI)I
.end method

.method private native nativeOpen(IZ)J
.end method

.method private native nativeSet(IJII)V
.end method

.method private native nativeSize(I)I
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/util/MemoryIntArray;->isClosed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    .line 8
    .line 9
    iget-wide v1, p0, Landroid/util/MemoryIntArray;->mMemoryAddr:J

    .line 10
    .line 11
    iget-boolean v3, p0, Landroid/util/MemoryIntArray;->mIsOwner:Z

    .line 12
    .line 13
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/util/MemoryIntArray;->nativeClose(IJZ)V

    .line 14
    .line 15
    .line 16
    const/4 v0, -0x1

    .line 17
    iput v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    .line 18
    .line 19
    iget-object v0, p0, Landroid/util/MemoryIntArray;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 20
    .line 21
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    if-ne p0, p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    const-class v2, Landroid/util/MemoryIntArray;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    return v0

    .line 18
    :cond_2
    check-cast p1, Landroid/util/MemoryIntArray;

    .line 19
    .line 20
    iget v2, p0, Landroid/util/MemoryIntArray;->mFd:I

    .line 21
    .line 22
    iget p1, p1, Landroid/util/MemoryIntArray;->mFd:I

    .line 23
    .line 24
    if-ne v2, p1, :cond_3

    .line 25
    .line 26
    move v0, v1

    .line 27
    :cond_3
    return v0
.end method

.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/util/MemoryIntArray;->mCloseGuard:Ldalvik/system/CloseGuard;

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
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public get(I)I
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/util/MemoryIntArray;->enforceNotClosed()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroid/util/MemoryIntArray;->enforceValidIndex(I)V

    .line 5
    .line 6
    .line 7
    iget v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    .line 8
    .line 9
    iget-wide v1, p0, Landroid/util/MemoryIntArray;->mMemoryAddr:J

    .line 10
    .line 11
    invoke-direct {p0, v0, v1, v2, p1}, Landroid/util/MemoryIntArray;->nativeGet(IJI)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    return v0
.end method

.method public isClosed()Z
    .locals 2

    iget v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWritable()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/util/MemoryIntArray;->enforceNotClosed()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroid/util/MemoryIntArray;->mIsOwner:Z

    .line 5
    .line 6
    return v0
.end method

.method public set(II)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/util/MemoryIntArray;->enforceNotClosed()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/util/MemoryIntArray;->enforceWritable()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroid/util/MemoryIntArray;->enforceValidIndex(I)V

    .line 8
    .line 9
    .line 10
    iget v1, p0, Landroid/util/MemoryIntArray;->mFd:I

    .line 11
    .line 12
    iget-wide v2, p0, Landroid/util/MemoryIntArray;->mMemoryAddr:J

    .line 13
    .line 14
    move-object v0, p0

    .line 15
    move v4, p1

    .line 16
    move v5, p2

    .line 17
    invoke-direct/range {v0 .. v5}, Landroid/util/MemoryIntArray;->nativeSet(IJII)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/util/MemoryIntArray;->enforceNotClosed()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroid/util/MemoryIntArray;->nativeSize(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    and-int/lit8 p2, p2, -0x2

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 18
    .line 19
    .line 20
    throw p1
.end method
