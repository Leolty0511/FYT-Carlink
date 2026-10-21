.class Landroid/animation/LayoutTransition$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/LayoutTransition;->setupChangeAnimation(Landroid/view/ViewGroup;ILandroid/animation/Animator;JLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/animation/LayoutTransition;

.field public final synthetic val$anim:Landroid/animation/Animator;

.field public final synthetic val$changeReason:I

.field public final synthetic val$child:Landroid/view/View;

.field public final synthetic val$duration:J

.field public final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/animation/LayoutTransition;Landroid/animation/Animator;IJLandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    iput-object p2, p0, Landroid/animation/LayoutTransition$3;->val$anim:Landroid/animation/Animator;

    iput p3, p0, Landroid/animation/LayoutTransition$3;->val$changeReason:I

    iput-wide p4, p0, Landroid/animation/LayoutTransition$3;->val$duration:J

    iput-object p6, p0, Landroid/animation/LayoutTransition$3;->val$child:Landroid/view/View;

    iput-object p7, p0, Landroid/animation/LayoutTransition$3;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/animation/LayoutTransition$3;->val$anim:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->setupEndValues()V

    .line 2
    iget-object p1, p0, Landroid/animation/LayoutTransition$3;->val$anim:Landroid/animation/Animator;

    instance-of p2, p1, Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_3

    .line 3
    check-cast p1, Landroid/animation/ValueAnimator;

    .line 4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    const/4 p2, 0x0

    move p3, p2

    .line 5
    :goto_0
    array-length p4, p1

    if-ge p2, p4, :cond_2

    .line 6
    aget-object p4, p1, p2

    .line 7
    iget-object p4, p4, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    .line 8
    iget-object p5, p4, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    if-eqz p5, :cond_0

    iget-object p6, p4, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    if-eqz p6, :cond_0

    invoke-virtual {p5}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object p5

    iget-object p4, p4, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {p4}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p5, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    :cond_0
    const/4 p3, 0x1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    return-void

    :cond_3
    const-wide/16 p1, 0x0

    .line 9
    iget p3, p0, Landroid/animation/LayoutTransition$3;->val$changeReason:I

    const/4 p4, 0x2

    if-eq p3, p4, :cond_6

    const/4 p4, 0x3

    if-eq p3, p4, :cond_5

    const/4 p4, 0x4

    if-eq p3, p4, :cond_4

    goto/16 :goto_1

    .line 10
    :cond_4
    iget-object p1, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p1}, Landroid/animation/LayoutTransition;->access$1100(Landroid/animation/LayoutTransition;)J

    move-result-wide p1

    iget-object p3, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p3}, Landroid/animation/LayoutTransition;->access$300(Landroid/animation/LayoutTransition;)J

    move-result-wide p3

    add-long/2addr p1, p3

    .line 11
    iget-object p3, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p3}, Landroid/animation/LayoutTransition;->access$1200(Landroid/animation/LayoutTransition;)J

    move-result-wide p4

    invoke-static {p3, p4, p5}, Landroid/animation/LayoutTransition;->access$314(Landroid/animation/LayoutTransition;J)J

    .line 12
    iget-object p3, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p3}, Landroid/animation/LayoutTransition;->access$1300(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    move-result-object p3

    invoke-static {}, Landroid/animation/LayoutTransition;->access$1400()Landroid/animation/TimeInterpolator;

    move-result-object p4

    if-eq p3, p4, :cond_7

    .line 13
    iget-object p3, p0, Landroid/animation/LayoutTransition$3;->val$anim:Landroid/animation/Animator;

    iget-object p4, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p4}, Landroid/animation/LayoutTransition;->access$1300(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1

    .line 14
    :cond_5
    iget-object p1, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p1}, Landroid/animation/LayoutTransition;->access$700(Landroid/animation/LayoutTransition;)J

    move-result-wide p1

    iget-object p3, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p3}, Landroid/animation/LayoutTransition;->access$300(Landroid/animation/LayoutTransition;)J

    move-result-wide p3

    add-long/2addr p1, p3

    .line 15
    iget-object p3, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p3}, Landroid/animation/LayoutTransition;->access$800(Landroid/animation/LayoutTransition;)J

    move-result-wide p4

    invoke-static {p3, p4, p5}, Landroid/animation/LayoutTransition;->access$314(Landroid/animation/LayoutTransition;J)J

    .line 16
    iget-object p3, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p3}, Landroid/animation/LayoutTransition;->access$900(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    move-result-object p3

    invoke-static {}, Landroid/animation/LayoutTransition;->access$1000()Landroid/animation/TimeInterpolator;

    move-result-object p4

    if-eq p3, p4, :cond_7

    .line 17
    iget-object p3, p0, Landroid/animation/LayoutTransition$3;->val$anim:Landroid/animation/Animator;

    iget-object p4, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p4}, Landroid/animation/LayoutTransition;->access$900(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1

    .line 18
    :cond_6
    iget-object p1, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p1}, Landroid/animation/LayoutTransition;->access$200(Landroid/animation/LayoutTransition;)J

    move-result-wide p1

    iget-object p3, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p3}, Landroid/animation/LayoutTransition;->access$300(Landroid/animation/LayoutTransition;)J

    move-result-wide p3

    add-long/2addr p1, p3

    .line 19
    iget-object p3, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p3}, Landroid/animation/LayoutTransition;->access$400(Landroid/animation/LayoutTransition;)J

    move-result-wide p4

    invoke-static {p3, p4, p5}, Landroid/animation/LayoutTransition;->access$314(Landroid/animation/LayoutTransition;J)J

    .line 20
    iget-object p3, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p3}, Landroid/animation/LayoutTransition;->access$500(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    move-result-object p3

    invoke-static {}, Landroid/animation/LayoutTransition;->access$600()Landroid/animation/TimeInterpolator;

    move-result-object p4

    if-eq p3, p4, :cond_7

    .line 21
    iget-object p3, p0, Landroid/animation/LayoutTransition$3;->val$anim:Landroid/animation/Animator;

    iget-object p4, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p4}, Landroid/animation/LayoutTransition;->access$500(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 22
    :cond_7
    :goto_1
    iget-object p3, p0, Landroid/animation/LayoutTransition$3;->val$anim:Landroid/animation/Animator;

    invoke-virtual {p3, p1, p2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 23
    iget-object p1, p0, Landroid/animation/LayoutTransition$3;->val$anim:Landroid/animation/Animator;

    iget-wide p2, p0, Landroid/animation/LayoutTransition$3;->val$duration:J

    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 24
    iget-object p1, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p1}, Landroid/animation/LayoutTransition;->access$1500(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;

    move-result-object p1

    iget-object p2, p0, Landroid/animation/LayoutTransition$3;->val$child:Landroid/view/View;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/Animator;

    if-eqz p1, :cond_8

    .line 25
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 26
    :cond_8
    iget-object p1, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p1}, Landroid/animation/LayoutTransition;->access$100(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Landroid/animation/LayoutTransition$3;->val$child:Landroid/view/View;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/Animator;

    if-eqz p1, :cond_9

    .line 27
    iget-object p1, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p1}, Landroid/animation/LayoutTransition;->access$100(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Landroid/animation/LayoutTransition$3;->val$child:Landroid/view/View;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_9
    iget-object p1, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p1}, Landroid/animation/LayoutTransition;->access$1500(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;

    move-result-object p1

    iget-object p2, p0, Landroid/animation/LayoutTransition$3;->val$child:Landroid/view/View;

    iget-object p3, p0, Landroid/animation/LayoutTransition$3;->val$anim:Landroid/animation/Animator;

    invoke-virtual {p1, p2, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object p1, p0, Landroid/animation/LayoutTransition$3;->val$parent:Landroid/view/ViewGroup;

    iget-object p2, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->requestTransitionStart(Landroid/animation/LayoutTransition;)V

    .line 30
    iget-object p1, p0, Landroid/animation/LayoutTransition$3;->val$child:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 31
    iget-object p1, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p1}, Landroid/animation/LayoutTransition;->access$000(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Landroid/animation/LayoutTransition$3;->val$child:Landroid/view/View;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
