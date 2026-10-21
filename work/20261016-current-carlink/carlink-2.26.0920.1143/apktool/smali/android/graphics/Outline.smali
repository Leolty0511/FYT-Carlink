.class public final Landroid/graphics/Outline;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Outline$Mode;
    }
.end annotation


# static fields
.field public static final MODE_CONVEX_PATH:I = 0x2

.field public static final MODE_EMPTY:I = 0x0

.field public static final MODE_ROUND_RECT:I = 0x1

.field private static final RADIUS_UNDEFINED:F = -Infinityf


# instance fields
.field public mAlpha:F

.field public mMode:I

.field public mPath:Landroid/graphics/Path;

.field public mRadius:F

.field public final mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/graphics/Outline;->mMode:I

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    .line 4
    iput v0, p0, Landroid/graphics/Outline;->mRadius:F

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Outline;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Landroid/graphics/Outline;->mMode:I

    .line 7
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    .line 8
    iput v0, p0, Landroid/graphics/Outline;->mRadius:F

    .line 9
    invoke-virtual {p0, p1}, Landroid/graphics/Outline;->set(Landroid/graphics/Outline;)V

    return-void
.end method


# virtual methods
.method public canClip()Z
    .locals 2

    iget v0, p0, Landroid/graphics/Outline;->mMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Landroid/graphics/Outline;->mAlpha:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Landroid/graphics/Outline;->mRadius:F

    return v0
.end method

.method public getRect(Landroid/graphics/Rect;)Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/graphics/Outline;->mMode:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1

    .line 8
    :cond_0
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 11
    .line 12
    .line 13
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Landroid/graphics/Outline;->mMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public offset(II)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/graphics/Outline;->mMode:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x2

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    .line 16
    .line 17
    int-to-float p1, p1

    .line 18
    int-to-float p2, p2

    .line 19
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->offset(FF)V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method public set(Landroid/graphics/Outline;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/graphics/Outline;->mMode:I

    .line 2
    .line 3
    iput v0, p0, Landroid/graphics/Outline;->mMode:I

    .line 4
    .line 5
    iget v0, p1, Landroid/graphics/Outline;->mMode:I

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Landroid/graphics/Path;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    .line 22
    .line 23
    iget-object v1, p1, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    .line 29
    .line 30
    iget-object v1, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 33
    .line 34
    .line 35
    iget v0, p1, Landroid/graphics/Outline;->mRadius:F

    .line 36
    .line 37
    iput v0, p0, Landroid/graphics/Outline;->mRadius:F

    .line 38
    .line 39
    iget p1, p1, Landroid/graphics/Outline;->mAlpha:F

    .line 40
    .line 41
    iput p1, p0, Landroid/graphics/Outline;->mAlpha:F

    .line 42
    .line 43
    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    iput p1, p0, Landroid/graphics/Outline;->mAlpha:F

    return-void
.end method

.method public setConvexPath(Landroid/graphics/Path;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/Outline;->setEmpty()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Path;->isConvex()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    new-instance v0, Landroid/graphics/Path;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    .line 27
    .line 28
    :cond_1
    const/4 v0, 0x2

    .line 29
    iput v0, p0, Landroid/graphics/Outline;->mMode:I

    .line 30
    .line 31
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 39
    .line 40
    .line 41
    const/high16 p1, -0x800000    # Float.NEGATIVE_INFINITY

    .line 42
    .line 43
    iput p1, p0, Landroid/graphics/Outline;->mRadius:F

    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 47
    .line 48
    const-string/jumbo v0, "path must be convex"

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1
.end method

.method public setEmpty()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Landroid/graphics/Outline;->mMode:I

    .line 10
    .line 11
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 14
    .line 15
    .line 16
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    .line 17
    .line 18
    iput v0, p0, Landroid/graphics/Outline;->mRadius:F

    .line 19
    .line 20
    return-void
.end method

.method public setOval(IIII)V
    .locals 8

    if-ge p1, p3, :cond_3

    if-lt p2, p4, :cond_0

    goto :goto_1

    :cond_0
    sub-int v0, p4, p2

    sub-int v1, p3, p1

    if-ne v0, v1, :cond_1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v7, v0, v1

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 1
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    if-nez v0, :cond_2

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    :goto_0
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Landroid/graphics/Outline;->mMode:I

    .line 6
    iget-object v1, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Path;->addOval(FFFFLandroid/graphics/Path$Direction;)V

    .line 7
    iget-object p1, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    const/high16 p1, -0x800000    # Float.NEGATIVE_INFINITY

    .line 8
    iput p1, p0, Landroid/graphics/Outline;->mRadius:F

    return-void

    .line 9
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Outline;->setEmpty()V

    return-void
.end method

.method public setOval(Landroid/graphics/Rect;)V
    .locals 3

    .line 10
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/Outline;->setOval(IIII)V

    return-void
.end method

.method public setRect(IIII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method

.method public setRect(Landroid/graphics/Rect;)V
    .locals 3

    .line 2
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/Outline;->setRect(IIII)V

    return-void
.end method

.method public setRoundRect(IIIIF)V
    .locals 2

    if-ge p1, p3, :cond_2

    if-lt p2, p4, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget v0, p0, Landroid/graphics/Outline;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    :cond_1
    const/4 v0, 0x1

    .line 3
    iput v0, p0, Landroid/graphics/Outline;->mMode:I

    .line 4
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 5
    iput p5, p0, Landroid/graphics/Outline;->mRadius:F

    return-void

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Outline;->setEmpty()V

    return-void
.end method

.method public setRoundRect(Landroid/graphics/Rect;F)V
    .locals 6

    .line 7
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
