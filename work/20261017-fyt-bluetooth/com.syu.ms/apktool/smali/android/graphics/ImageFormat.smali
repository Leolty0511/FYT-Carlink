.class public Landroid/graphics/ImageFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BAYER_RGGB:I = 0x200

.field public static final JPEG:I = 0x100

.field public static final NV16:I = 0x10

.field public static final NV21:I = 0x11

.field public static final RAW_SENSOR:I = 0x20

.field public static final RGB_565:I = 0x4

.field public static final UNKNOWN:I = 0x0

.field public static final Y16:I = 0x20363159

.field public static final Y8:I = 0x20203859

.field public static final YUV_420_888:I = 0x23

.field public static final YUY2:I = 0x14

.field public static final YV12:I = 0x32315659


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitsPerPixel(I)I
    .locals 3

    const/4 v0, 0x4

    const/16 v1, 0x10

    if-eq p0, v0, :cond_7

    const/16 v0, 0x14

    if-eq p0, v0, :cond_7

    const/16 v0, 0x20

    if-eq p0, v0, :cond_7

    const/16 v0, 0x23

    const/16 v2, 0xc

    if-eq p0, v0, :cond_6

    const/16 v0, 0x200

    if-eq p0, v0, :cond_5

    const v0, 0x20203859

    if-eq p0, v0, :cond_4

    const v0, 0x20363159

    if-eq p0, v0, :cond_3

    const v0, 0x32315659

    if-eq p0, v0, :cond_2

    if-eq p0, v1, :cond_1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v2

    :cond_1
    return v1

    :cond_2
    return v2

    :cond_3
    return v1

    :cond_4
    const/16 p0, 0x8

    return p0

    :cond_5
    return v1

    :cond_6
    return v2

    :cond_7
    return v1
.end method
