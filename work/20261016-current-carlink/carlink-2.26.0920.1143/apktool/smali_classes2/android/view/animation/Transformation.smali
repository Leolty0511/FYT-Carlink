.class public Landroid/view/animation/Transformation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TYPE_ALPHA:I = 0x1

.field public static final TYPE_BOTH:I = 0x3

.field public static final TYPE_IDENTITY:I = 0x0

.field public static final TYPE_MATRIX:I = 0x2


# instance fields
.field protected mAlpha:F

.field private mClipRect:Landroid/graphics/Rect;

.field private mHasClipRect:Z

.field protected mMatrix:Landroid/graphics/Matrix;

.field protected mTransformationType:I


# direct methods
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
    iput-object v0, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/animation/Transformation;->clear()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Matrix;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-object v0, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Landroid/view/animation/Transformation;->mHasClipRect:Z

    .line 23
    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    .line 25
    .line 26
    iput v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    .line 27
    .line 28
    const/4 v0, 0x3

    .line 29
    iput v0, p0, Landroid/view/animation/Transformation;->mTransformationType:I

    .line 30
    .line 31
    return-void
.end method

.method public compose(Landroid/view/animation/Transformation;)V
    .locals 5

    .line 1
    iget v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getAlpha()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    mul-float/2addr v1, v0

    .line 8
    iput v1, p0, Landroid/view/animation/Transformation;->mAlpha:F

    .line 9
    .line 10
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 17
    .line 18
    .line 19
    iget-boolean v0, p1, Landroid/view/animation/Transformation;->mHasClipRect:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-boolean v0, p0, Landroid/view/animation/Transformation;->mHasClipRect:Z

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    .line 32
    .line 33
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 34
    .line 35
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 36
    .line 37
    add-int/2addr v1, v2

    .line 38
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 39
    .line 40
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 41
    .line 42
    add-int/2addr v2, v3

    .line 43
    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 44
    .line 45
    iget v4, p1, Landroid/graphics/Rect;->right:I

    .line 46
    .line 47
    add-int/2addr v3, v4

    .line 48
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 49
    .line 50
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 51
    .line 52
    add-int/2addr v0, p1

    .line 53
    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/animation/Transformation;->setClipRect(IIII)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/animation/Transformation;->setClipRect(Landroid/graphics/Rect;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_0
    return-void
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    return v0
.end method

.method public getClipRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getTransformationType()I
    .locals 1

    iget v0, p0, Landroid/view/animation/Transformation;->mTransformationType:I

    return v0
.end method

.method public hasClipRect()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/animation/Transformation;->mHasClipRect:Z

    return v0
.end method

.method public postCompose(Landroid/view/animation/Transformation;)V
    .locals 5

    .line 1
    iget v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getAlpha()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    mul-float/2addr v1, v0

    .line 8
    iput v1, p0, Landroid/view/animation/Transformation;->mAlpha:F

    .line 9
    .line 10
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 17
    .line 18
    .line 19
    iget-boolean v0, p1, Landroid/view/animation/Transformation;->mHasClipRect:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-boolean v0, p0, Landroid/view/animation/Transformation;->mHasClipRect:Z

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    .line 32
    .line 33
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 34
    .line 35
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 36
    .line 37
    add-int/2addr v1, v2

    .line 38
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 39
    .line 40
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 41
    .line 42
    add-int/2addr v2, v3

    .line 43
    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 44
    .line 45
    iget v4, p1, Landroid/graphics/Rect;->right:I

    .line 46
    .line 47
    add-int/2addr v3, v4

    .line 48
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 49
    .line 50
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 51
    .line 52
    add-int/2addr v0, p1

    .line 53
    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/animation/Transformation;->setClipRect(IIII)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/animation/Transformation;->setClipRect(Landroid/graphics/Rect;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_0
    return-void
.end method

.method public printShortString(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "{alpha="

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 10
    .line 11
    .line 12
    const-string v0, " matrix="

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 20
    .line 21
    .line 22
    const/16 v0, 0x7d

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public set(Landroid/view/animation/Transformation;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getAlpha()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    .line 6
    .line 7
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 14
    .line 15
    .line 16
    iget-boolean v0, p1, Landroid/view/animation/Transformation;->mHasClipRect:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Landroid/view/animation/Transformation;->setClipRect(Landroid/graphics/Rect;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Landroid/view/animation/Transformation;->mHasClipRect:Z

    .line 30
    .line 31
    iget-object v0, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getTransformationType()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, p0, Landroid/view/animation/Transformation;->mTransformationType:I

    .line 41
    .line 42
    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    iput p1, p0, Landroid/view/animation/Transformation;->mAlpha:F

    return-void
.end method

.method public setClipRect(IIII)V
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroid/view/animation/Transformation;->mHasClipRect:Z

    return-void
.end method

.method public setClipRect(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/animation/Transformation;->setClipRect(IIII)V

    return-void
.end method

.method public setTransformationType(I)V
    .locals 0

    iput p1, p0, Landroid/view/animation/Transformation;->mTransformationType:I

    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/animation/Transformation;->toShortString(Ljava/lang/StringBuilder;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toShortString(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string/jumbo v0, "{alpha="

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " matrix="

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->toShortString(Ljava/lang/StringBuilder;)V

    const/16 v0, 0x7d

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-string v1, "Transformation"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/animation/Transformation;->toShortString(Ljava/lang/StringBuilder;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method
