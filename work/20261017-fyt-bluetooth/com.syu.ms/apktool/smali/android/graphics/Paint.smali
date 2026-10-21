.class public Landroid/graphics/Paint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Paint$FontMetricsInt;,
        Landroid/graphics/Paint$FontMetrics;,
        Landroid/graphics/Paint$Align;,
        Landroid/graphics/Paint$Join;,
        Landroid/graphics/Paint$Cap;,
        Landroid/graphics/Paint$Style;
    }
.end annotation


# static fields
.field public static final ANTI_ALIAS_FLAG:I = 0x1

.field public static final AUTO_HINTING_TEXT_FLAG:I = 0x800

.field public static final BIDI_DEFAULT_LTR:I = 0x2

.field public static final BIDI_DEFAULT_RTL:I = 0x3

.field private static final BIDI_FLAG_MASK:I = 0x7

.field public static final BIDI_FORCE_LTR:I = 0x4

.field public static final BIDI_FORCE_RTL:I = 0x5

.field public static final BIDI_LTR:I = 0x0

.field private static final BIDI_MAX_FLAG_VALUE:I = 0x5

.field public static final BIDI_RTL:I = 0x1

.field public static final CURSOR_AFTER:I = 0x0

.field public static final CURSOR_AT:I = 0x4

.field public static final CURSOR_AT_OR_AFTER:I = 0x1

.field public static final CURSOR_AT_OR_BEFORE:I = 0x3

.field public static final CURSOR_BEFORE:I = 0x2

.field private static final CURSOR_OPT_MAX_VALUE:I = 0x4

.field public static final DEFAULT_PAINT_FLAGS:I = 0x500

.field public static final DEV_KERN_TEXT_FLAG:I = 0x100

.field public static final DIRECTION_LTR:I = 0x0

.field public static final DIRECTION_RTL:I = 0x1

.field public static final DITHER_FLAG:I = 0x4

.field public static final EMBEDDED_BITMAP_TEXT_FLAG:I = 0x400

.field public static final FAKE_BOLD_TEXT_FLAG:I = 0x20

.field public static final FILTER_BITMAP_FLAG:I = 0x2

.field public static final HINTING_OFF:I = 0x0

.field public static final HINTING_ON:I = 0x1

.field public static final LCD_RENDER_TEXT_FLAG:I = 0x200

.field public static final LINEAR_TEXT_FLAG:I = 0x40

.field public static final STRIKE_THRU_TEXT_FLAG:I = 0x10

.field public static final SUBPIXEL_TEXT_FLAG:I = 0x80

.field public static final UNDERLINE_TEXT_FLAG:I = 0x8

.field public static final VERTICAL_TEXT_FLAG:I = 0x1000

.field public static final sAlignArray:[Landroid/graphics/Paint$Align;

.field public static final sCapArray:[Landroid/graphics/Paint$Cap;

.field public static final sJoinArray:[Landroid/graphics/Paint$Join;

.field public static final sStyleArray:[Landroid/graphics/Paint$Style;


# instance fields
.field public hasShadow:Z

.field public mBidiFlags:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mCompatScaling:F

.field private mHasCompatScaling:Z

.field private mInvCompatScaling:F

.field private mLocale:Ljava/util/Locale;

.field private mMaskFilter:Landroid/graphics/MaskFilter;

.field public mNativePaint:I

.field private mPathEffect:Landroid/graphics/PathEffect;

.field private mRasterizer:Landroid/graphics/Rasterizer;

.field private mShader:Landroid/graphics/Shader;

.field private mTypeface:Landroid/graphics/Typeface;

.field private mXfermode:Landroid/graphics/Xfermode;

.field public shadowColor:I

.field public shadowDx:F

.field public shadowDy:F

.field public shadowRadius:F


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/graphics/Paint$Style;

    .line 1
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Landroid/graphics/Paint;->sStyleArray:[Landroid/graphics/Paint$Style;

    new-array v1, v0, [Landroid/graphics/Paint$Cap;

    .line 2
    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    aput-object v2, v1, v3

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    aput-object v2, v1, v4

    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    aput-object v2, v1, v5

    sput-object v1, Landroid/graphics/Paint;->sCapArray:[Landroid/graphics/Paint$Cap;

    new-array v1, v0, [Landroid/graphics/Paint$Join;

    .line 3
    sget-object v2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    aput-object v2, v1, v3

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    aput-object v2, v1, v4

    sget-object v2, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    aput-object v2, v1, v5

    sput-object v1, Landroid/graphics/Paint;->sJoinArray:[Landroid/graphics/Paint$Join;

    new-array v0, v0, [Landroid/graphics/Paint$Align;

    .line 4
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v4

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v5

    sput-object v0, Landroid/graphics/Paint;->sAlignArray:[Landroid/graphics/Paint$Align;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroid/graphics/Paint;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 4
    invoke-static {}, Landroid/graphics/Paint;->native_init()I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    or-int/lit16 p1, p1, 0x500

    .line 5
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setFlags(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 6
    iput p1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput p1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 9
    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 10
    iget v0, p1, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0}, Landroid/graphics/Paint;->native_initWithPaint(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    .line 11
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setClassVariablesFrom(Landroid/graphics/Paint;)V

    return-void
.end method

.method private static native finalizer(I)V
.end method

.method private native nSetShadowLayer(FFFI)V
.end method

.method private static native nativeGetCharArrayBounds(I[CIIILandroid/graphics/Rect;)V
.end method

.method private static native nativeGetStringBounds(ILjava/lang/String;IIILandroid/graphics/Rect;)V
.end method

.method private native native_breakText(Ljava/lang/String;ZFI[F)I
.end method

.method private native native_breakText([CIIFI[F)I
.end method

.method private static native native_getFillPath(III)Z
.end method

.method private static native native_getStrokeCap(I)I
.end method

.method private static native native_getStrokeJoin(I)I
.end method

.method private static native native_getStyle(I)I
.end method

.method private static native native_getTextAlign(I)I
.end method

.method private static native native_getTextGlyphs(ILjava/lang/String;IIIII[C)I
.end method

.method private static native native_getTextPath(IILjava/lang/String;IIFFI)V
.end method

.method private static native native_getTextPath(II[CIIFFI)V
.end method

.method private static native native_getTextRunAdvances(ILjava/lang/String;IIIII[FI)F
.end method

.method private static native native_getTextRunAdvances(I[CIIIII[FI)F
.end method

.method private native native_getTextRunCursor(ILjava/lang/String;IIIII)I
.end method

.method private native native_getTextRunCursor(I[CIIIII)I
.end method

.method private static native native_getTextWidths(ILjava/lang/String;III[F)I
.end method

.method private static native native_getTextWidths(I[CIII[F)I
.end method

.method private static native native_init()I
.end method

.method private static native native_initWithPaint(I)I
.end method

.method private native native_measureText(Ljava/lang/String;I)F
.end method

.method private native native_measureText(Ljava/lang/String;III)F
.end method

.method private native native_measureText([CIII)F
.end method

.method private static native native_reset(I)V
.end method

.method private static native native_set(II)V
.end method

.method private static native native_setColorFilter(II)I
.end method

.method private static native native_setMaskFilter(II)I
.end method

.method private static native native_setPathEffect(II)I
.end method

.method private static native native_setRasterizer(II)I
.end method

.method private static native native_setShader(II)I
.end method

.method private static native native_setStrokeCap(II)V
.end method

.method private static native native_setStrokeJoin(II)V
.end method

.method private static native native_setStyle(II)V
.end method

.method private static native native_setTextAlign(II)V
.end method

.method private static native native_setTextLocale(ILjava/lang/String;)V
.end method

.method private static native native_setTypeface(II)I
.end method

.method private static native native_setXfermode(II)I
.end method

.method private setClassVariablesFrom(Landroid/graphics/Paint;)V
    .locals 1

    .line 1
    iget-object v0, p1, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    iput-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 2
    iget-object v0, p1, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    iput-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 3
    iget-object v0, p1, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    iput-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 4
    iget-object v0, p1, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    iput-object v0, p0, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    .line 5
    iget-object v0, p1, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/graphics/Shader;->copy()Landroid/graphics/Shader;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 8
    :goto_0
    iget-object v0, p1, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 9
    iget-object v0, p1, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    iput-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 10
    iget-boolean v0, p1, Landroid/graphics/Paint;->mHasCompatScaling:Z

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 11
    iget v0, p1, Landroid/graphics/Paint;->mCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 12
    iget v0, p1, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 13
    iget-boolean v0, p1, Landroid/graphics/Paint;->hasShadow:Z

    iput-boolean v0, p0, Landroid/graphics/Paint;->hasShadow:Z

    .line 14
    iget v0, p1, Landroid/graphics/Paint;->shadowDx:F

    iput v0, p0, Landroid/graphics/Paint;->shadowDx:F

    .line 15
    iget v0, p1, Landroid/graphics/Paint;->shadowDy:F

    iput v0, p0, Landroid/graphics/Paint;->shadowDy:F

    .line 16
    iget v0, p1, Landroid/graphics/Paint;->shadowRadius:F

    iput v0, p0, Landroid/graphics/Paint;->shadowRadius:F

    .line 17
    iget v0, p1, Landroid/graphics/Paint;->shadowColor:I

    iput v0, p0, Landroid/graphics/Paint;->shadowColor:I

    .line 18
    iget v0, p1, Landroid/graphics/Paint;->mBidiFlags:I

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 19
    iget-object p1, p1, Landroid/graphics/Paint;->mLocale:Ljava/util/Locale;

    iput-object p1, p0, Landroid/graphics/Paint;->mLocale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public native ascent()F
.end method

.method public breakText(Ljava/lang/CharSequence;IIZF[F)I
    .locals 8

    if-eqz p1, :cond_5

    or-int v0, p2, p3

    sub-int v4, p3, p2

    or-int/2addr v0, v4

    .line 12
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_4

    .line 13
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-ne p2, p3, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    .line 14
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_1

    .line 15
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p4, p5, p6}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result p1

    return p1

    .line 16
    :cond_1
    invoke-static {v4}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v7

    .line 17
    invoke-static {p1, p2, p3, v7, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    if-eqz p4, :cond_2

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, v7

    move v5, p5

    move-object v6, p6

    .line 18
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Paint;->breakText([CIIF[F)I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    neg-int v3, v4

    move-object v0, p0

    move-object v1, v7

    move v4, p5

    move-object v5, p6

    .line 19
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Paint;->breakText([CIIF[F)I

    move-result p1

    .line 20
    :goto_0
    invoke-static {v7}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    return p1

    :cond_3
    :goto_1
    return v1

    .line 21
    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 22
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "text cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public breakText(Ljava/lang/String;ZF[F)I
    .locals 9

    if-eqz p1, :cond_3

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 24
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_1

    .line 25
    iget v6, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Landroid/graphics/Paint;->native_breakText(Ljava/lang/String;ZFI[F)I

    move-result p1

    return p1

    .line 26
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 27
    iget v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 28
    iget v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float v6, p3, v2

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Landroid/graphics/Paint;->native_breakText(Ljava/lang/String;ZFI[F)I

    move-result p1

    .line 29
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    if-eqz p4, :cond_2

    .line 30
    aget p2, p4, v1

    iget p3, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr p2, p3

    aput p2, p4, v1

    :cond_2
    return p1

    .line 31
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "text cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public breakText([CIIF[F)I
    .locals 10

    if-eqz p1, :cond_5

    if-ltz p2, :cond_4

    .line 1
    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_1

    .line 4
    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Landroid/graphics/Paint;->native_breakText([CIIFI[F)I

    move-result p1

    return p1

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 6
    iget v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 7
    iget v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float v7, p4, v2

    iget v8, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v9, p5

    invoke-direct/range {v3 .. v9}, Landroid/graphics/Paint;->native_breakText([CIIFI[F)I

    move-result p1

    .line 8
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    if-eqz p5, :cond_2

    .line 9
    aget p2, p5, v1

    iget p3, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr p2, p3

    aput p2, p5, v1

    :cond_2
    return p1

    :cond_3
    :goto_0
    return v1

    .line 10
    :cond_4
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    .line 11
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "text cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clearShadowLayer()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/graphics/Paint;->hasShadow:Z

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v1, v1, v1, v0}, Landroid/graphics/Paint;->nSetShadowLayer(FFFI)V

    return-void
.end method

.method public native descent()F
.end method

.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0}, Landroid/graphics/Paint;->finalizer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public native getAlpha()I
.end method

.method public getBidiFlags()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    return v0
.end method

.method public native getColor()I
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getFillPath(Landroid/graphics/Path;Landroid/graphics/Path;)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-virtual {p1}, Landroid/graphics/Path;->ni()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Path;->ni()I

    move-result p2

    invoke-static {v0, p1, p2}, Landroid/graphics/Paint;->native_getFillPath(III)Z

    move-result p1

    return p1
.end method

.method public native getFlags()I
.end method

.method public native getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F
.end method

.method public getFontMetrics()Landroid/graphics/Paint$FontMetrics;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    return-object v0
.end method

.method public native getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I
.end method

.method public getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    return-object v0
.end method

.method public getFontSpacing()F
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    return v0
.end method

.method public native getHinting()I
.end method

.method public getMaskFilter()Landroid/graphics/MaskFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    return-object v0
.end method

.method public getPathEffect()Landroid/graphics/PathEffect;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    return-object v0
.end method

.method public getRasterizer()Landroid/graphics/Rasterizer;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    return-object v0
.end method

.method public getShader()Landroid/graphics/Shader;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    return-object v0
.end method

.method public getStrokeCap()Landroid/graphics/Paint$Cap;
    .locals 2

    .line 1
    sget-object v0, Landroid/graphics/Paint;->sCapArray:[Landroid/graphics/Paint$Cap;

    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1}, Landroid/graphics/Paint;->native_getStrokeCap(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getStrokeJoin()Landroid/graphics/Paint$Join;
    .locals 2

    .line 1
    sget-object v0, Landroid/graphics/Paint;->sJoinArray:[Landroid/graphics/Paint$Join;

    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1}, Landroid/graphics/Paint;->native_getStrokeJoin(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public native getStrokeMiter()F
.end method

.method public native getStrokeWidth()F
.end method

.method public getStyle()Landroid/graphics/Paint$Style;
    .locals 2

    .line 1
    sget-object v0, Landroid/graphics/Paint;->sStyleArray:[Landroid/graphics/Paint$Style;

    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1}, Landroid/graphics/Paint;->native_getStyle(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTextAlign()Landroid/graphics/Paint$Align;
    .locals 2

    .line 1
    sget-object v0, Landroid/graphics/Paint;->sAlignArray:[Landroid/graphics/Paint$Align;

    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1}, Landroid/graphics/Paint;->native_getTextAlign(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
    .locals 7

    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_0

    const-string v0, "need bounds Rect"

    .line 2
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v5, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Landroid/graphics/Paint;->nativeGetStringBounds(ILjava/lang/String;IIILandroid/graphics/Rect;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getTextBounds([CIILandroid/graphics/Rect;)V
    .locals 7

    or-int v0, p2, p3

    if-ltz v0, :cond_0

    add-int v0, p2, p3

    .line 5
    array-length v1, p1

    if-gt v0, v1, :cond_0

    const-string v0, "need bounds Rect"

    .line 6
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v5, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Landroid/graphics/Paint;->nativeGetCharArrayBounds(I[CIIILandroid/graphics/Rect;)V

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getTextGlyphs(Ljava/lang/String;IIIII[C)I
    .locals 9

    move v6, p6

    if-eqz p1, :cond_4

    if-eqz v6, :cond_1

    const/4 v0, 0x1

    if-ne v6, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown flags value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    or-int v0, p2, p3

    or-int/2addr v0, p4

    or-int/2addr v0, p5

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    sub-int v2, p2, p4

    or-int/2addr v0, v2

    sub-int v2, p5, p3

    or-int/2addr v0, v2

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p3

    or-int/2addr v0, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p5

    or-int/2addr v0, v2

    if-ltz v0, :cond_3

    move-object/from16 v7, p7

    .line 3
    array-length v0, v7

    if-gt v1, v0, :cond_2

    move-object v8, p0

    .line 4
    iget v0, v8, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v7}, Landroid/graphics/Paint;->native_getTextGlyphs(ILjava/lang/String;IIIII[C)I

    move-result v0

    return v0

    :cond_2
    move-object v8, p0

    .line 5
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_3
    move-object v8, p0

    .line 6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_4
    move-object v8, p0

    .line 7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTextLocale()Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/Paint;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V
    .locals 9

    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_0

    .line 5
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v2, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual {p6}, Landroid/graphics/Path;->ni()I

    move-result v8

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v1 .. v8}, Landroid/graphics/Paint;->native_getTextPath(IILjava/lang/String;IIFFI)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getTextPath([CIIFFLandroid/graphics/Path;)V
    .locals 8

    or-int v0, p2, p3

    if-ltz v0, :cond_0

    add-int v0, p2, p3

    .line 1
    array-length v1, p1

    if-gt v0, v1, :cond_0

    .line 2
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v1, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual {p6}, Landroid/graphics/Path;->ni()I

    move-result v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v7}, Landroid/graphics/Paint;->native_getTextPath(II[CIIFFI)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getTextRunAdvances(Ljava/lang/CharSequence;IIIII[FI)F
    .locals 12

    move-object v0, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v7, p7

    if-eqz v0, :cond_8

    or-int v1, v2, v3

    or-int/2addr v1, v4

    or-int/2addr v1, v5

    or-int v1, v1, p8

    sub-int v6, v3, v2

    or-int/2addr v1, v6

    sub-int v8, v2, v4

    or-int/2addr v1, v8

    sub-int v9, v5, v3

    or-int/2addr v1, v9

    .line 14
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    sub-int/2addr v9, v5

    or-int/2addr v1, v9

    const/4 v9, 0x0

    if-nez v7, :cond_0

    move v10, v9

    goto :goto_0

    :cond_0
    array-length v10, v7

    sub-int v10, v10, p8

    sub-int/2addr v10, v6

    :goto_0
    or-int/2addr v1, v10

    if-ltz v1, :cond_7

    .line 15
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 16
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances(Ljava/lang/String;IIIII[FI)F

    move-result v0

    return v0

    .line 17
    :cond_1
    instance-of v1, v0, Landroid/text/SpannedString;

    if-nez v1, :cond_6

    instance-of v1, v0, Landroid/text/SpannableString;

    if-eqz v1, :cond_2

    goto :goto_2

    .line 18
    :cond_2
    instance-of v1, v0, Landroid/text/GraphicsOperations;

    if-eqz v1, :cond_3

    .line 19
    check-cast v0, Landroid/text/GraphicsOperations;

    move v1, p2

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object v8, p0

    invoke-interface/range {v0 .. v8}, Landroid/text/GraphicsOperations;->getTextRunAdvances(IIIII[FILandroid/graphics/Paint;)F

    move-result v0

    return v0

    .line 20
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_5

    if-ne v3, v2, :cond_4

    goto :goto_1

    :cond_4
    sub-int v10, v5, v4

    .line 21
    invoke-static {v10}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v11

    .line 22
    invoke-static {p1, v4, v5, v11, v9}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, v11

    move v2, v8

    move v3, v6

    move v5, v10

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 23
    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIII[FI)F

    move-result v0

    .line 24
    invoke-static {v11}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    return v0

    :cond_5
    :goto_1
    const/4 v0, 0x0

    return v0

    .line 25
    :cond_6
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances(Ljava/lang/String;IIIII[FI)F

    move-result v0

    return v0

    .line 26
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 27
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTextRunAdvances(Ljava/lang/String;IIIII[FI)F
    .locals 13

    move-object v0, p0

    move v3, p2

    move/from16 v4, p3

    move/from16 v7, p6

    move-object/from16 v10, p7

    if-eqz p1, :cond_8

    if-eqz v7, :cond_1

    const/4 v1, 0x1

    if-ne v7, v1, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown flags value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    or-int v1, v3, v4

    or-int v1, v1, p4

    or-int v1, v1, p5

    or-int v1, v1, p8

    sub-int v11, v4, v3

    or-int/2addr v1, v11

    sub-int v2, v3, p4

    or-int/2addr v1, v2

    sub-int v2, p5, v4

    or-int/2addr v1, v2

    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, v2, p5

    or-int/2addr v1, v2

    if-nez v10, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    array-length v2, v10

    sub-int v2, v2, p8

    sub-int/2addr v2, v11

    :goto_1
    or-int/2addr v1, v2

    if-ltz v1, :cond_7

    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    if-ne v3, v4, :cond_3

    goto :goto_3

    .line 31
    :cond_3
    iget-boolean v1, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v1, :cond_4

    .line 32
    iget v1, v0, Landroid/graphics/Paint;->mNativePaint:I

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v1 .. v9}, Landroid/graphics/Paint;->native_getTextRunAdvances(ILjava/lang/String;IIIII[FI)F

    move-result v1

    return v1

    .line 33
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v12

    .line 34
    iget v1, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v1, v12

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 35
    iget v1, v0, Landroid/graphics/Paint;->mNativePaint:I

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v1 .. v9}, Landroid/graphics/Paint;->native_getTextRunAdvances(ILjava/lang/String;IIIII[FI)F

    move-result v1

    .line 36
    invoke-virtual {p0, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    if-eqz v10, :cond_5

    add-int v2, p8, v11

    move/from16 v3, p8

    :goto_2
    if-ge v3, v2, :cond_5

    .line 37
    aget v4, v10, v3

    iget v5, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v4, v5

    aput v4, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 38
    :cond_5
    iget v2, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v1, v2

    return v1

    :cond_6
    :goto_3
    const/4 v1, 0x0

    return v1

    .line 39
    :cond_7
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 40
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTextRunAdvances([CIIIII[FI)F
    .locals 12

    move-object v0, p0

    move-object v2, p1

    move/from16 v7, p6

    move-object/from16 v10, p7

    if-eqz v2, :cond_8

    if-eqz v7, :cond_1

    const/4 v1, 0x1

    if-ne v7, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown flags value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    or-int v1, p2, p3

    or-int v1, v1, p4

    or-int v1, v1, p5

    or-int v1, v1, p8

    sub-int v3, p2, p4

    or-int/2addr v1, v3

    sub-int v3, p5, p3

    or-int/2addr v1, v3

    add-int v3, p4, p5

    add-int v4, p2, p3

    sub-int v4, v3, v4

    or-int/2addr v1, v4

    .line 2
    array-length v4, v2

    sub-int/2addr v4, v3

    or-int/2addr v1, v4

    if-nez v10, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    array-length v3, v10

    add-int v4, p8, p3

    sub-int/2addr v3, v4

    :goto_1
    or-int/2addr v1, v3

    if-ltz v1, :cond_7

    .line 3
    array-length v1, v2

    if-eqz v1, :cond_6

    if-nez p3, :cond_3

    goto :goto_3

    .line 4
    :cond_3
    iget-boolean v1, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v1, :cond_4

    .line 5
    iget v1, v0, Landroid/graphics/Paint;->mNativePaint:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v1 .. v9}, Landroid/graphics/Paint;->native_getTextRunAdvances(I[CIIIII[FI)F

    move-result v1

    return v1

    .line 6
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v11

    .line 7
    iget v1, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v1, v11

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 8
    iget v1, v0, Landroid/graphics/Paint;->mNativePaint:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v1 .. v9}, Landroid/graphics/Paint;->native_getTextRunAdvances(I[CIIIII[FI)F

    move-result v1

    .line 9
    invoke-virtual {p0, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    if-eqz v10, :cond_5

    add-int v2, p8, p3

    move/from16 v3, p8

    :goto_2
    if-ge v3, v2, :cond_5

    .line 10
    aget v4, v10, v3

    iget v5, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v4, v5

    aput v4, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 11
    :cond_5
    iget v2, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v1, v2

    return v1

    :cond_6
    :goto_3
    const/4 v1, 0x0

    return v1

    .line 12
    :cond_7
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 13
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTextRunCursor(Ljava/lang/CharSequence;IIIII)I
    .locals 8

    .line 4
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_2

    instance-of v0, p1, Landroid/text/SpannedString;

    if-nez v0, :cond_2

    instance-of v0, p1, Landroid/text/SpannableString;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p1, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_1

    .line 6
    move-object v1, p1

    check-cast v1, Landroid/text/GraphicsOperations;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p0

    invoke-interface/range {v1 .. v7}, Landroid/text/GraphicsOperations;->getTextRunCursor(IIIIILandroid/graphics/Paint;)I

    move-result p1

    return p1

    :cond_1
    sub-int v3, p3, p2

    .line 7
    invoke-static {v3}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v7

    const/4 v0, 0x0

    .line 8
    invoke-static {p1, p2, p3, v7, v0}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    const/4 v2, 0x0

    sub-int v5, p5, p2

    move-object v0, p0

    move-object v1, v7

    move v4, p4

    move v6, p6

    .line 9
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result p1

    .line 10
    invoke-static {v7}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    return p1

    .line 11
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/String;IIIII)I

    move-result p1

    return p1
.end method

.method public getTextRunCursor(Ljava/lang/String;IIIII)I
    .locals 9

    or-int v0, p2, p3

    or-int/2addr v0, p5

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    sub-int v1, p5, p2

    or-int/2addr v0, v1

    sub-int v1, p3, p5

    or-int/2addr v0, v1

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    or-int/2addr v0, p6

    if-ltz v0, :cond_0

    const/4 v0, 0x4

    if-gt p6, v0, :cond_0

    .line 13
    iget v2, p0, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v1 .. v8}, Landroid/graphics/Paint;->native_getTextRunCursor(ILjava/lang/String;IIIII)I

    move-result p1

    return p1

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getTextRunCursor([CIIIII)I
    .locals 9

    add-int v0, p2, p3

    or-int v1, p2, v0

    or-int/2addr v1, p5

    sub-int v2, v0, p2

    or-int/2addr v1, v2

    sub-int v2, p5, p2

    or-int/2addr v1, v2

    sub-int v2, v0, p5

    or-int/2addr v1, v2

    .line 1
    array-length v2, p1

    sub-int/2addr v2, v0

    or-int v0, v1, v2

    or-int/2addr v0, p6

    if-ltz v0, :cond_0

    const/4 v0, 0x4

    if-gt p6, v0, :cond_0

    .line 2
    iget v2, p0, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v1 .. v8}, Landroid/graphics/Paint;->native_getTextRunCursor(I[CIIIII)I

    move-result p1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public native getTextScaleX()F
.end method

.method public native getTextSize()F
.end method

.method public native getTextSkewX()F
.end method

.method public getTextWidths(Ljava/lang/CharSequence;II[F)I
    .locals 3

    if-eqz p1, :cond_8

    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    .line 12
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, p3

    or-int/2addr v0, v2

    if-ltz v0, :cond_7

    .line 13
    array-length v0, p4

    if-gt v1, v0, :cond_6

    .line 14
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    if-ne p2, p3, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 16
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result p1

    return p1

    .line 17
    :cond_1
    instance-of v0, p1, Landroid/text/SpannedString;

    if-nez v0, :cond_4

    instance-of v0, p1, Landroid/text/SpannableString;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 18
    :cond_2
    instance-of v0, p1, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_3

    .line 19
    check-cast p1, Landroid/text/GraphicsOperations;

    invoke-interface {p1, p2, p3, p4, p0}, Landroid/text/GraphicsOperations;->getTextWidths(II[FLandroid/graphics/Paint;)I

    move-result p1

    return p1

    .line 20
    :cond_3
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 21
    invoke-static {p1, p2, p3, v0, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 22
    invoke-virtual {p0, v0, v2, v1, p4}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result p1

    .line 23
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    return p1

    .line 24
    :cond_4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result p1

    return p1

    :cond_5
    :goto_1
    return v2

    .line 25
    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    .line 26
    :cond_7
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 27
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "text cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getTextWidths(Ljava/lang/String;II[F)I
    .locals 9

    if-eqz p1, :cond_6

    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p3

    or-int/2addr v0, v2

    if-ltz v0, :cond_5

    .line 29
    array-length v0, p4

    if-gt v1, v0, :cond_4

    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-ne p2, p3, :cond_0

    goto :goto_1

    .line 31
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_1

    .line 32
    iget v2, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v6, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v7, p4

    invoke-static/range {v2 .. v7}, Landroid/graphics/Paint;->native_getTextWidths(ILjava/lang/String;III[F)I

    move-result p1

    return p1

    .line 33
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 34
    iget v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 35
    iget v3, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    invoke-static/range {v3 .. v8}, Landroid/graphics/Paint;->native_getTextWidths(ILjava/lang/String;III[F)I

    move-result p1

    .line 36
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :goto_0
    if-ge v1, p1, :cond_2

    .line 37
    aget p2, p4, v1

    iget p3, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr p2, p3

    aput p2, p4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p1

    :cond_3
    :goto_1
    return v1

    .line 38
    :cond_4
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    .line 39
    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 40
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "text cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getTextWidths(Ljava/lang/String;[F)I
    .locals 2

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result p1

    return p1
.end method

.method public getTextWidths([CII[F)I
    .locals 9

    if-eqz p1, :cond_5

    or-int v0, p2, p3

    if-ltz v0, :cond_4

    add-int v0, p2, p3

    .line 1
    array-length v1, p1

    if-gt v0, v1, :cond_4

    array-length v0, p4

    if-gt p3, v0, :cond_4

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_1

    .line 4
    iget v2, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v6, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v7, p4

    invoke-static/range {v2 .. v7}, Landroid/graphics/Paint;->native_getTextWidths(I[CIII[F)I

    move-result p1

    return p1

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 6
    iget v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 7
    iget v3, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    invoke-static/range {v3 .. v8}, Landroid/graphics/Paint;->native_getTextWidths(I[CIII[F)I

    move-result p1

    .line 8
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :goto_0
    if-ge v1, p1, :cond_2

    .line 9
    aget p2, p4, v1

    iget p3, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr p2, p3

    aput p2, p4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p1

    :cond_3
    :goto_1
    return v1

    .line 10
    :cond_4
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    .line 11
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "text cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getXfermode()Landroid/graphics/Xfermode;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    return-object v0
.end method

.method public final isAntiAlias()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isDither()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isFakeBoldText()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isFilterBitmap()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isLinearText()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isStrikeThruText()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSubpixelText()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isUnderlineText()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public measureText(Ljava/lang/CharSequence;II)F
    .locals 3

    if-eqz p1, :cond_7

    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    .line 32
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, p3

    or-int/2addr v0, v2

    if-ltz v0, :cond_6

    .line 33
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_5

    if-ne p2, p3, :cond_0

    goto :goto_1

    .line 34
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 35
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result p1

    return p1

    .line 36
    :cond_1
    instance-of v0, p1, Landroid/text/SpannedString;

    if-nez v0, :cond_4

    instance-of v0, p1, Landroid/text/SpannableString;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 37
    :cond_2
    instance-of v0, p1, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_3

    .line 38
    check-cast p1, Landroid/text/GraphicsOperations;

    invoke-interface {p1, p2, p3, p0}, Landroid/text/GraphicsOperations;->measureText(IILandroid/graphics/Paint;)F

    move-result p1

    return p1

    .line 39
    :cond_3
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    const/4 v2, 0x0

    .line 40
    invoke-static {p1, p2, p3, v0, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 41
    invoke-virtual {p0, v0, v2, v1}, Landroid/graphics/Paint;->measureText([CII)F

    move-result p1

    .line 42
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    return p1

    .line 43
    :cond_4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result p1

    return p1

    :cond_5
    :goto_1
    const/4 p1, 0x0

    return p1

    .line 44
    :cond_6
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 45
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "text cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public measureText(Ljava/lang/String;)F
    .locals 2

    if-eqz p1, :cond_2

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 24
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_1

    .line 25
    iget v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-direct {p0, p1, v0}, Landroid/graphics/Paint;->native_measureText(Ljava/lang/String;I)F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    :goto_0
    double-to-float p1, v0

    return p1

    .line 26
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 27
    iget v1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 28
    iget v1, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-direct {p0, p1, v1}, Landroid/graphics/Paint;->native_measureText(Ljava/lang/String;I)F

    move-result p1

    .line 29
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 30
    iget v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_0

    .line 31
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "text cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public measureText(Ljava/lang/String;II)F
    .locals 2

    if-eqz p1, :cond_4

    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_3

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    if-ne p2, p3, :cond_0

    goto :goto_1

    .line 14
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_1

    .line 15
    iget v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/graphics/Paint;->native_measureText(Ljava/lang/String;III)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    :goto_0
    double-to-float p1, p1

    return p1

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 17
    iget v1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 18
    iget v1, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/graphics/Paint;->native_measureText(Ljava/lang/String;III)F

    move-result p1

    .line 19
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 20
    iget p2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1

    .line 21
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 22
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "text cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public measureText([CII)F
    .locals 2

    if-eqz p1, :cond_4

    or-int v0, p2, p3

    if-ltz v0, :cond_3

    add-int v0, p2, p3

    .line 1
    array-length v1, p1

    if-gt v0, v1, :cond_3

    .line 2
    array-length v0, p1

    if-eqz v0, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_1

    .line 4
    iget v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/graphics/Paint;->native_measureText([CIII)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    :goto_0
    double-to-float p1, p1

    return p1

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 6
    iget v1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 7
    iget v1, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/graphics/Paint;->native_measureText([CIII)F

    move-result p1

    .line 8
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 9
    iget p2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "text cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0}, Landroid/graphics/Paint;->native_reset(I)V

    const/16 v0, 0x500

    .line 2
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 4
    iput-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 5
    iput-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 6
    iput-object v0, p0, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    .line 7
    iput-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 8
    iput-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 9
    iput-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    iput v1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 12
    iput v1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 13
    iput-boolean v0, p0, Landroid/graphics/Paint;->hasShadow:Z

    const/4 v1, 0x0

    .line 14
    iput v1, p0, Landroid/graphics/Paint;->shadowDx:F

    .line 15
    iput v1, p0, Landroid/graphics/Paint;->shadowDy:F

    .line 16
    iput v1, p0, Landroid/graphics/Paint;->shadowRadius:F

    .line 17
    iput v0, p0, Landroid/graphics/Paint;->shadowColor:I

    const/4 v0, 0x2

    .line 18
    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 19
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public set(Landroid/graphics/Paint;)V
    .locals 2

    if-eq p0, p1, :cond_0

    .line 1
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v1, p1, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_set(II)V

    .line 2
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setClassVariablesFrom(Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setARGB(IIII)V
    .locals 0

    shl-int/lit8 p1, p1, 0x18

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p2, p3, 0x8

    or-int/2addr p1, p2

    or-int/2addr p1, p4

    .line 1
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public native setAlpha(I)V
.end method

.method public native setAntiAlias(Z)V
.end method

.method public setBidiFlags(I)V
    .locals 3

    and-int/lit8 p1, p1, 0x7

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    .line 1
    iput p1, p0, Landroid/graphics/Paint;->mBidiFlags:I

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown bidi flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native setColor(I)V
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget v0, p1, Landroid/graphics/ColorFilter;->native_instance:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v0}, Landroid/graphics/Paint;->native_setColorFilter(II)I

    .line 3
    iput-object p1, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object p1
.end method

.method public setCompatibilityScaling(F)V
    .locals 4

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 2
    iput v1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 4
    iput p1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    div-float/2addr v1, p1

    .line 5
    iput v1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    :goto_0
    return-void
.end method

.method public native setDither(Z)V
.end method

.method public native setFakeBoldText(Z)V
.end method

.method public native setFilterBitmap(Z)V
.end method

.method public native setFlags(I)V
.end method

.method public native setHinting(I)V
.end method

.method public native setLinearText(Z)V
.end method

.method public setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget v0, p1, Landroid/graphics/MaskFilter;->native_instance:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v0}, Landroid/graphics/Paint;->native_setMaskFilter(II)I

    .line 3
    iput-object p1, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    return-object p1
.end method

.method public setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget v0, p1, Landroid/graphics/PathEffect;->native_instance:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v0}, Landroid/graphics/Paint;->native_setPathEffect(II)I

    .line 3
    iput-object p1, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    return-object p1
.end method

.method public setRasterizer(Landroid/graphics/Rasterizer;)Landroid/graphics/Rasterizer;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget v0, p1, Landroid/graphics/Rasterizer;->native_instance:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v0}, Landroid/graphics/Paint;->native_setRasterizer(II)I

    .line 3
    iput-object p1, p0, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    return-object p1
.end method

.method public setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget v0, p1, Landroid/graphics/Shader;->native_instance:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v0}, Landroid/graphics/Paint;->native_setShader(II)I

    .line 3
    iput-object p1, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    return-object p1
.end method

.method public setShadowLayer(FFFI)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    iput-boolean v0, p0, Landroid/graphics/Paint;->hasShadow:Z

    .line 2
    iput p1, p0, Landroid/graphics/Paint;->shadowRadius:F

    .line 3
    iput p2, p0, Landroid/graphics/Paint;->shadowDx:F

    .line 4
    iput p3, p0, Landroid/graphics/Paint;->shadowDy:F

    .line 5
    iput p4, p0, Landroid/graphics/Paint;->shadowColor:I

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/Paint;->nSetShadowLayer(FFFI)V

    return-void
.end method

.method public native setStrikeThruText(Z)V
.end method

.method public setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget p1, p1, Landroid/graphics/Paint$Cap;->nativeInt:I

    invoke-static {v0, p1}, Landroid/graphics/Paint;->native_setStrokeCap(II)V

    return-void
.end method

.method public setStrokeJoin(Landroid/graphics/Paint$Join;)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget p1, p1, Landroid/graphics/Paint$Join;->nativeInt:I

    invoke-static {v0, p1}, Landroid/graphics/Paint;->native_setStrokeJoin(II)V

    return-void
.end method

.method public native setStrokeMiter(F)V
.end method

.method public native setStrokeWidth(F)V
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget p1, p1, Landroid/graphics/Paint$Style;->nativeInt:I

    invoke-static {v0, p1}, Landroid/graphics/Paint;->native_setStyle(II)V

    return-void
.end method

.method public native setSubpixelText(Z)V
.end method

.method public setTextAlign(Landroid/graphics/Paint$Align;)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget p1, p1, Landroid/graphics/Paint$Align;->nativeInt:I

    invoke-static {v0, p1}, Landroid/graphics/Paint;->native_setTextAlign(II)V

    return-void
.end method

.method public setTextLocale(Ljava/util/Locale;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Landroid/graphics/Paint;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Landroid/graphics/Paint;->mLocale:Ljava/util/Locale;

    .line 3
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/graphics/Paint;->native_setTextLocale(ILjava/lang/String;)V

    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "locale cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public native setTextScaleX(F)V
.end method

.method public native setTextSize(F)V
.end method

.method public native setTextSkewX(F)V
.end method

.method public setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget v0, p1, Landroid/graphics/Typeface;->native_instance:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v0}, Landroid/graphics/Paint;->native_setTypeface(II)I

    .line 3
    iput-object p1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    return-object p1
.end method

.method public native setUnderlineText(Z)V
.end method

.method public setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget v0, p1, Landroid/graphics/Xfermode;->native_instance:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v0}, Landroid/graphics/Paint;->native_setXfermode(II)I

    .line 3
    iput-object p1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    return-object p1
.end method
