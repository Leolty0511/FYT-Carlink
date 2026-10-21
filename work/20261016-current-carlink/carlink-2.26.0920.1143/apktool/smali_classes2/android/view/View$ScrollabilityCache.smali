.class Landroid/view/View$ScrollabilityCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollabilityCache"
.end annotation


# static fields
.field public static final DRAGGING_HORIZONTAL_SCROLL_BAR:I = 0x2

.field public static final DRAGGING_VERTICAL_SCROLL_BAR:I = 0x1

.field public static final FADING:I = 0x2

.field public static final NOT_DRAGGING:I = 0x0

.field public static final OFF:I = 0x0

.field public static final ON:I = 0x1

.field private static final OPAQUE:[F

.field private static final TRANSPARENT:[F


# instance fields
.field public fadeScrollBars:Z

.field public fadeStartTime:J

.field public fadingEdgeLength:I

.field public host:Landroid/view/View;

.field public interpolatorValues:[F

.field private mLastColor:I

.field public final mScrollBarBounds:Landroid/graphics/Rect;

.field public mScrollBarDraggingPos:F

.field public mScrollBarDraggingState:I

.field public final mScrollBarTouchBounds:Landroid/graphics/Rect;

.field public final matrix:Landroid/graphics/Matrix;

.field public final paint:Landroid/graphics/Paint;

.field public scrollBar:Landroid/widget/ScrollBarDrawable;

.field public scrollBarDefaultDelayBeforeFade:I

.field public scrollBarFadeDuration:I

.field public final scrollBarInterpolator:Landroid/graphics/Interpolator;

.field public scrollBarMinTouchTarget:I

.field public scrollBarSize:I

.field public shader:Landroid/graphics/Shader;

.field public state:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [F

    .line 3
    .line 4
    const/high16 v2, 0x437f0000    # 255.0f

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput v2, v1, v3

    .line 8
    .line 9
    sput-object v1, Landroid/view/View$ScrollabilityCache;->OPAQUE:[F

    .line 10
    .line 11
    new-array v0, v0, [F

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    aput v1, v0, v3

    .line 15
    .line 16
    sput-object v0, Landroid/view/View$ScrollabilityCache;->TRANSPARENT:[F

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewConfiguration;Landroid/view/View;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Interpolator;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-direct {v0, v1, v2}, Landroid/graphics/Interpolator;-><init>(II)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->scrollBarInterpolator:Landroid/graphics/Interpolator;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Landroid/view/View$ScrollabilityCache;->state:I

    .line 15
    .line 16
    new-instance v1, Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Landroid/view/View$ScrollabilityCache;->mScrollBarBounds:Landroid/graphics/Rect;

    .line 22
    .line 23
    new-instance v1, Landroid/graphics/Rect;

    .line 24
    .line 25
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Landroid/view/View$ScrollabilityCache;->mScrollBarTouchBounds:Landroid/graphics/Rect;

    .line 29
    .line 30
    iput v0, p0, Landroid/view/View$ScrollabilityCache;->mScrollBarDraggingState:I

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Landroid/view/View$ScrollabilityCache;->mScrollBarDraggingPos:F

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput v0, p0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledScrollBarSize()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iput v0, p0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinScrollbarTouchTarget()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iput p1, p0, Landroid/view/View$ScrollabilityCache;->scrollBarMinTouchTarget:I

    .line 52
    .line 53
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    iput p1, p0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    .line 58
    .line 59
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iput p1, p0, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    .line 64
    .line 65
    new-instance p1, Landroid/graphics/Paint;

    .line 66
    .line 67
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    .line 71
    .line 72
    new-instance v0, Landroid/graphics/Matrix;

    .line 73
    .line 74
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->matrix:Landroid/graphics/Matrix;

    .line 78
    .line 79
    new-instance v0, Landroid/graphics/LinearGradient;

    .line 80
    .line 81
    const/4 v2, 0x0

    .line 82
    const/4 v3, 0x0

    .line 83
    const/4 v4, 0x0

    .line 84
    const/high16 v5, 0x3f800000    # 1.0f

    .line 85
    .line 86
    const/high16 v6, -0x1000000

    .line 87
    .line 88
    const/4 v7, 0x0

    .line 89
    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 90
    .line 91
    move-object v1, v0

    .line 92
    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 98
    .line 99
    .line 100
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    .line 101
    .line 102
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 103
    .line 104
    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 108
    .line 109
    .line 110
    iput-object p2, p0, Landroid/view/View$ScrollabilityCache;->host:Landroid/view/View;

    .line 111
    .line 112
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Landroid/view/View$ScrollabilityCache;->fadeStartTime:J

    .line 6
    .line 7
    cmp-long v2, v0, v2

    .line 8
    .line 9
    if-ltz v2, :cond_0

    .line 10
    .line 11
    long-to-int v0, v0

    .line 12
    iget-object v1, p0, Landroid/view/View$ScrollabilityCache;->scrollBarInterpolator:Landroid/graphics/Interpolator;

    .line 13
    .line 14
    sget-object v2, Landroid/view/View$ScrollabilityCache;->OPAQUE:[F

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v1, v3, v0, v2}, Landroid/graphics/Interpolator;->setKeyFrame(II[F)V

    .line 18
    .line 19
    .line 20
    iget v2, p0, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    .line 21
    .line 22
    add-int/2addr v0, v2

    .line 23
    sget-object v2, Landroid/view/View$ScrollabilityCache;->TRANSPARENT:[F

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-virtual {v1, v3, v0, v2}, Landroid/graphics/Interpolator;->setKeyFrame(II[F)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x2

    .line 30
    iput v0, p0, Landroid/view/View$ScrollabilityCache;->state:I

    .line 31
    .line 32
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->host:Landroid/view/View;

    .line 33
    .line 34
    invoke-virtual {v0, v3}, Landroid/view/View;->invalidate(Z)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public setFadeColor(I)V
    .locals 9

    .line 1
    iget v0, p0, Landroid/view/View$ScrollabilityCache;->mLastColor:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    iput p1, p0, Landroid/view/View$ScrollabilityCache;->mLastColor:I

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroid/graphics/LinearGradient;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/high16 v5, 0x3f800000    # 1.0f

    .line 15
    .line 16
    const/high16 v1, -0x1000000

    .line 17
    .line 18
    or-int v6, p1, v1

    .line 19
    .line 20
    const v1, 0xffffff

    .line 21
    .line 22
    .line 23
    and-int v7, p1, v1

    .line 24
    .line 25
    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 26
    .line 27
    move-object v1, v0

    .line 28
    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    .line 32
    .line 33
    iget-object p1, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance p1, Landroid/graphics/LinearGradient;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    const/4 v3, 0x0

    .line 49
    const/4 v4, 0x0

    .line 50
    const/high16 v5, 0x3f800000    # 1.0f

    .line 51
    .line 52
    const/high16 v6, -0x1000000

    .line 53
    .line 54
    const/4 v7, 0x0

    .line 55
    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 56
    .line 57
    move-object v1, p1

    .line 58
    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    .line 62
    .line 63
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    .line 69
    .line 70
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    .line 71
    .line 72
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 73
    .line 74
    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 78
    .line 79
    .line 80
    :cond_1
    :goto_0
    return-void
.end method
