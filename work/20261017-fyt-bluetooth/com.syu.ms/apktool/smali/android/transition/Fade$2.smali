.class Landroid/transition/Fade$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/Fade;->onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/transition/Fade;

.field public final synthetic val$finalOverlayView:Landroid/view/View;

.field public final synthetic val$finalSceneRoot:Landroid/view/ViewGroup;

.field public final synthetic val$finalView:Landroid/view/View;

.field public final synthetic val$finalViewToKeep:Landroid/view/View;

.field public final synthetic val$finalVisibility:I


# direct methods
.method public constructor <init>(Landroid/transition/Fade;Landroid/view/View;Landroid/view/View;ILandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/transition/Fade$2;->this$0:Landroid/transition/Fade;

    iput-object p2, p0, Landroid/transition/Fade$2;->val$finalView:Landroid/view/View;

    iput-object p3, p0, Landroid/transition/Fade$2;->val$finalViewToKeep:Landroid/view/View;

    iput p4, p0, Landroid/transition/Fade$2;->val$finalVisibility:I

    iput-object p5, p0, Landroid/transition/Fade$2;->val$finalOverlayView:Landroid/view/View;

    iput-object p6, p0, Landroid/transition/Fade$2;->val$finalSceneRoot:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/transition/Fade$2;->val$finalView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 2
    iget-object p1, p0, Landroid/transition/Fade$2;->val$finalViewToKeep:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 3
    iget v0, p0, Landroid/transition/Fade$2;->val$finalVisibility:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/transition/Fade$2;->val$finalOverlayView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Landroid/transition/Fade$2;->val$finalSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    iget-object v0, p0, Landroid/transition/Fade$2;->val$finalOverlayView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/transition/Fade$2;->val$finalOverlayView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Landroid/transition/Fade$2;->val$finalSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    iget-object v0, p0, Landroid/transition/Fade$2;->val$finalOverlayView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/transition/Fade$2;->val$finalOverlayView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Landroid/transition/Fade$2;->val$finalSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    iget-object v0, p0, Landroid/transition/Fade$2;->val$finalOverlayView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    :cond_0
    return-void
.end method
