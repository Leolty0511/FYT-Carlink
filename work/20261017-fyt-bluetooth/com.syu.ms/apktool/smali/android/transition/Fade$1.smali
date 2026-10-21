.class Landroid/transition/Fade$1;
.super Landroid/transition/Transition$TransitionListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/Fade;->onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mCanceled:Z

.field public mPausedAlpha:F

.field public final synthetic this$0:Landroid/transition/Fade;

.field public final synthetic val$endView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/transition/Fade;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/transition/Fade$1;->this$0:Landroid/transition/Fade;

    iput-object p2, p0, Landroid/transition/Fade$1;->val$endView:Landroid/view/View;

    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Landroid/transition/Fade$1;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/transition/Fade$1;->val$endView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setTransitionAlpha(F)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroid/transition/Fade$1;->mCanceled:Z

    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Landroid/transition/Fade$1;->mCanceled:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Landroid/transition/Fade$1;->val$endView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setTransitionAlpha(F)V

    :cond_0
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/transition/Fade$1;->val$endView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTransitionAlpha()F

    move-result p1

    iput p1, p0, Landroid/transition/Fade$1;->mPausedAlpha:F

    .line 2
    iget-object p1, p0, Landroid/transition/Fade$1;->val$endView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setTransitionAlpha(F)V

    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/transition/Fade$1;->val$endView:Landroid/view/View;

    iget v0, p0, Landroid/transition/Fade$1;->mPausedAlpha:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTransitionAlpha(F)V

    return-void
.end method
