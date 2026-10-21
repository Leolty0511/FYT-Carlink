.class public Landroid/graphics/ImageFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEPTH16:I = 0x44363159

.field public static final DEPTH_POINT_CLOUD:I = 0x101

.field public static final FLEX_RGBA_8888:I = 0x2a

.field public static final FLEX_RGB_888:I = 0x29

.field public static final JPEG:I = 0x100

.field public static final NV16:I = 0x10

.field public static final NV21:I = 0x11

.field public static final PRIVATE:I = 0x22

.field public static final RAW10:I = 0x25

.field public static final RAW12:I = 0x26

.field public static final RAW_DEPTH:I = 0x1002

.field public static final RAW_PRIVATE:I = 0x24

.field public static final RAW_SENSOR:I = 0x20

.field public static final RGB_565:I = 0x4

.field public static final UNKNOWN:I = 0x0

.field public static final Y16:I = 0x20363159

.field public static final Y8:I = 0x20203859

.field public static final YUV_420_888:I = 0x23

.field public static final YUV_422_888:I = 0x27

.field public static final YUV_444_888:I = 0x28

.field public static final YUY2:I = 0x14

.field public static final YV12:I = 0x32315659


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitsPerPixel(I)I
    .locals 4

    const/4 v0, 0x4

    const/16 v1, 0x10

    if-eq p0, v0, :cond_6

    const/16 v0, 0x14

    if-eq p0, v0, :cond_6

    const/16 v0, 0x20

    if-eq p0, v0, :cond_6

    const/16 v2, 0x23

    const/16 v3, 0xc

    if-eq p0, v2, :cond_5

    const/16 v2, 0x1002

    if-eq p0, v2, :cond_6

    const v2, 0x20203859

    if-eq p0, v2, :cond_4

    const v2, 0x20363159

    if-eq p0, v2, :cond_3

    const v2, 0x32315659

    if-eq p0, v2, :cond_2

    const v2, 0x44363159

    if-eq p0, v2, :cond_3

    if-eq p0, v1, :cond_1

    const/16 v2, 0x11

    if-eq p0, v2, :cond_0

    const/16 v2, 0x18

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    return v0

    :pswitch_1
    return v2

    :pswitch_2
    return v1

    :pswitch_3
    return v3

    :pswitch_4
    const/16 p0, 0xa

    return p0

    :cond_0
    return v3

    :cond_1
    return v1

    :cond_2
    return v3

    :cond_3
    return v1

    :cond_4
    const/16 p0, 0x8

    return p0

    :cond_5
    return v3

    :cond_6
    return v1

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isPublicFormat(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/16 v0, 0x14

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1002

    if-eq p0, v0, :cond_0

    const v0, 0x32315659

    if-eq p0, v0, :cond_0

    const v0, 0x44363159

    if-eq p0, v0, :cond_0

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    const/16 v0, 0x100

    if-eq p0, v0, :cond_0

    const/16 v0, 0x101

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
