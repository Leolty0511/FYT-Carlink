.class Landroid/transition/ChangeTransform$Transforms;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transforms"
.end annotation


# instance fields
.field public final rotationX:F

.field public final rotationY:F

.field public final rotationZ:F

.field public final scaleX:F

.field public final scaleY:F

.field public final translationX:F

.field public final translationY:F

.field public final translationZ:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Landroid/transition/ChangeTransform$Transforms;->translationX:F

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Landroid/transition/ChangeTransform$Transforms;->translationY:F

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Landroid/transition/ChangeTransform$Transforms;->translationZ:F

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput v0, p0, Landroid/transition/ChangeTransform$Transforms;->scaleX:F

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput v0, p0, Landroid/transition/ChangeTransform$Transforms;->scaleY:F

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p0, Landroid/transition/ChangeTransform$Transforms;->rotationX:F

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput v0, p0, Landroid/transition/ChangeTransform$Transforms;->rotationY:F

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iput p1, p0, Landroid/transition/ChangeTransform$Transforms;->rotationZ:F

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/transition/ChangeTransform$Transforms;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Landroid/transition/ChangeTransform$Transforms;

    .line 8
    .line 9
    iget v0, p1, Landroid/transition/ChangeTransform$Transforms;->translationX:F

    .line 10
    .line 11
    iget v2, p0, Landroid/transition/ChangeTransform$Transforms;->translationX:F

    .line 12
    .line 13
    cmpl-float v0, v0, v2

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget v0, p1, Landroid/transition/ChangeTransform$Transforms;->translationY:F

    .line 18
    .line 19
    iget v2, p0, Landroid/transition/ChangeTransform$Transforms;->translationY:F

    .line 20
    .line 21
    cmpl-float v0, v0, v2

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget v0, p1, Landroid/transition/ChangeTransform$Transforms;->translationZ:F

    .line 26
    .line 27
    iget v2, p0, Landroid/transition/ChangeTransform$Transforms;->translationZ:F

    .line 28
    .line 29
    cmpl-float v0, v0, v2

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    iget v0, p1, Landroid/transition/ChangeTransform$Transforms;->scaleX:F

    .line 34
    .line 35
    iget v2, p0, Landroid/transition/ChangeTransform$Transforms;->scaleX:F

    .line 36
    .line 37
    cmpl-float v0, v0, v2

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    iget v0, p1, Landroid/transition/ChangeTransform$Transforms;->scaleY:F

    .line 42
    .line 43
    iget v2, p0, Landroid/transition/ChangeTransform$Transforms;->scaleY:F

    .line 44
    .line 45
    cmpl-float v0, v0, v2

    .line 46
    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    iget v0, p1, Landroid/transition/ChangeTransform$Transforms;->rotationX:F

    .line 50
    .line 51
    iget v2, p0, Landroid/transition/ChangeTransform$Transforms;->rotationX:F

    .line 52
    .line 53
    cmpl-float v0, v0, v2

    .line 54
    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    iget v0, p1, Landroid/transition/ChangeTransform$Transforms;->rotationY:F

    .line 58
    .line 59
    iget v2, p0, Landroid/transition/ChangeTransform$Transforms;->rotationY:F

    .line 60
    .line 61
    cmpl-float v0, v0, v2

    .line 62
    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    iget p1, p1, Landroid/transition/ChangeTransform$Transforms;->rotationZ:F

    .line 66
    .line 67
    iget v0, p0, Landroid/transition/ChangeTransform$Transforms;->rotationZ:F

    .line 68
    .line 69
    cmpl-float p1, p1, v0

    .line 70
    .line 71
    if-nez p1, :cond_1

    .line 72
    .line 73
    const/4 v1, 0x1

    .line 74
    :cond_1
    return v1
.end method

.method public restore(Landroid/view/View;)V
    .locals 9

    iget v1, p0, Landroid/transition/ChangeTransform$Transforms;->translationX:F

    iget v2, p0, Landroid/transition/ChangeTransform$Transforms;->translationY:F

    iget v3, p0, Landroid/transition/ChangeTransform$Transforms;->translationZ:F

    iget v4, p0, Landroid/transition/ChangeTransform$Transforms;->scaleX:F

    iget v5, p0, Landroid/transition/ChangeTransform$Transforms;->scaleY:F

    iget v6, p0, Landroid/transition/ChangeTransform$Transforms;->rotationX:F

    iget v7, p0, Landroid/transition/ChangeTransform$Transforms;->rotationY:F

    iget v8, p0, Landroid/transition/ChangeTransform$Transforms;->rotationZ:F

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Landroid/transition/ChangeTransform;->access$200(Landroid/view/View;FFFFFFFF)V

    return-void
.end method
