.class public Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/ParameterUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeightedRectangle"
.end annotation


# instance fields
.field public final rect:Landroid/graphics/Rect;

.field public final weight:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "rect must not be null"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/graphics/Rect;

    .line 12
    .line 13
    iput-object p1, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    .line 14
    .line 15
    iput p2, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->weight:I

    .line 16
    .line 17
    return-void
.end method

.method private static clip(IIILandroid/graphics/Rect;Ljava/lang/String;)I
    .locals 4

    .line 1
    const-string v0, " too small, clip to "

    .line 2
    .line 3
    const-string v1, " "

    .line 4
    .line 5
    const-string/jumbo v2, "toMetering - Rectangle "

    .line 6
    .line 7
    .line 8
    const-string v3, "ParameterUtils"

    .line 9
    .line 10
    if-ge p0, p1, :cond_0

    .line 11
    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p1, v3}, Landroid/accessibilityservice/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    move p0, p1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    if-le p0, p2, :cond_1

    .line 35
    .line 36
    new-instance p0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-static {p0, p2, v3}, Landroid/accessibilityservice/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    move p0, p2

    .line 57
    :cond_1
    :goto_0
    return p0
.end method

.method private static clipLower(IILandroid/graphics/Rect;Ljava/lang/String;)I
    .locals 1

    const v0, 0x7fffffff

    invoke-static {p0, p1, v0, p2, p3}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->clip(IIILandroid/graphics/Rect;Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public toFace()Landroid/hardware/camera2/params/Face;
    .locals 5

    .line 4
    iget v0, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->weight:I

    iget-object v1, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    const-string/jumbo v2, "score"

    const/4 v3, 0x1

    const/16 v4, 0x64

    invoke-static {v0, v3, v4, v1, v2}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->clip(IIILandroid/graphics/Rect;Ljava/lang/String;)I

    move-result v0

    .line 5
    new-instance v1, Landroid/hardware/camera2/params/Face;

    iget-object v2, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    invoke-direct {v1, v2, v0}, Landroid/hardware/camera2/params/Face;-><init>(Landroid/graphics/Rect;I)V

    return-object v1
.end method

.method public toFace(ILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/hardware/camera2/params/Face;
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    const-string/jumbo v1, "id"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->clipLower(IILandroid/graphics/Rect;Ljava/lang/String;)I

    move-result v6

    .line 2
    iget p1, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->weight:I

    iget-object v0, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    const-string/jumbo v1, "score"

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-static {p1, v2, v3, v0, v1}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->clip(IIILandroid/graphics/Rect;Ljava/lang/String;)I

    move-result v5

    .line 3
    new-instance p1, Landroid/hardware/camera2/params/Face;

    iget-object v4, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    move-object v3, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v3 .. v9}, Landroid/hardware/camera2/params/Face;-><init>(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-object p1
.end method

.method public toMetering()Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 11

    .line 1
    iget v0, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->weight:I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    .line 4
    .line 5
    const-string/jumbo v2, "weight"

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/16 v4, 0x3e8

    .line 10
    .line 11
    invoke-static {v0, v3, v4, v1, v2}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->clip(IIILandroid/graphics/Rect;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v10

    .line 15
    iget-object v0, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    .line 16
    .line 17
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 18
    .line 19
    const-string/jumbo v2, "left"

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v3, v0, v2}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->clipLower(IILandroid/graphics/Rect;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    iget-object v0, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    .line 27
    .line 28
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 29
    .line 30
    const-string/jumbo v2, "top"

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v3, v0, v2}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->clipLower(IILandroid/graphics/Rect;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    iget-object v0, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget-object v1, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    .line 44
    .line 45
    const-string/jumbo v2, "width"

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v3, v1, v2}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->clipLower(IILandroid/graphics/Rect;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    iget-object v0, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iget-object v1, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    .line 59
    .line 60
    const-string/jumbo v2, "height"

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v3, v1, v2}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->clipLower(IILandroid/graphics/Rect;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    new-instance v0, Landroid/hardware/camera2/params/MeteringRectangle;

    .line 68
    .line 69
    move-object v5, v0

    .line 70
    invoke-direct/range {v5 .. v10}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    .line 71
    .line 72
    .line 73
    return-object v0
.end method
