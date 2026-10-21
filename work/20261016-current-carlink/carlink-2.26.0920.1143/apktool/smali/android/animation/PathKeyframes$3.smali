.class Landroid/animation/PathKeyframes$3;
.super Landroid/animation/PathKeyframes$IntKeyframesBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/PathKeyframes;->createXIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/animation/PathKeyframes;


# direct methods
.method public constructor <init>(Landroid/animation/PathKeyframes;)V
    .locals 0

    iput-object p1, p0, Landroid/animation/PathKeyframes$3;->this$0:Landroid/animation/PathKeyframes;

    invoke-direct {p0}, Landroid/animation/PathKeyframes$IntKeyframesBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntValue(F)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/animation/PathKeyframes$3;->this$0:Landroid/animation/PathKeyframes;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/animation/PathKeyframes;->getValue(F)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/graphics/PointF;

    .line 8
    .line 9
    iget p1, p1, Landroid/graphics/PointF;->x:F

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method
