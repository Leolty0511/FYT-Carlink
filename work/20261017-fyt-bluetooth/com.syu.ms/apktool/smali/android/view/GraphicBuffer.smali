.class public Landroid/view/GraphicBuffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/GraphicBuffer;",
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

.field private final mNativeObject:I

.field private mSaveCount:I

.field private final mUsage:I

.field private final mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/GraphicBuffer$1;

    invoke-direct {v0}, Landroid/view/GraphicBuffer$1;-><init>()V

    sput-object v0, Landroid/view/GraphicBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroid/view/GraphicBuffer;->mWidth:I

    .line 4
    iput p2, p0, Landroid/view/GraphicBuffer;->mHeight:I

    .line 5
    iput p3, p0, Landroid/view/GraphicBuffer;->mFormat:I

    .line 6
    iput p4, p0, Landroid/view/GraphicBuffer;->mUsage:I

    .line 7
    iput p5, p0, Landroid/view/GraphicBuffer;->mNativeObject:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIILandroid/view/GraphicBuffer$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroid/view/GraphicBuffer;-><init>(IIIII)V

    return-void
.end method

.method public static synthetic access$000(Landroid/os/Parcel;)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/view/GraphicBuffer;->nReadGraphicBufferFromParcel(Landroid/os/Parcel;)I

    move-result p0

    return p0
.end method

.method public static create(IIII)Landroid/view/GraphicBuffer;
    .locals 7

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroid/view/GraphicBuffer;->nCreateGraphicBuffer(IIII)I

    move-result v5

    if-eqz v5, :cond_0

    .line 2
    new-instance v6, Landroid/view/GraphicBuffer;

    move-object v0, v6

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/GraphicBuffer;-><init>(IIIII)V

    return-object v6

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static native nCreateGraphicBuffer(IIII)I
.end method

.method private static native nDestroyGraphicBuffer(I)V
.end method

.method private static native nLockCanvas(ILandroid/graphics/Canvas;Landroid/graphics/Rect;)Z
.end method

.method private static native nReadGraphicBufferFromParcel(Landroid/os/Parcel;)I
.end method

.method private static native nUnlockCanvasAndPost(ILandroid/graphics/Canvas;)Z
.end method

.method private static native nWriteGraphicBufferToParcel(ILandroid/os/Parcel;)V
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/view/GraphicBuffer;->mDestroyed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/view/GraphicBuffer;->mDestroyed:Z

    .line 3
    iget v0, p0, Landroid/view/GraphicBuffer;->mNativeObject:I

    invoke-static {v0}, Landroid/view/GraphicBuffer;->nDestroyGraphicBuffer(I)V

    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    iget-boolean v0, p0, Landroid/view/GraphicBuffer;->mDestroyed:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/GraphicBuffer;->mNativeObject:I

    invoke-static {v0}, Landroid/view/GraphicBuffer;->nDestroyGraphicBuffer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getFormat()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/GraphicBuffer;->mFormat:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/GraphicBuffer;->mHeight:I

    return v0
.end method

.method public getUsage()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/GraphicBuffer;->mUsage:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/GraphicBuffer;->mWidth:I

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/view/GraphicBuffer;->mDestroyed:Z

    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/GraphicBuffer;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 3

    .line 2
    iget-boolean v0, p0, Landroid/view/GraphicBuffer;->mDestroyed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/view/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Landroid/view/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    .line 5
    :cond_1
    iget v0, p0, Landroid/view/GraphicBuffer;->mNativeObject:I

    iget-object v2, p0, Landroid/view/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v0, v2, p1}, Landroid/view/GraphicBuffer;->nLockCanvas(ILandroid/graphics/Canvas;Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Landroid/view/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p1

    iput p1, p0, Landroid/view/GraphicBuffer;->mSaveCount:I

    .line 7
    iget-object p1, p0, Landroid/view/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    return-object p1

    :cond_2
    return-object v1
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/view/GraphicBuffer;->mDestroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_0

    .line 2
    iget v0, p0, Landroid/view/GraphicBuffer;->mSaveCount:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Landroid/view/GraphicBuffer;->mSaveCount:I

    .line 4
    iget p1, p0, Landroid/view/GraphicBuffer;->mNativeObject:I

    iget-object v0, p0, Landroid/view/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {p1, v0}, Landroid/view/GraphicBuffer;->nUnlockCanvasAndPost(ILandroid/graphics/Canvas;)Z

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Landroid/view/GraphicBuffer;->mDestroyed:Z

    if-nez p2, :cond_0

    .line 2
    iget p2, p0, Landroid/view/GraphicBuffer;->mWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Landroid/view/GraphicBuffer;->mHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Landroid/view/GraphicBuffer;->mFormat:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Landroid/view/GraphicBuffer;->mUsage:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Landroid/view/GraphicBuffer;->mNativeObject:I

    invoke-static {p2, p1}, Landroid/view/GraphicBuffer;->nWriteGraphicBufferToParcel(ILandroid/os/Parcel;)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This GraphicBuffer has been destroyed and cannot be written to a parcel."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
