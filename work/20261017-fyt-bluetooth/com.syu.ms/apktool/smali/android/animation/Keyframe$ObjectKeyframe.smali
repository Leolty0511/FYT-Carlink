.class Landroid/animation/Keyframe$ObjectKeyframe;
.super Landroid/animation/Keyframe;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/Keyframe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObjectKeyframe"
.end annotation


# instance fields
.field public mValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(FLjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/animation/Keyframe;-><init>()V

    .line 2
    iput p1, p0, Landroid/animation/Keyframe;->mFraction:F

    .line 3
    iput-object p2, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mValue:Ljava/lang/Object;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iput-boolean p1, p0, Landroid/animation/Keyframe;->mHasValue:Z

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-class p1, Ljava/lang/Object;

    :goto_1
    iput-object p1, p0, Landroid/animation/Keyframe;->mValueType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public clone()Landroid/animation/Keyframe$ObjectKeyframe;
    .locals 3

    .line 3
    new-instance v0, Landroid/animation/Keyframe$ObjectKeyframe;

    invoke-virtual {p0}, Landroid/animation/Keyframe;->getFraction()F

    move-result v1

    iget-boolean v2, p0, Landroid/animation/Keyframe;->mHasValue:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mValue:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/animation/Keyframe$ObjectKeyframe;-><init>(FLjava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method public bridge synthetic clone()Landroid/animation/Keyframe;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/animation/Keyframe$ObjectKeyframe;->clone()Landroid/animation/Keyframe$ObjectKeyframe;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/animation/Keyframe$ObjectKeyframe;->clone()Landroid/animation/Keyframe$ObjectKeyframe;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mValue:Ljava/lang/Object;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-boolean p1, p0, Landroid/animation/Keyframe;->mHasValue:Z

    return-void
.end method
