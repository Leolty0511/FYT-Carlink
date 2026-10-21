.class public Landroid/graphics/drawable/shapes/PathShape;
.super Landroid/graphics/drawable/shapes/Shape;
.source "SourceFile"


# instance fields
.field private mPath:Landroid/graphics/Path;

.field private mScaleX:F

.field private mScaleY:F

.field private final mStdHeight:F

.field private final mStdWidth:F


# direct methods
.method public constructor <init>(Landroid/graphics/Path;FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/graphics/drawable/shapes/PathShape;->mPath:Landroid/graphics/Path;

    .line 5
    .line 6
    iput p2, p0, Landroid/graphics/drawable/shapes/PathShape;->mStdWidth:F

    .line 7
    .line 8
    iput p3, p0, Landroid/graphics/drawable/shapes/PathShape;->mStdHeight:F

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public clone()Landroid/graphics/drawable/shapes/PathShape;
    .locals 3

    .line 3
    invoke-super {p0}, Landroid/graphics/drawable/shapes/Shape;->clone()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/shapes/PathShape;

    .line 4
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p0, Landroid/graphics/drawable/shapes/PathShape;->mPath:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, v0, Landroid/graphics/drawable/shapes/PathShape;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public bridge synthetic clone()Landroid/graphics/drawable/shapes/Shape;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/PathShape;->clone()Landroid/graphics/drawable/shapes/PathShape;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/PathShape;->clone()Landroid/graphics/drawable/shapes/PathShape;

    move-result-object v0

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mScaleX:F

    .line 5
    .line 6
    iget v1, p0, Landroid/graphics/drawable/shapes/PathShape;->mScaleY:F

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mPath:Landroid/graphics/Path;

    .line 12
    .line 13
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onResize(FF)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mStdWidth:F

    .line 2
    .line 3
    div-float/2addr p1, v0

    .line 4
    iput p1, p0, Landroid/graphics/drawable/shapes/PathShape;->mScaleX:F

    .line 5
    .line 6
    iget p1, p0, Landroid/graphics/drawable/shapes/PathShape;->mStdHeight:F

    .line 7
    .line 8
    div-float/2addr p2, p1

    .line 9
    iput p2, p0, Landroid/graphics/drawable/shapes/PathShape;->mScaleY:F

    .line 10
    .line 11
    return-void
.end method
