.class public Landroid/widget/ScrollBarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private mAlwaysDrawHorizontalTrack:Z

.field private mAlwaysDrawVerticalTrack:Z

.field private mChanged:Z

.field private mExtent:I

.field private mHorizontalThumb:Landroid/graphics/drawable/Drawable;

.field private mHorizontalTrack:Landroid/graphics/drawable/Drawable;

.field private mOffset:I

.field private mRange:I

.field private mRangeChanged:Z

.field private final mTempBounds:Landroid/graphics/Rect;

.field private mVertical:Z

.field private mVerticalThumb:Landroid/graphics/drawable/Drawable;

.field private mVerticalTrack:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/ScrollBarDrawable;->mTempBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    iget-boolean v5, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    .line 2
    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    .line 3
    iget v1, p0, Landroid/widget/ScrollBarDrawable;->mRange:I

    const/4 v2, 0x1

    if-lez v0, :cond_1

    if-gt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    .line 4
    iget-boolean v2, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawVerticalTrack:Z

    goto :goto_1

    :cond_2
    iget-boolean v2, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawHorizontalTrack:Z

    :goto_1
    const/4 v3, 0x0

    .line 5
    :goto_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 6
    iget v6, v4, Landroid/graphics/Rect;->left:I

    int-to-float v8, v6

    iget v6, v4, Landroid/graphics/Rect;->top:I

    int-to-float v9, v6

    iget v6, v4, Landroid/graphics/Rect;->right:I

    int-to-float v10, v6

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v6

    sget-object v12, Landroid/graphics/Canvas$EdgeType;->AA:Landroid/graphics/Canvas$EdgeType;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v6

    if-eqz v6, :cond_3

    return-void

    :cond_3
    if-eqz v2, :cond_4

    .line 7
    invoke-virtual {p0, p1, v4, v5}, Landroid/widget/ScrollBarDrawable;->drawTrack(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    :cond_4
    if-eqz v3, :cond_9

    if-eqz v5, :cond_5

    .line 8
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    goto :goto_3

    :cond_5
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    :goto_3
    if-eqz v5, :cond_6

    .line 9
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    goto :goto_4

    :cond_6
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v3

    :goto_4
    int-to-float v6, v2

    int-to-float v7, v0

    mul-float/2addr v6, v7

    int-to-float v7, v1

    div-float/2addr v6, v7

    .line 10
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sub-int v7, v2, v6

    int-to-float v7, v7

    .line 11
    iget v8, p0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    sub-int/2addr v1, v0

    int-to-float v0, v1

    div-float/2addr v7, v0

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v3, v3, 0x2

    if-ge v6, v3, :cond_7

    move v6, v3

    :cond_7
    add-int v1, v0, v6

    if-le v1, v2, :cond_8

    sub-int/2addr v2, v6

    move v3, v2

    goto :goto_5

    :cond_8
    move v3, v0

    :goto_5
    move-object v0, p0

    move-object v1, p1

    move-object v2, v4

    move v4, v6

    .line 12
    invoke-virtual/range {v0 .. v5}, Landroid/widget/ScrollBarDrawable;->drawThumb(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIZ)V

    :cond_9
    return-void
.end method

.method public drawThumb(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mTempBounds:Landroid/graphics/Rect;

    .line 2
    iget-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mRangeChanged:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mChanged:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    if-eqz p5, :cond_2

    .line 3
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    add-int v4, v3, p3

    iget p2, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, p3

    add-int/2addr v3, p4

    invoke-virtual {v0, v2, v4, p2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    .line 4
    :cond_2
    iget v2, p2, Landroid/graphics/Rect;->left:I

    add-int v3, v2, p3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    add-int/2addr v2, p4

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v4, v2, p2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_3
    :goto_2
    if-eqz p5, :cond_5

    .line 5
    iget-object p2, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 6
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 7
    :cond_4
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 8
    :cond_5
    iget-object p2, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    .line 9
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 10
    :cond_6
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_3
    return-void
.end method

.method public drawTrack(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V
    .locals 1

    if-eqz p3, :cond_0

    .line 1
    iget-object p3, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 2
    :cond_0
    iget-object p3, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    :goto_0
    if-eqz p3, :cond_2

    .line 3
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mChanged:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 5
    :cond_1
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getAlwaysDrawHorizontalTrack()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawHorizontalTrack:Z

    return v0
.end method

.method public getAlwaysDrawVerticalTrack()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawVerticalTrack:Z

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getSize(Z)I
    .locals 0

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    return p1

    .line 2
    :cond_1
    iget-object p1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    return p1
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroid/widget/ScrollBarDrawable;->mChanged:Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 6
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setAlwaysDrawHorizontalTrack(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawHorizontalTrack:Z

    return-void
.end method

.method public setAlwaysDrawVerticalTrack(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawVerticalTrack:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 6
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setHorizontalThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public setHorizontalTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setParameters(IIIZ)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    const/4 v1, 0x1

    if-eq v0, p4, :cond_0

    .line 2
    iput-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mChanged:Z

    .line 3
    :cond_0
    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mRange:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    if-eq v0, p3, :cond_2

    .line 4
    :cond_1
    iput-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mRangeChanged:Z

    .line 5
    :cond_2
    iput p1, p0, Landroid/widget/ScrollBarDrawable;->mRange:I

    .line 6
    iput p2, p0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    .line 7
    iput p3, p0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    .line 8
    iput-boolean p4, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    return-void
.end method

.method public setVerticalThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public setVerticalTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScrollBarDrawable: range="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/widget/ScrollBarDrawable;->mRange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " extent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    if-eqz v1, :cond_0

    const-string v1, " V"

    goto :goto_0

    :cond_0
    const-string v1, " H"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
