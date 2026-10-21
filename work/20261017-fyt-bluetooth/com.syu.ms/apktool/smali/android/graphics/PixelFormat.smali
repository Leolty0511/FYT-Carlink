.class public Landroid/graphics/PixelFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A_8:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final JPEG:I = 0x100
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LA_88:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final L_8:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OPAQUE:I = -0x1

.field public static final RGBA_4444:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RGBA_5551:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RGBA_8888:I = 0x1

.field public static final RGBX_8888:I = 0x2

.field public static final RGB_332:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RGB_565:I = 0x4

.field public static final RGB_888:I = 0x3

.field public static final TRANSLUCENT:I = -0x3

.field public static final TRANSPARENT:I = -0x2

.field public static final UNKNOWN:I = 0x0

.field public static final YCbCr_420_SP:I = 0x11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final YCbCr_422_I:I = 0x14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final YCbCr_422_SP:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public bitsPerPixel:I

.field public bytesPerPixel:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatHasAlpha(I)Z
    .locals 2

    const/4 v0, -0x3

    const/4 v1, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, -0x2

    if-eq p0, v0, :cond_0

    if-eq p0, v1, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1
.end method

.method public static getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v2, 0x2

    if-eq p0, v2, :cond_4

    const/4 v3, 0x3

    if-eq p0, v3, :cond_3

    const/16 v3, 0x10

    if-eq p0, v0, :cond_2

    if-eq p0, v3, :cond_1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    const/16 v0, 0x14

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_0

    .line 1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unkonwon pixel format "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/16 p0, 0x8

    .line 2
    iput p0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    .line 3
    iput v1, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    goto :goto_0

    :cond_0
    const/16 p0, 0xc

    .line 4
    iput p0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    .line 5
    iput v1, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    goto :goto_0

    .line 6
    :cond_1
    iput v3, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    .line 7
    iput v1, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    goto :goto_0

    .line 8
    :cond_2
    :pswitch_1
    iput v3, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    .line 9
    iput v2, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    goto :goto_0

    :cond_3
    const/16 p0, 0x18

    .line 10
    iput p0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    .line 11
    iput v3, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    goto :goto_0

    :cond_4
    const/16 p0, 0x20

    .line 12
    iput p0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    .line 13
    iput v0, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
