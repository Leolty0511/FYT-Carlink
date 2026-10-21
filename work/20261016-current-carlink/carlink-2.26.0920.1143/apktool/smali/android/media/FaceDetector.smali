.class public Landroid/media/FaceDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/FaceDetector$Face;
    }
.end annotation


# static fields
.field private static sInitialized:Z = false


# instance fields
.field private mBWBuffer:[B

.field private mDCR:J

.field private mFD:J

.field private mHeight:I

.field private mMaxFaces:I

.field private mSDK:J

.field private mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "FFTEm"

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/media/FaceDetector;->nativeClassInit()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    sput-boolean v1, Landroid/media/FaceDetector;->sInitialized:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    const-string v1, "face detection library not found!"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Landroid/media/FaceDetector;->sInitialized:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/media/FaceDetector;->fft_initialize(III)I

    .line 10
    .line 11
    .line 12
    iput p1, p0, Landroid/media/FaceDetector;->mWidth:I

    .line 13
    .line 14
    iput p2, p0, Landroid/media/FaceDetector;->mHeight:I

    .line 15
    .line 16
    iput p3, p0, Landroid/media/FaceDetector;->mMaxFaces:I

    .line 17
    .line 18
    mul-int/2addr p1, p2

    .line 19
    new-array p1, p1, [B

    .line 20
    .line 21
    iput-object p1, p0, Landroid/media/FaceDetector;->mBWBuffer:[B

    .line 22
    .line 23
    return-void
.end method

.method private native fft_destroy()V
.end method

.method private native fft_detect(Landroid/graphics/Bitmap;)I
.end method

.method private native fft_get_face(Landroid/media/FaceDetector$Face;I)V
.end method

.method private native fft_initialize(III)I
.end method

.method private static native nativeClassInit()V
.end method


# virtual methods
.method public finalize()V
    .locals 0

    invoke-direct {p0}, Landroid/media/FaceDetector;->fft_destroy()V

    return-void
.end method

.method public findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I
    .locals 3

    .line 1
    sget-boolean v0, Landroid/media/FaceDetector;->sInitialized:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget v2, p0, Landroid/media/FaceDetector;->mWidth:I

    .line 12
    .line 13
    if-ne v0, v2, :cond_5

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget v2, p0, Landroid/media/FaceDetector;->mHeight:I

    .line 20
    .line 21
    if-ne v0, v2, :cond_5

    .line 22
    .line 23
    array-length v0, p2

    .line 24
    iget v2, p0, Landroid/media/FaceDetector;->mMaxFaces:I

    .line 25
    .line 26
    if-lt v0, v2, :cond_4

    .line 27
    .line 28
    invoke-direct {p0, p1}, Landroid/media/FaceDetector;->fft_detect(Landroid/graphics/Bitmap;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iget v0, p0, Landroid/media/FaceDetector;->mMaxFaces:I

    .line 33
    .line 34
    if-lt p1, v0, :cond_1

    .line 35
    .line 36
    move p1, v0

    .line 37
    :cond_1
    :goto_0
    if-ge v1, p1, :cond_3

    .line 38
    .line 39
    aget-object v0, p2, v1

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    new-instance v0, Landroid/media/FaceDetector$Face;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-direct {v0, p0, v2}, Landroid/media/FaceDetector$Face;-><init>(Landroid/media/FaceDetector;Landroid/media/FaceDetector$1;)V

    .line 47
    .line 48
    .line 49
    aput-object v0, p2, v1

    .line 50
    .line 51
    :cond_2
    aget-object v0, p2, v1

    .line 52
    .line 53
    invoke-direct {p0, v0, v1}, Landroid/media/FaceDetector;->fft_get_face(Landroid/media/FaceDetector$Face;I)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    return p1

    .line 60
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    const-string p2, "faces[] smaller than maxFaces"

    .line 63
    .line 64
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    const-string p2, "bitmap size doesn\'t match initialization"

    .line 71
    .line 72
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1
.end method
