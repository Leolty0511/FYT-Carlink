.class Landroid/animation/AnimatorInflater$PathDataEvaluator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/AnimatorInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathDataEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Landroid/util/PathParser$PathData;",
        ">;"
    }
.end annotation


# instance fields
.field private final mPathData:Landroid/util/PathParser$PathData;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/PathParser$PathData;

    invoke-direct {v0}, Landroid/util/PathParser$PathData;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorInflater$PathDataEvaluator;->mPathData:Landroid/util/PathParser$PathData;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/animation/AnimatorInflater$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;)Landroid/util/PathParser$PathData;
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/animation/AnimatorInflater$PathDataEvaluator;->mPathData:Landroid/util/PathParser$PathData;

    invoke-static {v0, p2, p3, p1}, Landroid/util/PathParser;->interpolatePathData(Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;F)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Landroid/animation/AnimatorInflater$PathDataEvaluator;->mPathData:Landroid/util/PathParser$PathData;

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t interpolate between two incompatible pathData"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Landroid/util/PathParser$PathData;

    check-cast p3, Landroid/util/PathParser$PathData;

    invoke-virtual {p0, p1, p2, p3}, Landroid/animation/AnimatorInflater$PathDataEvaluator;->evaluate(FLandroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;)Landroid/util/PathParser$PathData;

    move-result-object p1

    return-object p1
.end method
