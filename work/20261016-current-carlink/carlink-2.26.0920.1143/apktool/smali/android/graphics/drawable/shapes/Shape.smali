.class public abstract Landroid/graphics/drawable/shapes/Shape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mHeight:F

.field private mWidth:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Landroid/graphics/drawable/shapes/Shape;
    .locals 1

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/shapes/Shape;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/Shape;->clone()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    return-object v0
.end method

.method public abstract draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.end method

.method public final getHeight()F
    .locals 1

    iget v0, p0, Landroid/graphics/drawable/shapes/Shape;->mHeight:F

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 0

    return-void
.end method

.method public final getWidth()F
    .locals 1

    iget v0, p0, Landroid/graphics/drawable/shapes/Shape;->mWidth:F

    return v0
.end method

.method public hasAlpha()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onResize(FF)V
    .locals 0

    return-void
.end method

.method public final resize(FF)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    .line 4
    if-gez v1, :cond_0

    .line 5
    .line 6
    move p1, v0

    .line 7
    :cond_0
    cmpg-float v1, p2, v0

    .line 8
    .line 9
    if-gez v1, :cond_1

    .line 10
    .line 11
    move p2, v0

    .line 12
    :cond_1
    iget v0, p0, Landroid/graphics/drawable/shapes/Shape;->mWidth:F

    .line 13
    .line 14
    cmpl-float v0, v0, p1

    .line 15
    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    iget v0, p0, Landroid/graphics/drawable/shapes/Shape;->mHeight:F

    .line 19
    .line 20
    cmpl-float v0, v0, p2

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    :cond_2
    iput p1, p0, Landroid/graphics/drawable/shapes/Shape;->mWidth:F

    .line 25
    .line 26
    iput p2, p0, Landroid/graphics/drawable/shapes/Shape;->mHeight:F

    .line 27
    .line 28
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/shapes/Shape;->onResize(FF)V

    .line 29
    .line 30
    .line 31
    :cond_3
    return-void
.end method
