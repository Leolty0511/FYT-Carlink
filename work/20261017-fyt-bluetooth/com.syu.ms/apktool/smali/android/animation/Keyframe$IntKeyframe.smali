.class Landroid/animation/Keyframe$IntKeyframe;
.super Landroid/animation/Keyframe;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/Keyframe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntKeyframe"
.end annotation


# instance fields
.field public mValue:I


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 6
    invoke-direct {p0}, Landroid/animation/Keyframe;-><init>()V

    .line 7
    iput p1, p0, Landroid/animation/Keyframe;->mFraction:F

    .line 8
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object p1, p0, Landroid/animation/Keyframe;->mValueType:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(FI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/animation/Keyframe;-><init>()V

    .line 2
    iput p1, p0, Landroid/animation/Keyframe;->mFraction:F

    .line 3
    iput p2, p0, Landroid/animation/Keyframe$IntKeyframe;->mValue:I

    .line 4
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object p1, p0, Landroid/animation/Keyframe;->mValueType:Ljava/lang/Class;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroid/animation/Keyframe;->mHasValue:Z

    return-void
.end method


# virtual methods
.method public clone()Landroid/animation/Keyframe$IntKeyframe;
    .locals 3

    .line 3
    iget-boolean v0, p0, Landroid/animation/Keyframe;->mHasValue:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/animation/Keyframe$IntKeyframe;

    invoke-virtual {p0}, Landroid/animation/Keyframe;->getFraction()F

    move-result v1

    iget v2, p0, Landroid/animation/Keyframe$IntKeyframe;->mValue:I

    invoke-direct {v0, v1, v2}, Landroid/animation/Keyframe$IntKeyframe;-><init>(FI)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/animation/Keyframe$IntKeyframe;

    invoke-virtual {p0}, Landroid/animation/Keyframe;->getFraction()F

    move-result v1

    invoke-direct {v0, v1}, Landroid/animation/Keyframe$IntKeyframe;-><init>(F)V

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method public bridge synthetic clone()Landroid/animation/Keyframe;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/animation/Keyframe$IntKeyframe;->clone()Landroid/animation/Keyframe$IntKeyframe;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/animation/Keyframe$IntKeyframe;->clone()Landroid/animation/Keyframe$IntKeyframe;

    move-result-object v0

    return-object v0
.end method

.method public getIntValue()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/animation/Keyframe$IntKeyframe;->mValue:I

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Landroid/animation/Keyframe$IntKeyframe;->mValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_0

    .line 2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroid/animation/Keyframe$IntKeyframe;->mValue:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroid/animation/Keyframe;->mHasValue:Z

    :cond_0
    return-void
.end method
