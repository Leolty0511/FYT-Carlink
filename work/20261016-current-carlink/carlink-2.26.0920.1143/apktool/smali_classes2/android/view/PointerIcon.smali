.class public final Landroid/view/PointerIcon;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/PointerIcon;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PointerIcon"

.field public static final TYPE_ALIAS:I = 0x3f2

.field public static final TYPE_ALL_SCROLL:I = 0x3f5

.field public static final TYPE_ARROW:I = 0x3e8

.field public static final TYPE_CELL:I = 0x3ee

.field public static final TYPE_CONTEXT_MENU:I = 0x3e9

.field public static final TYPE_COPY:I = 0x3f3

.field public static final TYPE_CROSSHAIR:I = 0x3ef

.field public static final TYPE_CUSTOM:I = -0x1

.field public static final TYPE_DEFAULT:I = 0x3e8

.field public static final TYPE_GRAB:I = 0x3fc

.field public static final TYPE_GRABBING:I = 0x3fd

.field public static final TYPE_HAND:I = 0x3ea

.field public static final TYPE_HELP:I = 0x3eb

.field public static final TYPE_HORIZONTAL_DOUBLE_ARROW:I = 0x3f6

.field public static final TYPE_NOT_SPECIFIED:I = 0x1

.field public static final TYPE_NO_DROP:I = 0x3f4

.field public static final TYPE_NULL:I = 0x0

.field private static final TYPE_OEM_FIRST:I = 0x2710

.field public static final TYPE_SPOT_ANCHOR:I = 0x7d2

.field public static final TYPE_SPOT_HOVER:I = 0x7d0

.field public static final TYPE_SPOT_TOUCH:I = 0x7d1

.field public static final TYPE_TEXT:I = 0x3f0

.field public static final TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW:I = 0x3f9

.field public static final TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW:I = 0x3f8

.field public static final TYPE_VERTICAL_DOUBLE_ARROW:I = 0x3f7

.field public static final TYPE_VERTICAL_TEXT:I = 0x3f1

.field public static final TYPE_WAIT:I = 0x3ec

.field public static final TYPE_ZOOM_IN:I = 0x3fa

.field public static final TYPE_ZOOM_OUT:I = 0x3fb

.field private static final gNullIcon:Landroid/view/PointerIcon;

.field private static final gSystemIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/PointerIcon;",
            ">;"
        }
    .end annotation
.end field

.field private static sUseLargeIcons:Z


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapFrames:[Landroid/graphics/Bitmap;

.field private mDurationPerFrame:I

.field private mHotSpotX:F

.field private mHotSpotY:F

.field private mSystemIconResourceId:I

.field private final mType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/PointerIcon;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    .line 8
    .line 9
    new-instance v0, Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Landroid/view/PointerIcon;->gSystemIcons:Landroid/util/SparseArray;

    .line 15
    .line 16
    sput-boolean v1, Landroid/view/PointerIcon;->sUseLargeIcons:Z

    .line 17
    .line 18
    new-instance v0, Landroid/view/PointerIcon$1;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/view/PointerIcon$1;-><init>()V

    .line 21
    .line 22
    .line 23
    sput-object v0, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 24
    .line 25
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroid/view/PointerIcon;->mType:I

    return-void
.end method

.method public synthetic constructor <init>(ILandroid/view/PointerIcon$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/PointerIcon;-><init>(I)V

    return-void
.end method

.method public static synthetic access$102(Landroid/view/PointerIcon;I)I
    .locals 0

    iput p1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    return p1
.end method

.method public static create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroid/view/PointerIcon;->validateHotSpot(Landroid/graphics/Bitmap;FF)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/view/PointerIcon;

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object p0, v0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    iput p1, v0, Landroid/view/PointerIcon;->mHotSpotX:F

    .line 15
    .line 16
    iput p2, v0, Landroid/view/PointerIcon;->mHotSpotY:F

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string p1, "bitmap must not be null"

    .line 22
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0
.end method

.method public static getDefaultIcon(Landroid/content/Context;)Landroid/view/PointerIcon;
    .locals 1

    const/16 v0, 0x3e8

    invoke-static {p0, v0}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0
.end method

.method public static getNullIcon()Landroid/view/PointerIcon;
    .locals 1

    sget-object v0, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    return-object v0
.end method

.method public static getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;
    .locals 7

    .line 1
    if-eqz p0, :cond_7

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    sget-object p0, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    sget-object v0, Landroid/view/PointerIcon;->gSystemIcons:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroid/view/PointerIcon;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_1
    invoke-static {p1}, Landroid/view/PointerIcon;->getSystemIconTypeIndex(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/16 v2, 0x3e8

    .line 24
    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    invoke-static {v2}, Landroid/view/PointerIcon;->getSystemIconTypeIndex(I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    :cond_2
    sget-boolean v3, Landroid/view/PointerIcon;->sUseLargeIcons:Z

    .line 32
    .line 33
    if-eqz v3, :cond_3

    .line 34
    .line 35
    const v3, 0x1030318

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    const v3, 0x103031d

    .line 40
    .line 41
    .line 42
    :goto_0
    sget-object v4, Lcom/android/internal/R$styleable;->Pointer:[I

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v6, 0x0

    .line 46
    invoke-virtual {p0, v6, v4, v5, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const/4 v4, -0x1

    .line 51
    invoke-virtual {v3, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    .line 57
    .line 58
    if-ne v1, v4, :cond_5

    .line 59
    .line 60
    const-string v0, "Missing theme resources for pointer icon type "

    .line 61
    .line 62
    const-string v1, "PointerIcon"

    .line 63
    .line 64
    invoke-static {v0, p1, v1}, Landroid/app/m;->A(Ljava/lang/String;ILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    if-ne p1, v2, :cond_4

    .line 68
    .line 69
    sget-object p0, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    invoke-static {p0, v2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    :goto_1
    return-object p0

    .line 77
    :cond_5
    new-instance v2, Landroid/view/PointerIcon;

    .line 78
    .line 79
    invoke-direct {v2, p1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 80
    .line 81
    .line 82
    const/high16 v3, -0x1000000

    .line 83
    .line 84
    and-int/2addr v3, v1

    .line 85
    const/high16 v4, 0x1000000

    .line 86
    .line 87
    if-ne v3, v4, :cond_6

    .line 88
    .line 89
    iput v1, v2, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-direct {v2, p0, v3, v1}, Landroid/view/PointerIcon;->loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    .line 97
    .line 98
    .line 99
    :goto_2
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    return-object v2

    .line 103
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 104
    .line 105
    const-string p1, "context must not be null"

    .line 106
    .line 107
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p0
.end method

.method private static getSystemIconTypeIndex(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0xd

    return p0

    :pswitch_1
    const/16 p0, 0xf

    return p0

    :pswitch_2
    const/16 p0, 0xe

    return p0

    :pswitch_3
    const/16 p0, 0x8

    return p0

    :pswitch_4
    const/4 p0, 0x7

    return p0

    :pswitch_5
    const/16 p0, 0x17

    return p0

    :pswitch_6
    const/16 p0, 0x16

    return p0

    :pswitch_7
    const/16 p0, 0x11

    return p0

    :pswitch_8
    const/16 p0, 0x12

    return p0

    :pswitch_9
    const/16 p0, 0x13

    return p0

    :pswitch_a
    const/16 p0, 0xb

    return p0

    :pswitch_b
    const/4 p0, 0x1

    return p0

    :pswitch_c
    const/16 p0, 0xc

    return p0

    :pswitch_d
    const/4 p0, 0x5

    return p0

    :pswitch_e
    const/16 p0, 0x14

    return p0

    :pswitch_f
    const/16 p0, 0x10

    return p0

    :pswitch_10
    const/4 p0, 0x6

    return p0

    :pswitch_11
    const/4 p0, 0x3

    return p0

    :pswitch_12
    const/16 p0, 0x15

    return p0

    :pswitch_13
    const/16 p0, 0xa

    return p0

    :pswitch_14
    const/16 p0, 0x9

    return p0

    :pswitch_15
    const/4 p0, 0x4

    return p0

    :pswitch_16
    const/4 p0, 0x2

    return p0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3ee
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3f3
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7d0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static load(Landroid/content/res/Resources;I)Landroid/view/PointerIcon;
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Landroid/view/PointerIcon;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1, p0, p1}, Landroid/view/PointerIcon;->loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    return-object v0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "resources must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V
    .locals 8

    .line 1
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    :try_start_0
    const-string v0, "pointer-icon"

    .line 6
    .line 7
    invoke-static {p3, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/android/internal/R$styleable;->PointerIcon:[I

    .line 11
    .line 12
    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x1

    .line 23
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const/4 v6, 0x2

    .line 28
    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 36
    .line 37
    .line 38
    if-eqz v2, :cond_7

    .line 39
    .line 40
    if-nez p1, :cond_0

    .line 41
    .line 42
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    :goto_0
    instance-of p2, p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 52
    .line 53
    if-eqz p2, :cond_5

    .line 54
    .line 55
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    if-ne p2, v4, :cond_1

    .line 66
    .line 67
    const-string p1, "PointerIcon"

    .line 68
    .line 69
    const-string p2, "Animation icon with single frame -- simply treating the first frame as a normal bitmap icon."

    .line 70
    .line 71
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_1
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iput v0, p0, Landroid/view/PointerIcon;->mDurationPerFrame:I

    .line 80
    .line 81
    add-int/lit8 v0, p2, -0x1

    .line 82
    .line 83
    new-array v0, v0, [Landroid/graphics/Bitmap;

    .line 84
    .line 85
    iput-object v0, p0, Landroid/view/PointerIcon;->mBitmapFrames:[Landroid/graphics/Bitmap;

    .line 86
    .line 87
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    :goto_1
    if-ge v4, p2, :cond_4

    .line 96
    .line 97
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    instance-of v6, v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 102
    .line 103
    if-eqz v6, :cond_3

    .line 104
    .line 105
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-ne v6, v0, :cond_2

    .line 110
    .line 111
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-ne v6, v1, :cond_2

    .line 116
    .line 117
    iget-object v6, p0, Landroid/view/PointerIcon;->mBitmapFrames:[Landroid/graphics/Bitmap;

    .line 118
    .line 119
    add-int/lit8 v7, v4, -0x1

    .line 120
    .line 121
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 122
    .line 123
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    aput-object v2, v6, v7

    .line 128
    .line 129
    add-int/lit8 v4, v4, 0x1

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 133
    .line 134
    const-string p2, "The bitmap size of "

    .line 135
    .line 136
    const-string p3, "-th frame is different. All frames should have the exact same size and share the same hotspot."

    .line 137
    .line 138
    invoke-static {p2, v4, p3}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p1

    .line 146
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 147
    .line 148
    const-string p2, "Frame of an animated pointer icon must refer to a bitmap drawable."

    .line 149
    .line 150
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p1

    .line 154
    :cond_4
    :goto_2
    move-object p1, p3

    .line 155
    :cond_5
    instance-of p2, p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 156
    .line 157
    if-eqz p2, :cond_6

    .line 158
    .line 159
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    iput-object p1, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    .line 166
    .line 167
    iput v5, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    .line 168
    .line 169
    iput v3, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    .line 170
    .line 171
    return-void

    .line 172
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 173
    .line 174
    const-string p2, "<pointer-icon> bitmap attribute must refer to a bitmap drawable."

    .line 175
    .line 176
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw p1

    .line 180
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 181
    .line 182
    const-string p2, "<pointer-icon> is missing bitmap attribute."

    .line 183
    .line 184
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw p1

    .line 188
    :catchall_0
    move-exception p1

    .line 189
    goto :goto_3

    .line 190
    :catch_0
    move-exception p1

    .line 191
    :try_start_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 192
    .line 193
    const-string v0, "Exception parsing pointer icon resource."

    .line 194
    .line 195
    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    .line 197
    .line 198
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    :goto_3
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 200
    .line 201
    .line 202
    throw p1
.end method

.method public static setUseLargeIcons(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Landroid/view/PointerIcon;->sUseLargeIcons:Z

    .line 2
    .line 3
    sget-object p0, Landroid/view/PointerIcon;->gSystemIcons:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static validateHotSpot(Landroid/graphics/Bitmap;FF)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    .line 4
    if-ltz v1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    int-to-float v1, v1

    .line 11
    cmpl-float p1, p1, v1

    .line 12
    .line 13
    if-gez p1, :cond_1

    .line 14
    .line 15
    cmpg-float p1, p2, v0

    .line 16
    .line 17
    if-ltz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    int-to-float p0, p0

    .line 24
    cmpl-float p0, p2, p0

    .line 25
    .line 26
    if-gez p0, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string/jumbo p1, "y hotspot lies outside of the bitmap area"

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string/jumbo p1, "x hotspot lies outside of the bitmap area"

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_5

    .line 7
    .line 8
    instance-of v2, p1, Landroid/view/PointerIcon;

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    check-cast p1, Landroid/view/PointerIcon;

    .line 14
    .line 15
    iget v2, p0, Landroid/view/PointerIcon;->mType:I

    .line 16
    .line 17
    iget v3, p1, Landroid/view/PointerIcon;->mType:I

    .line 18
    .line 19
    if-ne v2, v3, :cond_5

    .line 20
    .line 21
    iget v2, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    .line 22
    .line 23
    iget v3, p1, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    .line 24
    .line 25
    if-eq v2, v3, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    if-nez v2, :cond_4

    .line 29
    .line 30
    iget-object v2, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    .line 31
    .line 32
    iget-object v3, p1, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    .line 33
    .line 34
    if-ne v2, v3, :cond_3

    .line 35
    .line 36
    iget v2, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    .line 37
    .line 38
    iget v3, p1, Landroid/view/PointerIcon;->mHotSpotX:F

    .line 39
    .line 40
    cmpl-float v2, v2, v3

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    iget v2, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    .line 45
    .line 46
    iget p1, p1, Landroid/view/PointerIcon;->mHotSpotY:F

    .line 47
    .line 48
    cmpl-float p1, v2, p1

    .line 49
    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    :cond_3
    return v1

    .line 53
    :cond_4
    return v0

    .line 54
    :cond_5
    :goto_0
    return v1
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/view/PointerIcon;->mType:I

    return v0
.end method

.method public load(Landroid/content/Context;)Landroid/view/PointerIcon;
    .locals 3

    if-eqz p1, :cond_2

    .line 4
    iget v0, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Landroid/view/PointerIcon;

    iget v1, p0, Landroid/view/PointerIcon;->mType:I

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 6
    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    iput v1, v0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    invoke-direct {v0, p1, v1, v2}, Landroid/view/PointerIcon;->loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "context must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/PointerIcon;->mType:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroid/view/PointerIcon;->mType:I

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    .line 14
    .line 15
    iget v0, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    .line 20
    .line 21
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 22
    .line 23
    .line 24
    iget p2, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 27
    .line 28
    .line 29
    iget p2, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method
