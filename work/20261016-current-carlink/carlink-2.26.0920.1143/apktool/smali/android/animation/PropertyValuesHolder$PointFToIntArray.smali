.class Landroid/animation/PropertyValuesHolder$PointFToIntArray;
.super Landroid/animation/TypeConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/PropertyValuesHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointFToIntArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/animation/TypeConverter<",
        "Landroid/graphics/PointF;",
        "[I>;"
    }
.end annotation


# instance fields
.field private mCoordinates:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-class v0, Landroid/graphics/PointF;

    .line 2
    .line 3
    const-class v1, [I

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Landroid/animation/TypeConverter;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    new-array v0, v0, [I

    .line 10
    .line 11
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$PointFToIntArray;->mCoordinates:[I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/PointF;

    invoke-virtual {p0, p1}, Landroid/animation/PropertyValuesHolder$PointFToIntArray;->convert(Landroid/graphics/PointF;)[I

    move-result-object p1

    return-object p1
.end method

.method public convert(Landroid/graphics/PointF;)[I
    .locals 3

    .line 2
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$PointFToIntArray;->mCoordinates:[I

    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 3
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$PointFToIntArray;->mCoordinates:[I

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 4
    iget-object p1, p0, Landroid/animation/PropertyValuesHolder$PointFToIntArray;->mCoordinates:[I

    return-object p1
.end method
