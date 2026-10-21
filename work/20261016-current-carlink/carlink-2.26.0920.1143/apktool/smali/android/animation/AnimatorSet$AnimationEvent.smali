.class Landroid/animation/AnimatorSet$AnimationEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationEvent"
.end annotation


# static fields
.field static final ANIMATION_DELAY_ENDED:I = 0x1

.field static final ANIMATION_END:I = 0x2

.field static final ANIMATION_START:I


# instance fields
.field final mEvent:I

.field final mNode:Landroid/animation/AnimatorSet$Node;


# direct methods
.method public constructor <init>(Landroid/animation/AnimatorSet$Node;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    .line 5
    .line 6
    iput p2, p0, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getTime()J
    .locals 6

    .line 1
    iget v0, p0, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    .line 6
    .line 7
    iget-wide v0, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    if-ne v0, v1, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    .line 14
    .line 15
    iget-wide v1, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 16
    .line 17
    const-wide/16 v3, -0x1

    .line 18
    .line 19
    cmp-long v5, v1, v3

    .line 20
    .line 21
    if-nez v5, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, v0, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/animation/Animator;->getStartDelay()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    add-long/2addr v3, v1

    .line 31
    :goto_0
    return-wide v3

    .line 32
    :cond_2
    iget-object v0, p0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    .line 33
    .line 34
    iget-wide v0, v0, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 35
    .line 36
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "start"

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    const-string v0, "delay ended"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const-string v0, "end"

    .line 16
    .line 17
    :goto_0
    const-string v1, " "

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    .line 24
    .line 25
    iget-object v1, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method
