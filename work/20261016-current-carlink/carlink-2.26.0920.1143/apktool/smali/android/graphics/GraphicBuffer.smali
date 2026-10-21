.class public Landroid/graphics/GraphicBuffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/GraphicBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public static final USAGE_HW_2D:I = 0x400

.field public static final USAGE_HW_COMPOSER:I = 0x800

.field public static final USAGE_HW_MASK:I = 0x71f00

.field public static final USAGE_HW_RENDER:I = 0x200

.field public static final USAGE_HW_TEXTURE:I = 0x100

.field public static final USAGE_HW_VIDEO_ENCODER:I = 0x10000

.field public static final USAGE_PROTECTED:I = 0x4000

.field public static final USAGE_SOFTWARE_MASK:I = 0xff

.field public static final USAGE_SW_READ_MASK:I = 0xf

.field public static final USAGE_SW_READ_NEVER:I = 0x0

.field public static final USAGE_SW_READ_OFTEN:I = 0x3

.field public static final USAGE_SW_READ_RARELY:I = 0x2

.field public static final USAGE_SW_WRITE_MASK:I = 0xf0

.field public static final USAGE_SW_WRITE_NEVER:I = 0x0

.field public static final USAGE_SW_WRITE_OFTEN:I = 0x30

.field public static final USAGE_SW_WRITE_RARELY:I = 0x20


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mDestroyed:Z

.field private final mFormat:I

.field private final mHeight:I

.field private final mNativeObject:J

.field private mSaveCount:I

.field private final mUsage:I

.field private final mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/GraphicBuffer$1;

    invoke-direct {v0}, Landroid/graphics/GraphicBuffer$1;-><init>()V

    sput-object v0, Landroid/graphics/GraphicBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIIIJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroid/graphics/GraphicBuffer;->mWidth:I

    .line 4
    iput p2, p0, Landroid/graphics/GraphicBuffer;->mHeight:I

    .line 5
    iput p3, p0, Landroid/graphics/GraphicBuffer;->mFormat:I

    .line 6
    iput p4, p0, Landroid/graphics/GraphicBuffer;->mUsage:I

    .line 7
    iput-wide p5, p0, Landroid/graphics/GraphicBuffer;->mNativeObject:J

    return-void
.end method

.method public synthetic constructor <init>(IIIIJLandroid/graphics/GraphicBuffer$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Landroid/graphics/GraphicBuffer;-><init>(IIIIJ)V

    return-void
.end method

.method public static synthetic access$000(Landroid/os/Parcel;)J
    .locals 2

    invoke-static {p0}, Landroid/graphics/GraphicBuffer;->nReadGraphicBufferFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static create(IIII)Landroid/graphics/GraphicBuffer;
    .locals 8

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/GraphicBuffer;->nCreateGraphicBuffer(IIII)J

    .line 2
    .line 3
    .line 4
    move-result-wide v5

    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long v0, v5, v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v7, Landroid/graphics/GraphicBuffer;

    .line 12
    .line 13
    move-object v0, v7

    .line 14
    move v1, p0

    .line 15
    move v2, p1

    .line 16
    move v3, p2

    .line 17
    move v4, p3

    .line 18
    invoke-direct/range {v0 .. v6}, Landroid/graphics/GraphicBuffer;-><init>(IIIIJ)V

    .line 19
    .line 20
    .line 21
    return-object v7

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method public static createFromExisting(IIIIJ)Landroid/graphics/GraphicBuffer;
    .locals 7

    .line 1
    invoke-static {p4, p5}, Landroid/graphics/GraphicBuffer;->nWrapGraphicBuffer(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide v5

    .line 5
    const-wide/16 p4, 0x0

    .line 6
    .line 7
    cmp-long p4, v5, p4

    .line 8
    .line 9
    if-eqz p4, :cond_0

    .line 10
    .line 11
    new-instance p4, Landroid/graphics/GraphicBuffer;

    .line 12
    .line 13
    move-object v0, p4

    .line 14
    move v1, p0

    .line 15
    move v2, p1

    .line 16
    move v3, p2

    .line 17
    move v4, p3

    .line 18
    invoke-direct/range {v0 .. v6}, Landroid/graphics/GraphicBuffer;-><init>(IIIIJ)V

    .line 19
    .line 20
    .line 21
    return-object p4

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method private static native nCreateGraphicBuffer(IIII)J
.end method

.method private static native nDestroyGraphicBuffer(J)V
.end method

.method private static native nLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)Z
.end method

.method private static native nReadGraphicBufferFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native nUnlockCanvasAndPost(JLandroid/graphics/Canvas;)Z
.end method

.method private static native nWrapGraphicBuffer(J)J
.end method

.method private static native nWriteGraphicBufferToParcel(JLandroid/os/Parcel;)V
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/graphics/GraphicBuffer;->mDestroyed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroid/graphics/GraphicBuffer;->mDestroyed:Z

    .line 7
    .line 8
    iget-wide v0, p0, Landroid/graphics/GraphicBuffer;->mNativeObject:J

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/graphics/GraphicBuffer;->nDestroyGraphicBuffer(J)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 2

    .line 1
    :try_start_0
    iget-boolean v0, p0, Landroid/graphics/GraphicBuffer;->mDestroyed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Landroid/graphics/GraphicBuffer;->mNativeObject:J

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/graphics/GraphicBuffer;->nDestroyGraphicBuffer(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public getFormat()I
    .locals 1

    iget v0, p0, Landroid/graphics/GraphicBuffer;->mFormat:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid/graphics/GraphicBuffer;->mHeight:I

    return v0
.end method

.method public getUsage()I
    .locals 1

    iget v0, p0, Landroid/graphics/GraphicBuffer;->mUsage:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid/graphics/GraphicBuffer;->mWidth:I

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/GraphicBuffer;->mDestroyed:Z

    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/graphics/GraphicBuffer;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 4

    .line 2
    iget-boolean v0, p0, Landroid/graphics/GraphicBuffer;->mDestroyed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/graphics/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Landroid/graphics/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    .line 5
    :cond_1
    iget-wide v2, p0, Landroid/graphics/GraphicBuffer;->mNativeObject:J

    iget-object v0, p0, Landroid/graphics/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v2, v3, v0, p1}, Landroid/graphics/GraphicBuffer;->nLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Landroid/graphics/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p1

    iput p1, p0, Landroid/graphics/GraphicBuffer;->mSaveCount:I

    .line 7
    iget-object p1, p0, Landroid/graphics/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    return-object p1

    :cond_2
    return-object v1
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/graphics/GraphicBuffer;->mDestroyed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/graphics/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Landroid/graphics/GraphicBuffer;->mSaveCount:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput p1, p0, Landroid/graphics/GraphicBuffer;->mSaveCount:I

    .line 18
    .line 19
    iget-wide v0, p0, Landroid/graphics/GraphicBuffer;->mNativeObject:J

    .line 20
    .line 21
    iget-object p1, p0, Landroid/graphics/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    .line 22
    .line 23
    invoke-static {v0, v1, p1}, Landroid/graphics/GraphicBuffer;->nUnlockCanvasAndPost(JLandroid/graphics/Canvas;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-boolean p2, p0, Landroid/graphics/GraphicBuffer;->mDestroyed:Z

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    iget p2, p0, Landroid/graphics/GraphicBuffer;->mWidth:I

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    .line 9
    .line 10
    iget p2, p0, Landroid/graphics/GraphicBuffer;->mHeight:I

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    .line 14
    .line 15
    iget p2, p0, Landroid/graphics/GraphicBuffer;->mFormat:I

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    .line 19
    .line 20
    iget p2, p0, Landroid/graphics/GraphicBuffer;->mUsage:I

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    .line 24
    .line 25
    iget-wide v0, p0, Landroid/graphics/GraphicBuffer;->mNativeObject:J

    .line 26
    .line 27
    invoke-static {v0, v1, p1}, Landroid/graphics/GraphicBuffer;->nWriteGraphicBufferToParcel(JLandroid/os/Parcel;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string p2, "This GraphicBuffer has been destroyed and cannot be written to a parcel."

    .line 34
    .line 35
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method
