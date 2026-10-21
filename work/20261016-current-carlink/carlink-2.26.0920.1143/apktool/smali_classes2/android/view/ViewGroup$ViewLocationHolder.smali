.class Landroid/view/ViewGroup$ViewLocationHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewLocationHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/view/ViewGroup$ViewLocationHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final COMPARISON_STRATEGY_LOCATION:I = 0x2

.field public static final COMPARISON_STRATEGY_STRIPE:I = 0x1

.field private static final MAX_POOL_SIZE:I = 0x20

.field private static sComparisonStrategy:I

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/view/ViewGroup$ViewLocationHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLayoutDirection:I

.field private final mLocation:Landroid/graphics/Rect;

.field public mView:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroid/view/ViewGroup$ViewLocationHolder;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    sput v0, Landroid/view/ViewGroup$ViewLocationHolder;->sComparisonStrategy:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    .line 10
    .line 11
    return-void
.end method

.method private clear()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    .line 3
    .line 4
    iget-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private init(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v1

    .line 11
    const-string v2, "ViewGroup"

    .line 12
    .line 13
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/4 v1, -0x1

    .line 23
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 24
    .line 25
    .line 26
    :cond_0
    :goto_0
    iput-object p2, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput p1, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLayoutDirection:I

    .line 33
    .line 34
    return-void
.end method

.method public static obtain(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/ViewGroup$ViewLocationHolder;
    .locals 1

    .line 1
    sget-object v0, Landroid/view/ViewGroup$ViewLocationHolder;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/ViewGroup$ViewLocationHolder;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/view/ViewGroup$ViewLocationHolder;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/view/ViewGroup$ViewLocationHolder;-><init>()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$ViewLocationHolder;->init(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public static setComparisonStrategy(I)V
    .locals 0

    sput p0, Landroid/view/ViewGroup$ViewLocationHolder;->sComparisonStrategy:I

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/view/ViewGroup$ViewLocationHolder;)I
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    sget v1, Landroid/view/ViewGroup$ViewLocationHolder;->sComparisonStrategy:I

    if-ne v1, v0, :cond_2

    .line 3
    iget-object v1, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v4

    if-gtz v2, :cond_1

    const/4 p1, -0x1

    return p1

    .line 4
    :cond_1
    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    if-ltz v1, :cond_2

    return v0

    .line 5
    :cond_2
    iget v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLayoutDirection:I

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_4

    return v0

    .line 7
    :cond_3
    iget-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_4

    neg-int p1, v0

    return p1

    .line 8
    :cond_4
    iget-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    if-eqz v1, :cond_5

    return v1

    .line 9
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_6

    neg-int p1, v0

    return p1

    .line 10
    :cond_6
    iget-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_7

    neg-int p1, v0

    return p1

    .line 11
    :cond_7
    iget-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    iget-object p1, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/view/ViewGroup$ViewLocationHolder;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$ViewLocationHolder;->compareTo(Landroid/view/ViewGroup$ViewLocationHolder;)I

    move-result p1

    return p1
.end method

.method public recycle()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/view/ViewGroup$ViewLocationHolder;->clear()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/view/ViewGroup$ViewLocationHolder;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method
