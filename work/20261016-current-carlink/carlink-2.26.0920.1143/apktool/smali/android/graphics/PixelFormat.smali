.class public Landroid/graphics/PixelFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/PixelFormat$Format;,
        Landroid/graphics/PixelFormat$Opacity;
    }
.end annotation


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

.field public static final RGBA_1010102:I = 0x2b

.field public static final RGBA_4444:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RGBA_5551:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RGBA_8888:I = 0x1

.field public static final RGBA_F16:I = 0x16

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

    const/16 v0, 0x16

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2b

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
    .locals 6

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p0, v1, :cond_5

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-eq p0, v2, :cond_5

    .line 7
    .line 8
    const/4 v3, 0x3

    .line 9
    if-eq p0, v3, :cond_4

    .line 10
    .line 11
    const/16 v3, 0x10

    .line 12
    .line 13
    if-eq p0, v0, :cond_3

    .line 14
    .line 15
    if-eq p0, v3, :cond_2

    .line 16
    .line 17
    const/16 v4, 0x11

    .line 18
    .line 19
    if-eq p0, v4, :cond_1

    .line 20
    .line 21
    const/16 v4, 0x14

    .line 22
    .line 23
    if-eq p0, v4, :cond_2

    .line 24
    .line 25
    const/16 v4, 0x16

    .line 26
    .line 27
    const/16 v5, 0x8

    .line 28
    .line 29
    if-eq p0, v4, :cond_0

    .line 30
    .line 31
    const/16 v4, 0x2b

    .line 32
    .line 33
    if-eq p0, v4, :cond_5

    .line 34
    .line 35
    packed-switch p0, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string/jumbo v0, "unknown pixel format "

    .line 41
    .line 42
    .line 43
    invoke-static {v0, p0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :pswitch_0
    iput v5, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    .line 52
    .line 53
    iput v1, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/16 p0, 0x40

    .line 57
    .line 58
    iput p0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    .line 59
    .line 60
    iput v5, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const/16 p0, 0xc

    .line 64
    .line 65
    iput p0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    .line 66
    .line 67
    iput v1, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iput v3, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    .line 71
    .line 72
    iput v1, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    :pswitch_1
    iput v3, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    .line 76
    .line 77
    iput v2, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    const/16 p0, 0x18

    .line 81
    .line 82
    iput p0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    .line 83
    .line 84
    iput v3, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_5
    const/16 p0, 0x20

    .line 88
    .line 89
    iput p0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    .line 90
    .line 91
    iput v0, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    .line 92
    .line 93
    :goto_0
    return-void

    .line 94
    nop

    .line 95
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

.method public static isPublicFormat(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/16 v1, 0x16

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2b

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method
