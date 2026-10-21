.class public Landroid/view/animation/ClipRectAnimation;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field protected mFromRect:Landroid/graphics/Rect;

.field protected mToRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(IIIIIIII)V
    .locals 1

    .line 7
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    .line 9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    .line 10
    iget-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 11
    iget-object p1, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p5, p6, p7, p8}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 4
    iget-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5
    iget-object p1, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Expected non-null animation clip rects"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 4
    .line 5
    iget-object v2, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    .line 6
    .line 7
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 8
    .line 9
    sub-int/2addr v3, v1

    .line 10
    int-to-float v3, v3

    .line 11
    mul-float/2addr v3, p1

    .line 12
    float-to-int v3, v3

    .line 13
    add-int/2addr v1, v3

    .line 14
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 15
    .line 16
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 17
    .line 18
    sub-int/2addr v4, v3

    .line 19
    int-to-float v4, v4

    .line 20
    mul-float/2addr v4, p1

    .line 21
    float-to-int v4, v4

    .line 22
    add-int/2addr v3, v4

    .line 23
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 24
    .line 25
    iget v5, v2, Landroid/graphics/Rect;->right:I

    .line 26
    .line 27
    sub-int/2addr v5, v4

    .line 28
    int-to-float v5, v5

    .line 29
    mul-float/2addr v5, p1

    .line 30
    float-to-int v5, v5

    .line 31
    add-int/2addr v4, v5

    .line 32
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 33
    .line 34
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 35
    .line 36
    sub-int/2addr v2, v0

    .line 37
    int-to-float v2, v2

    .line 38
    mul-float/2addr v2, p1

    .line 39
    float-to-int p1, v2

    .line 40
    add-int/2addr v0, p1

    .line 41
    invoke-virtual {p2, v1, v3, v4, v0}, Landroid/view/animation/Transformation;->setClipRect(IIII)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public willChangeTransformationMatrix()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
