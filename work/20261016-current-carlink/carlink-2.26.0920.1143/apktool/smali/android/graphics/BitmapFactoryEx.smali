.class public Landroid/graphics/BitmapFactoryEx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapFactoryEx"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeDrmStream(Landroid/drm/DrmManagerClientEx;Landroid/drm/DecryptHandle;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    :try_start_0
    iget-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    invoke-static {p0, p1, p2, v0, v2}, Landroid/graphics/BitmapFactoryEx;->nativeDecodeDrmStream(Landroid/drm/DrmManagerClientEx;Landroid/drm/DecryptHandle;Landroid/graphics/BitmapFactory$Options;ZF)Landroid/graphics/Bitmap;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    goto :goto_1

    .line 20
    :catch_0
    move-exception p0

    .line 21
    goto :goto_2

    .line 22
    :cond_1
    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 23
    .line 24
    if-eqz p2, :cond_3

    .line 25
    .line 26
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 27
    .line 28
    iget v3, p2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    int-to-float v2, v3

    .line 35
    int-to-float v0, v0

    .line 36
    div-float/2addr v2, v0

    .line 37
    :cond_2
    move v0, v3

    .line 38
    :cond_3
    const/4 v3, 0x1

    .line 39
    invoke-static {p0, p1, p2, v3, v2}, Landroid/graphics/BitmapFactoryEx;->nativeDecodeDrmStream(Landroid/drm/DrmManagerClientEx;Landroid/drm/DecryptHandle;Landroid/graphics/BitmapFactory$Options;ZF)Landroid/graphics/Bitmap;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->setDensity(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    :cond_4
    move-object p0, v1

    .line 51
    :goto_1
    return-object p0

    .line 52
    :goto_2
    const-string p1, "BitmapFactoryEx"

    .line 53
    .line 54
    const-string p2, "decodeDrmStream: failed!"

    .line 55
    .line 56
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .line 58
    .line 59
    return-object v1
.end method

.method private static native nativeDecodeDrmStream(Landroid/drm/DrmManagerClientEx;Landroid/drm/DecryptHandle;Landroid/graphics/BitmapFactory$Options;ZF)Landroid/graphics/Bitmap;
.end method
