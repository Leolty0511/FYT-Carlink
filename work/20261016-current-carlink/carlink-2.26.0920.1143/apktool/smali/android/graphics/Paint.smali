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
        Landroid/graphics/Paint$Style;,
        Landroid/graphics/Paint$NoImagePreloadHolder;
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

.field public static final DEV_KERN_TEXT_FLAG:I = 0x100

.field public static final DIRECTION_LTR:I = 0x0

.field public static final DIRECTION_RTL:I = 0x1

.field public static final DITHER_FLAG:I = 0x4

.field public static final EMBEDDED_BITMAP_TEXT_FLAG:I = 0x400

.field public static final FAKE_BOLD_TEXT_FLAG:I = 0x20

.field public static final FILTER_BITMAP_FLAG:I = 0x2

.field static final HIDDEN_DEFAULT_PAINT_FLAGS:I = 0x500

.field public static final HINTING_OFF:I = 0x0

.field public static final HINTING_ON:I = 0x1

.field public static final HYPHENEDIT_MASK_END_OF_LINE:I = 0x7

.field public static final HYPHENEDIT_MASK_START_OF_LINE:I = 0x18

.field public static final LCD_RENDER_TEXT_FLAG:I = 0x200

.field public static final LINEAR_TEXT_FLAG:I = 0x40

.field private static final NATIVE_PAINT_SIZE:J = 0x62L

.field public static final STRIKE_THRU_TEXT_FLAG:I = 0x10

.field public static final SUBPIXEL_TEXT_FLAG:I = 0x80

.field public static final UNDERLINE_TEXT_FLAG:I = 0x8

.field public static final VERTICAL_TEXT_FLAG:I = 0x1000

.field static final sAlignArray:[Landroid/graphics/Paint$Align;

.field private static final sCacheLock:Ljava/lang/Object;

.field static final sCapArray:[Landroid/graphics/Paint$Cap;

.field static final sJoinArray:[Landroid/graphics/Paint$Join;

.field private static final sMinikinLangListIdCache:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sCacheLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final sStyleArray:[Landroid/graphics/Paint$Style;


# instance fields
.field public mBidiFlags:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mCompatScaling:F

.field private mFontFeatureSettings:Ljava/lang/String;

.field private mFontVariationSettings:Ljava/lang/String;

.field private mHasCompatScaling:Z

.field private mInvCompatScaling:F

.field private mLocales:Landroid/os/LocaleList;

.field private mMaskFilter:Landroid/graphics/MaskFilter;

.field private mNativeColorFilter:J

.field private mNativePaint:J

.field private mNativeShader:J

.field public mNativeTypeface:J

.field private mPathEffect:Landroid/graphics/PathEffect;

.field private mShader:Landroid/graphics/Shader;

.field private mShadowLayerColor:I

.field private mShadowLayerDx:F

.field private mShadowLayerDy:F

.field private mShadowLayerRadius:F

.field private mTypeface:Landroid/graphics/Typeface;

.field private mXfermode:Landroid/graphics/Xfermode;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/graphics/Paint;->sCacheLock:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroid/graphics/Paint;->sMinikinLangListIdCache:Ljava/util/HashMap;

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    new-array v1, v0, [Landroid/graphics/Paint$Style;

    .line 17
    .line 18
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    aput-object v2, v1, v3

    .line 22
    .line 23
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    aput-object v2, v1, v4

    .line 27
    .line 28
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 29
    .line 30
    const/4 v5, 0x2

    .line 31
    aput-object v2, v1, v5

    .line 32
    .line 33
    sput-object v1, Landroid/graphics/Paint;->sStyleArray:[Landroid/graphics/Paint$Style;

    .line 34
    .line 35
    new-array v1, v0, [Landroid/graphics/Paint$Cap;

    .line 36
    .line 37
    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 38
    .line 39
    aput-object v2, v1, v3

    .line 40
    .line 41
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 42
    .line 43
    aput-object v2, v1, v4

    .line 44
    .line 45
    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    .line 46
    .line 47
    aput-object v2, v1, v5

    .line 48
    .line 49
    sput-object v1, Landroid/graphics/Paint;->sCapArray:[Landroid/graphics/Paint$Cap;

    .line 50
    .line 51
    new-array v1, v0, [Landroid/graphics/Paint$Join;

    .line 52
    .line 53
    sget-object v2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    .line 54
    .line 55
    aput-object v2, v1, v3

    .line 56
    .line 57
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 58
    .line 59
    aput-object v2, v1, v4

    .line 60
    .line 61
    sget-object v2, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    .line 62
    .line 63
    aput-object v2, v1, v5

    .line 64
    .line 65
    sput-object v1, Landroid/graphics/Paint;->sJoinArray:[Landroid/graphics/Paint$Join;

    .line 66
    .line 67
    new-array v0, v0, [Landroid/graphics/Paint$Align;

    .line 68
    .line 69
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 70
    .line 71
    aput-object v1, v0, v3

    .line 72
    .line 73
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 74
    .line 75
    aput-object v1, v0, v4

    .line 76
    .line 77
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 78
    .line 79
    aput-object v1, v0, v5

    .line 80
    .line 81
    sput-object v0, Landroid/graphics/Paint;->sAlignArray:[Landroid/graphics/Paint$Align;

    .line 82
    .line 83
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
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 4
    invoke-static {}, Landroid/graphics/Paint;->nInit()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 5
    sget-object v2, Landroid/graphics/Paint$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v2, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    or-int/lit16 p1, p1, 0x500

    .line 6
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setFlags(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 7
    iput p1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput p1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 8
    invoke-static {}, Landroid/os/LocaleList;->getAdjustedDefault()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextLocales(Landroid/os/LocaleList;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 10
    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nInitWithPaint(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 12
    sget-object v2, Landroid/graphics/Paint$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v2, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 13
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setClassVariablesFrom(Landroid/graphics/Paint;)V

    return-void
.end method

.method public static synthetic access$000()J
    .locals 2

    invoke-static {}, Landroid/graphics/Paint;->nGetNativeFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method private static native nAscent(JJ)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nBreakText(JJLjava/lang/String;ZFI[F)I
.end method

.method private static native nBreakText(JJ[CIIFI[F)I
.end method

.method private static native nDescent(JJ)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetAlpha(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetCharArrayBounds(JJ[CIIILandroid/graphics/Rect;)V
.end method

.method private static native nGetColor(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetFillPath(JJJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetFlags(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetFontMetrics(JJLandroid/graphics/Paint$FontMetrics;)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetFontMetricsInt(JJLandroid/graphics/Paint$FontMetricsInt;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetHinting(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetHyphenEdit(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetLetterSpacing(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetNativeFinalizer()J
.end method

.method private static native nGetOffsetForAdvance(JJ[CIIIIZF)I
.end method

.method private static native nGetRunAdvance(JJ[CIIIIZI)F
.end method

.method private static native nGetStrikeThruPosition(JJ)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetStrikeThruThickness(JJ)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetStringBounds(JJLjava/lang/String;IIILandroid/graphics/Rect;)V
.end method

.method private static native nGetStrokeCap(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetStrokeJoin(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetStrokeMiter(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetStrokeWidth(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetStyle(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetTextAdvances(JJLjava/lang/String;IIIII[FI)F
.end method

.method private static native nGetTextAdvances(JJ[CIIIII[FI)F
.end method

.method private static native nGetTextAlign(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetTextPath(JJILjava/lang/String;IIFFJ)V
.end method

.method private static native nGetTextPath(JJI[CIIFFJ)V
.end method

.method private native nGetTextRunCursor(JJLjava/lang/String;IIIII)I
.end method

.method private native nGetTextRunCursor(JJ[CIIIII)I
.end method

.method private static native nGetTextScaleX(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetTextSize(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetTextSkewX(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetUnderlinePosition(JJ)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetUnderlineThickness(JJ)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetWordSpacing(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nHasGlyph(JJILjava/lang/String;)Z
.end method

.method private static native nHasShadowLayer(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nInit()J
.end method

.method private static native nInitWithPaint(J)J
.end method

.method private static native nIsElegantTextHeight(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nReset(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSet(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetAlpha(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetAntiAlias(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetColor(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetColorFilter(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetDither(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetElegantTextHeight(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetFakeBoldText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetFilterBitmap(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetFlags(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetFontFeatureSettings(JLjava/lang/String;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetHinting(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetHyphenEdit(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetLetterSpacing(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetLinearText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetMaskFilter(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetPathEffect(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetShader(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetShadowLayer(JFFFI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetStrikeThruText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetStrokeCap(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetStrokeJoin(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetStrokeMiter(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetStrokeWidth(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetStyle(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetSubpixelText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetTextAlign(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetTextLocales(JLjava/lang/String;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetTextLocalesByMinikinLangListId(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetTextScaleX(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetTextSize(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetTextSkewX(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetTypeface(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetUnderlineText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetWordSpacing(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetXfermode(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private setClassVariablesFrom(Landroid/graphics/Paint;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 2
    .line 3
    iput-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 4
    .line 5
    iget-object v0, p1, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 6
    .line 7
    iput-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 8
    .line 9
    iget-object v0, p1, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 10
    .line 11
    iput-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 12
    .line 13
    iget-object v0, p1, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 14
    .line 15
    iput-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 16
    .line 17
    iget-wide v0, p1, Landroid/graphics/Paint;->mNativeShader:J

    .line 18
    .line 19
    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 20
    .line 21
    iget-object v0, p1, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 22
    .line 23
    iput-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 24
    .line 25
    iget-wide v0, p1, Landroid/graphics/Paint;->mNativeTypeface:J

    .line 26
    .line 27
    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    .line 28
    .line 29
    iget-object v0, p1, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 30
    .line 31
    iput-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 32
    .line 33
    iget-boolean v0, p1, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 34
    .line 35
    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 36
    .line 37
    iget v0, p1, Landroid/graphics/Paint;->mCompatScaling:F

    .line 38
    .line 39
    iput v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 40
    .line 41
    iget v0, p1, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 42
    .line 43
    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 44
    .line 45
    iget v0, p1, Landroid/graphics/Paint;->mBidiFlags:I

    .line 46
    .line 47
    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 48
    .line 49
    iget-object v0, p1, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    .line 50
    .line 51
    iput-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    .line 52
    .line 53
    iget-object v0, p1, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 54
    .line 55
    iput-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v0, p1, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 58
    .line 59
    iput-object v0, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 60
    .line 61
    iget v0, p1, Landroid/graphics/Paint;->mShadowLayerRadius:F

    .line 62
    .line 63
    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerRadius:F

    .line 64
    .line 65
    iget v0, p1, Landroid/graphics/Paint;->mShadowLayerDx:F

    .line 66
    .line 67
    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerDx:F

    .line 68
    .line 69
    iget v0, p1, Landroid/graphics/Paint;->mShadowLayerDy:F

    .line 70
    .line 71
    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerDy:F

    .line 72
    .line 73
    iget p1, p1, Landroid/graphics/Paint;->mShadowLayerColor:I

    .line 74
    .line 75
    iput p1, p0, Landroid/graphics/Paint;->mShadowLayerColor:I

    .line 76
    .line 77
    return-void
.end method

.method private syncTextLocalesWithMinikin()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Landroid/graphics/Paint;->sCacheLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    sget-object v2, Landroid/graphics/Paint;->sMinikinLangListIdCache:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Ljava/lang/Integer;

    .line 17
    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    iget-wide v3, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 21
    .line 22
    invoke-static {v3, v4, v0}, Landroid/graphics/Paint;->nSetTextLocales(JLjava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    monitor-exit v1

    .line 34
    return-void

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetTextLocalesByMinikinLangListId(JI)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    throw v0
.end method


# virtual methods
.method public ascent()F
    .locals 4

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nAscent(JJ)F

    move-result v0

    return v0
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
    .locals 12

    move-object v0, p0

    if-eqz p1, :cond_3

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v10, 0x0

    if-nez v1, :cond_0

    return v10

    .line 24
    :cond_0
    iget-boolean v1, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v1, :cond_1

    .line 25
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v3, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v8, v0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-object/from16 v9, p4

    invoke-static/range {v1 .. v9}, Landroid/graphics/Paint;->nBreakText(JJLjava/lang/String;ZFI[F)I

    move-result v1

    return v1

    .line 26
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v11

    .line 27
    iget v1, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v1, v11

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 28
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v3, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v5, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float v7, p3, v5

    iget v8, v0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v5, p1

    move v6, p2

    move-object/from16 v9, p4

    invoke-static/range {v1 .. v9}, Landroid/graphics/Paint;->nBreakText(JJLjava/lang/String;ZFI[F)I

    move-result v1

    .line 29
    invoke-virtual {p0, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    if-eqz p4, :cond_2

    .line 30
    aget v2, p4, v10

    iget v3, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v3

    aput v2, p4, v10

    :cond_2
    return v1

    .line 31
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public breakText([CIIF[F)I
    .locals 13

    move-object v0, p0

    move-object v5, p1

    if-eqz v5, :cond_5

    if-ltz p2, :cond_4

    .line 1
    array-length v1, v5

    sub-int/2addr v1, p2

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v1, v2, :cond_4

    .line 2
    array-length v1, v5

    const/4 v11, 0x0

    if-eqz v1, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v1, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v1, :cond_1

    .line 4
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v3, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v5, p1

    move v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v10, p5

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nBreakText(JJ[CIIFI[F)I

    move-result v1

    return v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v12

    .line 6
    iget v1, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v1, v12

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 7
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v3, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v6, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float v8, p4, v6

    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v5, p1

    move v6, p2

    move/from16 v7, p3

    move-object/from16 v10, p5

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nBreakText(JJ[CIIFI[F)I

    move-result v1

    .line 8
    invoke-virtual {p0, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    if-eqz p5, :cond_2

    .line 9
    aget v2, p5, v11

    iget v3, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v3

    aput v2, p5, v11

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v11

    .line 10
    :cond_4
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 11
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public clearShadowLayer()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v0, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public descent()F
    .locals 4

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nDescent(JJ)F

    move-result v0

    return v0
.end method

.method public getAlpha()I
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetAlpha(J)I

    move-result v0

    return v0
.end method

.method public getBidiFlags()I
    .locals 1

    iget v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    return v0
.end method

.method public getColor()I
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetColor(J)I

    move-result v0

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getFillPath(Landroid/graphics/Path;Landroid/graphics/Path;)Z
    .locals 6

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Paint;->nGetFillPath(JJJ)Z

    move-result p1

    return p1
.end method

.method public getFlags()I
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetFlags(J)I

    move-result v0

    return v0
.end method

.method public getFontFeatureSettings()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    return-object v0
.end method

.method public getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    invoke-static {v0, v1, v2, v3, p1}, Landroid/graphics/Paint;->nGetFontMetrics(JJLandroid/graphics/Paint$FontMetrics;)F

    move-result p1

    return p1
.end method

.method public getFontMetrics()Landroid/graphics/Paint$FontMetrics;
    .locals 1

    .line 2
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    return-object v0
.end method

.method public getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    invoke-static {v0, v1, v2, v3, p1}, Landroid/graphics/Paint;->nGetFontMetricsInt(JJLandroid/graphics/Paint$FontMetricsInt;)I

    move-result p1

    return p1
.end method

.method public getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    .locals 1

    .line 2
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    return-object v0
.end method

.method public getFontSpacing()F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    return v0
.end method

.method public getFontVariationSettings()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    return-object v0
.end method

.method public getHinting()I
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetHinting(J)I

    move-result v0

    return v0
.end method

.method public getHyphenEdit()I
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetHyphenEdit(J)I

    move-result v0

    return v0
.end method

.method public getLetterSpacing()F
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetLetterSpacing(J)F

    move-result v0

    return v0
.end method

.method public getMaskFilter()Landroid/graphics/MaskFilter;
    .locals 1

    iget-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    return-object v0
.end method

.method public getNativeInstance()J
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    move-wide v3, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Shader;->getNativeInstance()J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    :goto_0
    iget-wide v5, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 14
    .line 15
    cmp-long v0, v3, v5

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iput-wide v3, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 20
    .line 21
    iget-wide v5, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 22
    .line 23
    invoke-static {v5, v6, v3, v4}, Landroid/graphics/Paint;->nSetShader(JJ)J

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/ColorFilter;->getNativeInstance()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    :goto_1
    iget-wide v3, p0, Landroid/graphics/Paint;->mNativeColorFilter:J

    .line 36
    .line 37
    cmp-long v0, v1, v3

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    iput-wide v1, p0, Landroid/graphics/Paint;->mNativeColorFilter:J

    .line 42
    .line 43
    iget-wide v3, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 44
    .line 45
    invoke-static {v3, v4, v1, v2}, Landroid/graphics/Paint;->nSetColorFilter(JJ)J

    .line 46
    .line 47
    .line 48
    :cond_3
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 49
    .line 50
    return-wide v0
.end method

.method public getOffsetForAdvance(Ljava/lang/CharSequence;IIIIZF)I
    .locals 12

    move-object v0, p1

    move/from16 v1, p4

    move/from16 v2, p5

    if-eqz v0, :cond_1

    or-int v3, v1, p2

    or-int/2addr v3, p3

    or-int/2addr v3, v2

    sub-int v6, p2, v1

    or-int/2addr v3, v6

    sub-int v4, p3, p2

    or-int/2addr v3, v4

    sub-int v4, v2, p3

    or-int/2addr v3, v4

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, v2

    or-int/2addr v3, v4

    if-ltz v3, :cond_0

    sub-int v9, v2, v1

    .line 6
    invoke-static {v9}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v3

    const/4 v4, 0x0

    .line 7
    invoke-static {p1, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    sub-int v7, p3, v1

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, v3

    move/from16 v10, p6

    move/from16 v11, p7

    .line 8
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Paint;->getOffsetForAdvance([CIIIIZF)I

    move-result v0

    add-int/2addr v0, v1

    .line 9
    invoke-static {v3}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    return v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOffsetForAdvance([CIIIIZF)I
    .locals 12

    move-object v0, p0

    move-object v5, p1

    if-eqz v5, :cond_1

    or-int v1, p4, p2

    or-int/2addr v1, p3

    or-int v1, v1, p5

    sub-int v2, p2, p4

    or-int/2addr v1, v2

    sub-int v2, p3, p2

    or-int/2addr v1, v2

    sub-int v2, p5, p3

    or-int/2addr v1, v2

    .line 1
    array-length v2, v5

    sub-int v2, v2, p5

    or-int/2addr v1, v2

    if-ltz v1, :cond_0

    .line 2
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v3, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-static/range {v1 .. v11}, Landroid/graphics/Paint;->nGetOffsetForAdvance(JJ[CIIIIZF)I

    move-result v1

    return v1

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 4
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPathEffect()Landroid/graphics/PathEffect;
    .locals 1

    iget-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    return-object v0
.end method

.method public getRasterizer()Landroid/graphics/Rasterizer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F
    .locals 14

    move-object v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    if-eqz v0, :cond_2

    or-int v5, v3, v1

    or-int v5, v5, p7

    or-int/2addr v5, v2

    or-int/2addr v5, v4

    sub-int v8, v1, v3

    or-int/2addr v5, v8

    sub-int v6, p7, v1

    or-int/2addr v5, v6

    sub-int v6, v2, p7

    or-int/2addr v5, v6

    sub-int v6, v4, v2

    or-int/2addr v5, v6

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    sub-int/2addr v6, v4

    or-int/2addr v5, v6

    if-ltz v5, :cond_1

    if-ne v2, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sub-int v11, v4, v3

    .line 6
    invoke-static {v11}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    const/4 v5, 0x0

    .line 7
    invoke-static {p1, v3, v4, v1, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    sub-int v9, v2, v3

    const/4 v10, 0x0

    sub-int v13, p7, v3

    move-object v6, p0

    move-object v7, v1

    move/from16 v12, p6

    .line 8
    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Paint;->getRunAdvance([CIIIIZI)F

    move-result v0

    .line 9
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    return v0

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 11
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRunAdvance([CIIIIZI)F
    .locals 12

    move-object v0, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    if-eqz v5, :cond_2

    or-int v1, p4, v6

    or-int v1, v1, p7

    or-int/2addr v1, v7

    or-int v1, v1, p5

    sub-int v2, v6, p4

    or-int/2addr v1, v2

    sub-int v2, p7, v6

    or-int/2addr v1, v2

    sub-int v2, v7, p7

    or-int/2addr v1, v2

    sub-int v2, p5, v7

    or-int/2addr v1, v2

    .line 1
    array-length v2, v5

    sub-int v2, v2, p5

    or-int/2addr v1, v2

    if-ltz v1, :cond_1

    if-ne v7, v6, :cond_0

    const/4 v1, 0x0

    return v1

    .line 2
    :cond_0
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v3, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-static/range {v1 .. v11}, Landroid/graphics/Paint;->nGetRunAdvance(JJ[CIIIIZI)F

    move-result v1

    return v1

    .line 3
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 4
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getShader()Landroid/graphics/Shader;
    .locals 1

    iget-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    return-object v0
.end method

.method public getStrikeThruPosition()F
    .locals 4

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nGetStrikeThruPosition(JJ)F

    move-result v0

    return v0
.end method

.method public getStrikeThruThickness()F
    .locals 4

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nGetStrikeThruThickness(JJ)F

    move-result v0

    return v0
.end method

.method public getStrokeCap()Landroid/graphics/Paint$Cap;
    .locals 3

    sget-object v0, Landroid/graphics/Paint;->sCapArray:[Landroid/graphics/Paint$Cap;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v1, v2}, Landroid/graphics/Paint;->nGetStrokeCap(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getStrokeJoin()Landroid/graphics/Paint$Join;
    .locals 3

    sget-object v0, Landroid/graphics/Paint;->sJoinArray:[Landroid/graphics/Paint$Join;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v1, v2}, Landroid/graphics/Paint;->nGetStrokeJoin(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getStrokeMiter()F
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetStrokeMiter(J)F

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetStrokeWidth(J)F

    move-result v0

    return v0
.end method

.method public getStyle()Landroid/graphics/Paint$Style;
    .locals 3

    sget-object v0, Landroid/graphics/Paint;->sStyleArray:[Landroid/graphics/Paint$Style;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v1, v2}, Landroid/graphics/Paint;->nGetStyle(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTextAlign()Landroid/graphics/Paint$Align;
    .locals 3

    sget-object v0, Landroid/graphics/Paint;->sAlignArray:[Landroid/graphics/Paint$Align;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v1, v2}, Landroid/graphics/Paint;->nGetTextAlign(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTextBounds(Ljava/lang/CharSequence;IILandroid/graphics/Rect;)V
    .locals 3

    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, p3

    or-int/2addr v0, v2

    if-ltz v0, :cond_1

    if-eqz p4, :cond_0

    .line 6
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    const/4 v2, 0x0

    .line 7
    invoke-static {p1, p2, p3, v0, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 8
    invoke-virtual {p0, v0, v2, v1, p4}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 9
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "need bounds Rect"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
    .locals 10

    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_1

    if-eqz p4, :cond_0

    .line 2
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v3, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v8, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-object v9, p4

    invoke-static/range {v1 .. v9}, Landroid/graphics/Paint;->nGetStringBounds(JJLjava/lang/String;IIILandroid/graphics/Rect;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "need bounds Rect"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getTextBounds([CIILandroid/graphics/Rect;)V
    .locals 11

    or-int v0, p2, p3

    if-ltz v0, :cond_1

    add-int v0, p2, p3

    .line 12
    array-length v1, p1

    if-gt v0, v1, :cond_1

    if-eqz p4, :cond_0

    .line 13
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v4, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v9, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v6, p1

    move v7, p2

    move v8, p3

    move-object v10, p4

    invoke-static/range {v2 .. v10}, Landroid/graphics/Paint;->nGetCharArrayBounds(JJ[CIIILandroid/graphics/Rect;)V

    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "need bounds Rect"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getTextLocale()Ljava/util/Locale;
    .locals 2

    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getTextLocales()Landroid/os/LocaleList;
    .locals 1

    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V
    .locals 13

    move-object v0, p0

    or-int v1, p2, p3

    sub-int v2, p3, p2

    or-int/2addr v1, v2

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, v2, p3

    or-int/2addr v1, v2

    if-ltz v1, :cond_0

    .line 7
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v3, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v5, v0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 8
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v11

    move-object v6, p1

    move v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    .line 9
    invoke-static/range {v1 .. v12}, Landroid/graphics/Paint;->nGetTextPath(JJILjava/lang/String;IIFFJ)V

    return-void

    .line 10
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public getTextPath([CIIFFLandroid/graphics/Path;)V
    .locals 13

    move-object v0, p0

    or-int v1, p2, p3

    if-ltz v1, :cond_0

    add-int v1, p2, p3

    move-object v6, p1

    .line 1
    array-length v2, v6

    if-gt v1, v2, :cond_0

    .line 2
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v3, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v5, v0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 3
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v11

    move-object v6, p1

    move v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    .line 4
    invoke-static/range {v1 .. v12}, Landroid/graphics/Paint;->nGetTextPath(JJI[CIIFFJ)V

    return-void

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public getTextRunAdvances(Ljava/lang/CharSequence;IIIIZ[FI)F
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

    .line 13
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

    .line 14
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 15
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

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances(Ljava/lang/String;IIIIZ[FI)F

    move-result v0

    return v0

    .line 16
    :cond_1
    instance-of v1, v0, Landroid/text/SpannedString;

    if-nez v1, :cond_6

    instance-of v1, v0, Landroid/text/SpannableString;

    if-eqz v1, :cond_2

    goto :goto_2

    .line 17
    :cond_2
    instance-of v1, v0, Landroid/text/GraphicsOperations;

    if-eqz v1, :cond_3

    .line 18
    check-cast v0, Landroid/text/GraphicsOperations;

    move v1, p2

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object v8, p0

    invoke-interface/range {v0 .. v8}, Landroid/text/GraphicsOperations;->getTextRunAdvances(IIIIZ[FILandroid/graphics/Paint;)F

    move-result v0

    return v0

    .line 19
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_5

    if-ne v3, v2, :cond_4

    goto :goto_1

    :cond_4
    sub-int v10, v5, v4

    .line 20
    invoke-static {v10}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v11

    .line 21
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

    .line 22
    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v0

    .line 23
    invoke-static {v11}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    return v0

    :cond_5
    :goto_1
    const/4 v0, 0x0

    return v0

    .line 24
    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances(Ljava/lang/String;IIIIZ[FI)F

    move-result v0

    return v0

    .line 25
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 26
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTextRunAdvances(Ljava/lang/String;IIIIZ[FI)F
    .locals 16

    move-object/from16 v0, p0

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v13, p7

    if-eqz p1, :cond_8

    or-int v1, v6, v7

    or-int v1, v1, p4

    or-int v1, v1, p5

    or-int v1, v1, p8

    sub-int v14, v7, v6

    or-int/2addr v1, v14

    sub-int v2, v6, p4

    or-int/2addr v1, v2

    sub-int v2, p5, v7

    or-int/2addr v1, v2

    .line 27
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, v2, p5

    or-int/2addr v1, v2

    if-nez v13, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    array-length v2, v13

    sub-int v2, v2, p8

    sub-int/2addr v2, v14

    :goto_0
    or-int/2addr v1, v2

    if-ltz v1, :cond_7

    .line 28
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    if-ne v6, v7, :cond_1

    goto/16 :goto_4

    .line 29
    :cond_1
    iget-boolean v1, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    const/4 v2, 0x5

    const/4 v3, 0x4

    if-nez v1, :cond_3

    .line 30
    iget-wide v4, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v8, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    if-eqz p6, :cond_2

    move v10, v2

    goto :goto_1

    :cond_2
    move v10, v3

    :goto_1
    move-wide v1, v4

    move-wide v3, v8

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v11, p7

    move/from16 v12, p8

    invoke-static/range {v1 .. v12}, Landroid/graphics/Paint;->nGetTextAdvances(JJLjava/lang/String;IIIII[FI)F

    move-result v1

    return v1

    .line 31
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v15

    .line 32
    iget v1, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v1, v15

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 33
    iget-wide v4, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v8, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    if-eqz p6, :cond_4

    move v10, v2

    goto :goto_2

    :cond_4
    move v10, v3

    :goto_2
    move-wide v1, v4

    move-wide v3, v8

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v11, p7

    move/from16 v12, p8

    invoke-static/range {v1 .. v12}, Landroid/graphics/Paint;->nGetTextAdvances(JJLjava/lang/String;IIIII[FI)F

    move-result v1

    .line 34
    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    if-eqz v13, :cond_5

    add-int v2, p8, v14

    move/from16 v3, p8

    :goto_3
    if-ge v3, v2, :cond_5

    .line 35
    aget v4, v13, v3

    iget v5, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v4, v5

    aput v4, v13, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 36
    :cond_5
    iget v2, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v1, v2

    return v1

    :cond_6
    :goto_4
    const/4 v1, 0x0

    return v1

    .line 37
    :cond_7
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 38
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTextRunAdvances([CIIIIZ[FI)F
    .locals 15

    move-object v0, p0

    move-object/from16 v5, p1

    move-object/from16 v13, p7

    if-eqz v5, :cond_8

    or-int v1, p2, p3

    or-int v1, v1, p4

    or-int v1, v1, p5

    or-int v1, v1, p8

    sub-int v2, p2, p4

    or-int/2addr v1, v2

    sub-int v2, p5, p3

    or-int/2addr v1, v2

    add-int v2, p4, p5

    add-int v3, p2, p3

    sub-int v3, v2, v3

    or-int/2addr v1, v3

    .line 1
    array-length v3, v5

    sub-int/2addr v3, v2

    or-int/2addr v1, v3

    if-nez v13, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    array-length v2, v13

    add-int v3, p8, p3

    sub-int/2addr v2, v3

    :goto_0
    or-int/2addr v1, v2

    if-ltz v1, :cond_7

    .line 2
    array-length v1, v5

    if-eqz v1, :cond_6

    if-nez p3, :cond_1

    goto/16 :goto_4

    .line 3
    :cond_1
    iget-boolean v1, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    const/4 v2, 0x5

    const/4 v3, 0x4

    if-nez v1, :cond_3

    .line 4
    iget-wide v6, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v8, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    if-eqz p6, :cond_2

    move v10, v2

    goto :goto_1

    :cond_2
    move v10, v3

    :goto_1
    move-wide v1, v6

    move-wide v3, v8

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v11, p7

    move/from16 v12, p8

    invoke-static/range {v1 .. v12}, Landroid/graphics/Paint;->nGetTextAdvances(JJ[CIIIII[FI)F

    move-result v1

    return v1

    .line 5
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v14

    .line 6
    iget v1, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v1, v14

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 7
    iget-wide v6, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v8, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    if-eqz p6, :cond_4

    move v10, v2

    goto :goto_2

    :cond_4
    move v10, v3

    :goto_2
    move-wide v1, v6

    move-wide v3, v8

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v11, p7

    move/from16 v12, p8

    invoke-static/range {v1 .. v12}, Landroid/graphics/Paint;->nGetTextAdvances(JJ[CIIIII[FI)F

    move-result v1

    .line 8
    invoke-virtual {p0, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    if-eqz v13, :cond_5

    add-int v2, p8, p3

    move/from16 v3, p8

    :goto_3
    if-ge v3, v2, :cond_5

    .line 9
    aget v4, v13, v3

    iget v5, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v4, v5

    aput v4, v13, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 10
    :cond_5
    iget v2, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v1, v2

    return v1

    :cond_6
    :goto_4
    const/4 v1, 0x0

    return v1

    .line 11
    :cond_7
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 12
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

    if-nez v0, :cond_3

    instance-of v0, p1, Landroid/text/SpannedString;

    if-nez v0, :cond_3

    instance-of v0, p1, Landroid/text/SpannableString;

    if-eqz v0, :cond_0

    goto :goto_1

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

    const/4 p3, -0x1

    if-ne p1, p3, :cond_2

    goto :goto_0

    :cond_2
    add-int p3, p1, p2

    :goto_0
    return p3

    .line 11
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

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
    .locals 12

    move-object v11, p0

    move/from16 v10, p6

    or-int v0, p2, p3

    or-int v0, v0, p5

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

    or-int/2addr v0, v10

    if-ltz v0, :cond_0

    const/4 v0, 0x4

    if-gt v10, v0, :cond_0

    .line 13
    iget-wide v1, v11, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v3, v11, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object v0, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Landroid/graphics/Paint;->nGetTextRunCursor(JJLjava/lang/String;IIIII)I

    move-result v0

    return v0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getTextRunCursor([CIIIII)I
    .locals 12

    move-object v11, p0

    move/from16 v10, p6

    add-int v0, p2, p3

    or-int v1, p2, v0

    or-int v1, v1, p5

    sub-int v2, v0, p2

    or-int/2addr v1, v2

    sub-int v2, p5, p2

    or-int/2addr v1, v2

    sub-int v2, v0, p5

    or-int/2addr v1, v2

    move-object v5, p1

    .line 1
    array-length v2, v5

    sub-int/2addr v2, v0

    or-int v0, v1, v2

    or-int/2addr v0, v10

    if-ltz v0, :cond_0

    const/4 v0, 0x4

    if-gt v10, v0, :cond_0

    .line 2
    iget-wide v1, v11, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v3, v11, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object v0, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Landroid/graphics/Paint;->nGetTextRunCursor(JJ[CIIIII)I

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getTextScaleX()F
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetTextScaleX(J)F

    move-result v0

    return v0
.end method

.method public getTextSize()F
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetTextSize(J)F

    move-result v0

    return v0
.end method

.method public getTextSkewX()F
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetTextSkewX(J)F

    move-result v0

    return v0
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
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

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
    .locals 17

    move-object/from16 v0, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v13, p4

    if-eqz p1, :cond_6

    or-int v1, v8, v9

    sub-int v14, v9, v8

    or-int/2addr v1, v14

    .line 28
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v9

    or-int/2addr v1, v2

    if-ltz v1, :cond_5

    .line 29
    array-length v1, v13

    if-gt v14, v1, :cond_4

    .line 30
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    if-ne v8, v9, :cond_0

    goto :goto_1

    .line 31
    :cond_0
    iget-boolean v1, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v1, :cond_1

    .line 32
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v3, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v10, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v12, 0x0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v11, p4

    invoke-static/range {v1 .. v12}, Landroid/graphics/Paint;->nGetTextAdvances(JJLjava/lang/String;IIIII[FI)F

    return v14

    .line 33
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v12

    .line 34
    iget v1, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v1, v12

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 35
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v3, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v10, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/16 v16, 0x0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v11, p4

    move v15, v12

    move/from16 v12, v16

    invoke-static/range {v1 .. v12}, Landroid/graphics/Paint;->nGetTextAdvances(JJLjava/lang/String;IIIII[FI)F

    .line 36
    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v14, :cond_2

    .line 37
    aget v1, v13, v15

    iget v2, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v1, v2

    aput v1, v13, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_2
    return v14

    :cond_3
    :goto_1
    const/4 v1, 0x0

    return v1

    .line 38
    :cond_4
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 39
    :cond_5
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 40
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
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
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move/from16 v13, p3

    move-object/from16 v14, p4

    if-eqz v5, :cond_5

    or-int v1, p2, v13

    if-ltz v1, :cond_4

    add-int v1, p2, v13

    .line 1
    array-length v2, v5

    if-gt v1, v2, :cond_4

    array-length v1, v14

    if-gt v13, v1, :cond_4

    .line 2
    array-length v1, v5

    if-eqz v1, :cond_3

    if-nez v13, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-boolean v1, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v1, :cond_1

    .line 4
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v3, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v10, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v12, 0x0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v11, p4

    invoke-static/range {v1 .. v12}, Landroid/graphics/Paint;->nGetTextAdvances(JJ[CIIIII[FI)F

    return v13

    .line 5
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v12

    .line 6
    iget v1, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v1, v12

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 7
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v3, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v10, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/16 v16, 0x0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v11, p4

    move v15, v12

    move/from16 v12, v16

    invoke-static/range {v1 .. v12}, Landroid/graphics/Paint;->nGetTextAdvances(JJ[CIIIII[FI)F

    .line 8
    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v13, :cond_2

    .line 9
    aget v1, v14, v15

    iget v2, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v1, v2

    aput v1, v14, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_2
    return v13

    :cond_3
    :goto_1
    const/4 v1, 0x0

    return v1

    .line 10
    :cond_4
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 11
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getUnderlinePosition()F
    .locals 4

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nGetUnderlinePosition(JJ)F

    move-result v0

    return v0
.end method

.method public getUnderlineThickness()F
    .locals 4

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nGetUnderlineThickness(JJ)F

    move-result v0

    return v0
.end method

.method public getWordSpacing()F
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetWordSpacing(J)F

    move-result v0

    return v0
.end method

.method public getXfermode()Landroid/graphics/Xfermode;
    .locals 1

    iget-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    return-object v0
.end method

.method public hasEqualAttributes(Landroid/graphics/Paint;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 2
    .line 3
    iget-object v1, p1, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 8
    .line 9
    iget-object v1, p1, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 14
    .line 15
    iget-object v1, p1, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 20
    .line 21
    iget-object v1, p1, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 22
    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 26
    .line 27
    iget-object v1, p1, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 28
    .line 29
    if-ne v0, v1, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 32
    .line 33
    iget-object v1, p1, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 34
    .line 35
    if-ne v0, v1, :cond_0

    .line 36
    .line 37
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 38
    .line 39
    iget-boolean v1, p1, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 40
    .line 41
    if-ne v0, v1, :cond_0

    .line 42
    .line 43
    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 44
    .line 45
    iget v1, p1, Landroid/graphics/Paint;->mCompatScaling:F

    .line 46
    .line 47
    cmpl-float v0, v0, v1

    .line 48
    .line 49
    if-nez v0, :cond_0

    .line 50
    .line 51
    iget v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 52
    .line 53
    iget v1, p1, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 54
    .line 55
    cmpl-float v0, v0, v1

    .line 56
    .line 57
    if-nez v0, :cond_0

    .line 58
    .line 59
    iget v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 60
    .line 61
    iget v1, p1, Landroid/graphics/Paint;->mBidiFlags:I

    .line 62
    .line 63
    if-ne v0, v1, :cond_0

    .line 64
    .line 65
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    .line 66
    .line 67
    iget-object v1, p1, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    .line 75
    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v1, p1, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    .line 85
    iget-object v0, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 86
    .line 87
    iget-object v1, p1, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_0

    .line 94
    .line 95
    iget v0, p0, Landroid/graphics/Paint;->mShadowLayerRadius:F

    .line 96
    .line 97
    iget v1, p1, Landroid/graphics/Paint;->mShadowLayerRadius:F

    .line 98
    .line 99
    cmpl-float v0, v0, v1

    .line 100
    .line 101
    if-nez v0, :cond_0

    .line 102
    .line 103
    iget v0, p0, Landroid/graphics/Paint;->mShadowLayerDx:F

    .line 104
    .line 105
    iget v1, p1, Landroid/graphics/Paint;->mShadowLayerDx:F

    .line 106
    .line 107
    cmpl-float v0, v0, v1

    .line 108
    .line 109
    if-nez v0, :cond_0

    .line 110
    .line 111
    iget v0, p0, Landroid/graphics/Paint;->mShadowLayerDy:F

    .line 112
    .line 113
    iget v1, p1, Landroid/graphics/Paint;->mShadowLayerDy:F

    .line 114
    .line 115
    cmpl-float v0, v0, v1

    .line 116
    .line 117
    if-nez v0, :cond_0

    .line 118
    .line 119
    iget v0, p0, Landroid/graphics/Paint;->mShadowLayerColor:I

    .line 120
    .line 121
    iget v1, p1, Landroid/graphics/Paint;->mShadowLayerColor:I

    .line 122
    .line 123
    if-ne v0, v1, :cond_0

    .line 124
    .line 125
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFlags()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-ne v0, v1, :cond_0

    .line 134
    .line 135
    invoke-virtual {p0}, Landroid/graphics/Paint;->getHinting()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    invoke-virtual {p1}, Landroid/graphics/Paint;->getHinting()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-ne v0, v1, :cond_0

    .line 144
    .line 145
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    if-ne v0, v1, :cond_0

    .line 154
    .line 155
    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-ne v0, v1, :cond_0

    .line 164
    .line 165
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    cmpl-float v0, v0, v1

    .line 174
    .line 175
    if-nez v0, :cond_0

    .line 176
    .line 177
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeMiter()F

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeMiter()F

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    cmpl-float v0, v0, v1

    .line 186
    .line 187
    if-nez v0, :cond_0

    .line 188
    .line 189
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    if-ne v0, v1, :cond_0

    .line 198
    .line 199
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    if-ne v0, v1, :cond_0

    .line 208
    .line 209
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    if-ne v0, v1, :cond_0

    .line 218
    .line 219
    invoke-virtual {p0}, Landroid/graphics/Paint;->isElegantTextHeight()Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    invoke-virtual {p1}, Landroid/graphics/Paint;->isElegantTextHeight()Z

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    if-ne v0, v1, :cond_0

    .line 228
    .line 229
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    cmpl-float v0, v0, v1

    .line 238
    .line 239
    if-nez v0, :cond_0

    .line 240
    .line 241
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextScaleX()F

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextScaleX()F

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    cmpl-float v0, v0, v1

    .line 250
    .line 251
    if-nez v0, :cond_0

    .line 252
    .line 253
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSkewX()F

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSkewX()F

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    cmpl-float v0, v0, v1

    .line 262
    .line 263
    if-nez v0, :cond_0

    .line 264
    .line 265
    invoke-virtual {p0}, Landroid/graphics/Paint;->getLetterSpacing()F

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    invoke-virtual {p1}, Landroid/graphics/Paint;->getLetterSpacing()F

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    cmpl-float v0, v0, v1

    .line 274
    .line 275
    if-nez v0, :cond_0

    .line 276
    .line 277
    invoke-virtual {p0}, Landroid/graphics/Paint;->getWordSpacing()F

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    invoke-virtual {p1}, Landroid/graphics/Paint;->getWordSpacing()F

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    cmpl-float v0, v0, v1

    .line 286
    .line 287
    if-nez v0, :cond_0

    .line 288
    .line 289
    invoke-virtual {p0}, Landroid/graphics/Paint;->getHyphenEdit()I

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    invoke-virtual {p1}, Landroid/graphics/Paint;->getHyphenEdit()I

    .line 294
    .line 295
    .line 296
    move-result p1

    .line 297
    if-ne v0, p1, :cond_0

    .line 298
    .line 299
    const/4 p1, 0x1

    .line 300
    goto :goto_0

    .line 301
    :cond_0
    const/4 p1, 0x0

    .line 302
    :goto_0
    return p1
.end method

.method public hasGlyph(Ljava/lang/String;)Z
    .locals 6

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v4, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Landroid/graphics/Paint;->nHasGlyph(JJILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasShadowLayer()Z
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nHasShadowLayer(J)Z

    move-result v0

    return v0
.end method

.method public final isAntiAlias()Z
    .locals 2

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

.method public isElegantTextHeight()Z
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nIsElegantTextHeight(J)Z

    move-result v0

    return v0
.end method

.method public final isFakeBoldText()Z
    .locals 1

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

    .line 25
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, p3

    or-int/2addr v0, v2

    if-ltz v0, :cond_6

    .line 26
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_5

    if-ne p2, p3, :cond_0

    goto :goto_1

    .line 27
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 28
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result p1

    return p1

    .line 29
    :cond_1
    instance-of v0, p1, Landroid/text/SpannedString;

    if-nez v0, :cond_4

    instance-of v0, p1, Landroid/text/SpannableString;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 30
    :cond_2
    instance-of v0, p1, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_3

    .line 31
    check-cast p1, Landroid/text/GraphicsOperations;

    invoke-interface {p1, p2, p3, p0}, Landroid/text/GraphicsOperations;->measureText(IILandroid/graphics/Paint;)F

    move-result p1

    return p1

    .line 32
    :cond_3
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    const/4 v2, 0x0

    .line 33
    invoke-static {p1, p2, p3, v0, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 34
    invoke-virtual {p0, v0, v2, v1}, Landroid/graphics/Paint;->measureText([CII)F

    move-result p1

    .line 35
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    return p1

    .line 36
    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result p1

    return p1

    :cond_5
    :goto_1
    const/4 p1, 0x0

    return p1

    .line 37
    :cond_6
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 38
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "text cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public measureText(Ljava/lang/String;)F
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result p1

    return p1

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "text cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public measureText(Ljava/lang/String;II)F
    .locals 14

    move-object v0, p0

    move/from16 v8, p2

    move/from16 v9, p3

    if-eqz p1, :cond_4

    or-int v1, v8, v9

    sub-int v2, v9, v8

    or-int/2addr v1, v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v9

    or-int/2addr v1, v2

    if-ltz v1, :cond_3

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    if-ne v8, v9, :cond_0

    goto :goto_1

    .line 14
    :cond_0
    iget-boolean v1, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v1, :cond_1

    .line 15
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v3, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v10, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-static/range {v1 .. v12}, Landroid/graphics/Paint;->nGetTextAdvances(JJLjava/lang/String;IIIII[FI)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    :goto_0
    double-to-float v1, v1

    return v1

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v13

    .line 17
    iget v1, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v1, v13

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 18
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v3, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v10, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-static/range {v1 .. v12}, Landroid/graphics/Paint;->nGetTextAdvances(JJLjava/lang/String;IIIII[FI)F

    move-result v1

    .line 19
    invoke-virtual {p0, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 20
    iget v2, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v1, 0x0

    return v1

    .line 21
    :cond_3
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 22
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public measureText([CII)F
    .locals 14

    move-object v0, p0

    move-object v5, p1

    if-eqz v5, :cond_4

    or-int v1, p2, p3

    if-ltz v1, :cond_3

    add-int v1, p2, p3

    .line 1
    array-length v2, v5

    if-gt v1, v2, :cond_3

    .line 2
    array-length v1, v5

    if-eqz v1, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-boolean v1, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v1, :cond_1

    .line 4
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v3, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v10, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-static/range {v1 .. v12}, Landroid/graphics/Paint;->nGetTextAdvances(JJ[CIIIII[FI)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    :goto_0
    double-to-float v1, v1

    return v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v13

    .line 6
    iget v1, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v1, v13

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 7
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v3, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v10, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-static/range {v1 .. v12}, Landroid/graphics/Paint;->nGetTextAdvances(JJ[CIIIII[FI)F

    move-result v1

    .line 8
    invoke-virtual {p0, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 9
    iget v2, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v1, 0x0

    return v1

    .line 10
    :cond_3
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 11
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public reset()V
    .locals 3

    .line 1
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/graphics/Paint;->nReset(J)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x500

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 13
    .line 14
    iput-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 15
    .line 16
    iput-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 17
    .line 18
    iput-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 19
    .line 20
    const-wide/16 v1, 0x0

    .line 21
    .line 22
    iput-wide v1, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 23
    .line 24
    iput-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 25
    .line 26
    iput-wide v1, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    .line 27
    .line 28
    iput-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    iput-boolean v1, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 32
    .line 33
    const/high16 v2, 0x3f800000    # 1.0f

    .line 34
    .line 35
    iput v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 36
    .line 37
    iput v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 38
    .line 39
    const/4 v2, 0x2

    .line 40
    iput v2, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 41
    .line 42
    invoke-static {}, Landroid/os/LocaleList;->getAdjustedDefault()Landroid/os/LocaleList;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextLocales(Landroid/os/LocaleList;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setElegantTextHeight(Z)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 53
    .line 54
    iput-object v0, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerRadius:F

    .line 58
    .line 59
    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerDx:F

    .line 60
    .line 61
    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerDy:F

    .line 62
    .line 63
    iput v1, p0, Landroid/graphics/Paint;->mShadowLayerColor:I

    .line 64
    .line 65
    return-void
.end method

.method public set(Landroid/graphics/Paint;)V
    .locals 4

    .line 1
    if-eq p0, p1, :cond_0

    .line 2
    .line 3
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 4
    .line 5
    iget-wide v2, p1, Landroid/graphics/Paint;->mNativePaint:J

    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nSet(JJ)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setClassVariablesFrom(Landroid/graphics/Paint;)V

    .line 11
    .line 12
    .line 13
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

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetAlpha(JI)V

    return-void
.end method

.method public setAntiAlias(Z)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetAntiAlias(JZ)V

    return-void
.end method

.method public setBidiFlags(I)V
    .locals 2

    .line 1
    and-int/lit8 p1, p1, 0x7

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    if-gt p1, v0, :cond_0

    .line 5
    .line 6
    iput p1, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string/jumbo v1, "unknown bidi flag: "

    .line 12
    .line 13
    .line 14
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public setColor(I)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetColor(JI)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, -0x1

    .line 6
    .line 7
    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeColorFilter:J

    .line 8
    .line 9
    :cond_0
    iput-object p1, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 10
    .line 11
    return-object p1
.end method

.method public setCompatibilityScaling(F)V
    .locals 4

    .line 1
    float-to-double v0, p1

    .line 2
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 3
    .line 4
    cmpl-double v0, v0, v2

    .line 5
    .line 6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 12
    .line 13
    iput v1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 14
    .line 15
    iput v1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 20
    .line 21
    iput p1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 22
    .line 23
    div-float/2addr v1, p1

    .line 24
    iput v1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method public setDither(Z)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetDither(JZ)V

    return-void
.end method

.method public setElegantTextHeight(Z)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetElegantTextHeight(JZ)V

    return-void
.end method

.method public setFakeBoldText(Z)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFakeBoldText(JZ)V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFilterBitmap(JZ)V

    return-void
.end method

.method public setFlags(I)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFlags(JI)V

    return-void
.end method

.method public setFontFeatureSettings(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    :cond_0
    if-nez p1, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    :cond_1
    if-eqz p1, :cond_3

    .line 19
    .line 20
    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    :cond_2
    return-void

    .line 29
    :cond_3
    iput-object p1, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 30
    .line 31
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 32
    .line 33
    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFontFeatureSettings(JLjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public setFontVariationSettings(Ljava/lang/String;)Z
    .locals 9

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq p1, v0, :cond_7

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_0
    if-eqz p1, :cond_6

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 33
    .line 34
    :cond_2
    invoke-static {p1}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    new-instance v3, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    array-length v4, v2

    .line 44
    const/4 v5, 0x0

    .line 45
    move v6, v5

    .line 46
    :goto_0
    if-ge v6, v4, :cond_4

    .line 47
    .line 48
    aget-object v7, v2, v6

    .line 49
    .line 50
    invoke-virtual {v7}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    invoke-virtual {v0, v8}, Landroid/graphics/Typeface;->isSupportedAxes(I)Z

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    if-eqz v8, :cond_3

    .line 59
    .line 60
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_5

    .line 71
    .line 72
    return v5

    .line 73
    :cond_5
    iput-object p1, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v0, v3}, Landroid/graphics/Typeface;->createFromTypefaceWithVariation(Landroid/graphics/Typeface;Ljava/util/List;)Landroid/graphics/Typeface;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 80
    .line 81
    .line 82
    return v1

    .line 83
    :cond_6
    :goto_1
    const/4 p1, 0x0

    .line 84
    iput-object p1, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 85
    .line 86
    iget-object p1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 87
    .line 88
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromTypefaceWithVariation(Landroid/graphics/Typeface;Ljava/util/List;)Landroid/graphics/Typeface;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 97
    .line 98
    .line 99
    :cond_7
    :goto_2
    return v1
.end method

.method public setHinting(I)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetHinting(JI)V

    return-void
.end method

.method public setHyphenEdit(I)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetHyphenEdit(JI)V

    return-void
.end method

.method public setLetterSpacing(F)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetLetterSpacing(JF)V

    return-void
.end method

.method public setLinearText(Z)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetLinearText(JZ)V

    return-void
.end method

.method public setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-wide v0, p1, Landroid/graphics/MaskFilter;->native_instance:J

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    :goto_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 9
    .line 10
    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetMaskFilter(JJ)J

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 14
    .line 15
    return-object p1
.end method

.method public setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-wide v0, p1, Landroid/graphics/PathEffect;->native_instance:J

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    :goto_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 9
    .line 10
    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetPathEffect(JJ)J

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 14
    .line 15
    return-object p1
.end method

.method public setRasterizer(Landroid/graphics/Rasterizer;)Landroid/graphics/Rasterizer;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p1
.end method

.method public setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, -0x1

    .line 6
    .line 7
    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 8
    .line 9
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 10
    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nSetShader(JJ)J

    .line 14
    .line 15
    .line 16
    :cond_0
    iput-object p1, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 17
    .line 18
    return-object p1
.end method

.method public setShadowLayer(FFFI)V
    .locals 6

    .line 1
    iput p1, p0, Landroid/graphics/Paint;->mShadowLayerRadius:F

    .line 2
    .line 3
    iput p2, p0, Landroid/graphics/Paint;->mShadowLayerDx:F

    .line 4
    .line 5
    iput p3, p0, Landroid/graphics/Paint;->mShadowLayerDy:F

    .line 6
    .line 7
    iput p4, p0, Landroid/graphics/Paint;->mShadowLayerColor:I

    .line 8
    .line 9
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 10
    .line 11
    move v2, p1

    .line 12
    move v3, p2

    .line 13
    move v4, p3

    .line 14
    move v5, p4

    .line 15
    invoke-static/range {v0 .. v5}, Landroid/graphics/Paint;->nSetShadowLayer(JFFFI)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setStrikeThruText(Z)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStrikeThruText(JZ)V

    return-void
.end method

.method public setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget p1, p1, Landroid/graphics/Paint$Cap;->nativeInt:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStrokeCap(JI)V

    return-void
.end method

.method public setStrokeJoin(Landroid/graphics/Paint$Join;)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget p1, p1, Landroid/graphics/Paint$Join;->nativeInt:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStrokeJoin(JI)V

    return-void
.end method

.method public setStrokeMiter(F)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStrokeMiter(JF)V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStrokeWidth(JF)V

    return-void
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget p1, p1, Landroid/graphics/Paint$Style;->nativeInt:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStyle(JI)V

    return-void
.end method

.method public setSubpixelText(Z)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetSubpixelText(JZ)V

    return-void
.end method

.method public setTextAlign(Landroid/graphics/Paint$Align;)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget p1, p1, Landroid/graphics/Paint$Align;->nativeInt:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetTextAlign(JI)V

    return-void
.end method

.method public setTextLocale(Ljava/util/Locale;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    new-instance v0, Landroid/os/LocaleList;

    .line 29
    .line 30
    new-array v2, v2, [Ljava/util/Locale;

    .line 31
    .line 32
    aput-object p1, v2, v1

    .line 33
    .line 34
    invoke-direct {v0, v2}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    .line 38
    .line 39
    invoke-direct {p0}, Landroid/graphics/Paint;->syncTextLocalesWithMinikin()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    const-string/jumbo v0, "locale cannot be null"

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method

.method public setTextLocales(Landroid/os/LocaleList;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/os/LocaleList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iput-object p1, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    .line 19
    .line 20
    invoke-direct {p0}, Landroid/graphics/Paint;->syncTextLocalesWithMinikin()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string/jumbo v0, "locales cannot be null or empty"

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1
.end method

.method public setTextScaleX(F)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetTextScaleX(JF)V

    return-void
.end method

.method public setTextSize(F)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetTextSize(JF)V

    return-void
.end method

.method public setTextSkewX(F)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetTextSkewX(JF)V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-wide v0, p1, Landroid/graphics/Typeface;->native_instance:J

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    :goto_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 9
    .line 10
    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetTypeface(JJ)J

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 14
    .line 15
    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    .line 16
    .line 17
    return-object p1
.end method

.method public setUnderlineText(Z)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetUnderlineText(JZ)V

    return-void
.end method

.method public setWordSpacing(F)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetWordSpacing(JF)V

    return-void
.end method

.method public setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget v0, p1, Landroid/graphics/Xfermode;->porterDuffMode:I

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget v0, Landroid/graphics/Xfermode;->DEFAULT:I

    .line 7
    .line 8
    :goto_0
    iget-object v1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget v1, v1, Landroid/graphics/Xfermode;->porterDuffMode:I

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    sget v1, Landroid/graphics/Xfermode;->DEFAULT:I

    .line 16
    .line 17
    :goto_1
    if-eq v0, v1, :cond_2

    .line 18
    .line 19
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 20
    .line 21
    invoke-static {v1, v2, v0}, Landroid/graphics/Paint;->nSetXfermode(JI)V

    .line 22
    .line 23
    .line 24
    :cond_2
    iput-object p1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 25
    .line 26
    return-object p1
.end method
