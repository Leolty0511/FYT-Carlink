.class public Landroid/filterfw/format/ImageFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COLORSPACE_GRAY:I = 0x1

.field public static final COLORSPACE_KEY:Ljava/lang/String; = "colorspace"

.field public static final COLORSPACE_RGB:I = 0x2

.field public static final COLORSPACE_RGBA:I = 0x3

.field public static final COLORSPACE_YUV:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesPerSampleForColorspace(I)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_3

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    const/4 v1, 0x3

    .line 6
    if-eq p0, v0, :cond_2

    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    if-eq p0, v1, :cond_1

    .line 10
    .line 11
    if-ne p0, v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 15
    .line 16
    const-string v1, "Unknown colorspace id "

    .line 17
    .line 18
    const-string v2, "!"

    .line 19
    .line 20
    invoke-static {v1, p0, v2}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :cond_1
    return v0

    .line 29
    :cond_2
    return v1

    .line 30
    :cond_3
    return v0
.end method

.method public static create(I)Landroid/filterfw/core/MutableFrameFormat;
    .locals 2

    const/4 v0, 0x0

    .line 10
    invoke-static {p0}, Landroid/filterfw/format/ImageFormat;->bytesPerSampleForColorspace(I)I

    move-result v1

    .line 11
    invoke-static {v0, v0, p0, v1, v0}, Landroid/filterfw/format/ImageFormat;->create(IIIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object p0

    return-object p0
.end method

.method public static create(II)Landroid/filterfw/core/MutableFrameFormat;
    .locals 2

    const/4 v0, 0x0

    .line 8
    invoke-static {p0}, Landroid/filterfw/format/ImageFormat;->bytesPerSampleForColorspace(I)I

    move-result v1

    .line 9
    invoke-static {v0, v0, p0, v1, p1}, Landroid/filterfw/format/ImageFormat;->create(IIIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object p0

    return-object p0
.end method

.method public static create(IIII)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1

    .line 6
    invoke-static {p2}, Landroid/filterfw/format/ImageFormat;->bytesPerSampleForColorspace(I)I

    move-result v0

    .line 7
    invoke-static {p0, p1, p2, v0, p3}, Landroid/filterfw/format/ImageFormat;->create(IIIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object p0

    return-object p0
.end method

.method public static create(IIIII)Landroid/filterfw/core/MutableFrameFormat;
    .locals 2

    .line 1
    new-instance v0, Landroid/filterfw/core/MutableFrameFormat;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p4}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    .line 2
    invoke-virtual {v0, p0, p1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 3
    invoke-virtual {v0, p3}, Landroid/filterfw/core/MutableFrameFormat;->setBytesPerSample(I)V

    const-string p0, "colorspace"

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/filterfw/core/MutableFrameFormat;->setMetaValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x1

    if-ne p4, p0, :cond_0

    .line 5
    const-class p0, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Landroid/filterfw/core/MutableFrameFormat;->setObjectClass(Ljava/lang/Class;)V

    :cond_0
    return-object v0
.end method
