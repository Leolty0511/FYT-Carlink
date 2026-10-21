.class Landroid/animation/AnimatorSet$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/AnimatorSet;->sortAnimationEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/animation/AnimatorSet$AnimationEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Landroid/animation/AnimatorSet$3;->this$0:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/animation/AnimatorSet$AnimationEvent;Landroid/animation/AnimatorSet$AnimationEvent;)I
    .locals 6

    .line 2
    invoke-virtual {p1}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v0

    .line 3
    invoke-virtual {p2}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    if-nez v4, :cond_1

    .line 4
    iget p2, p2, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    iget p1, p1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    add-int v0, p2, p1

    if-ne v0, v5, :cond_0

    sub-int/2addr p1, p2

    return p1

    :cond_0
    sub-int/2addr p2, p1

    return p2

    :cond_1
    const-wide/16 p1, -0x1

    cmp-long v4, v2, p1

    if-nez v4, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    cmp-long p1, v0, p1

    if-nez p1, :cond_3

    return v5

    :cond_3
    sub-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/animation/AnimatorSet$AnimationEvent;

    check-cast p2, Landroid/animation/AnimatorSet$AnimationEvent;

    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet$3;->compare(Landroid/animation/AnimatorSet$AnimationEvent;Landroid/animation/AnimatorSet$AnimationEvent;)I

    move-result p1

    return p1
.end method
