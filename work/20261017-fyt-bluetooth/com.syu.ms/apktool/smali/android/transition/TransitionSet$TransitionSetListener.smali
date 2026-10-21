.class Landroid/transition/TransitionSet$TransitionSetListener;
.super Landroid/transition/Transition$TransitionListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/TransitionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransitionSetListener"
.end annotation


# instance fields
.field public mTransitionSet:Landroid/transition/TransitionSet;


# direct methods
.method public constructor <init>(Landroid/transition/TransitionSet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    iget v1, v0, Landroid/transition/TransitionSet;->mCurrentListeners:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/transition/TransitionSet;->mCurrentListeners:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Landroid/transition/TransitionSet;->mStarted:Z

    .line 3
    invoke-virtual {v0}, Landroid/transition/Transition;->end()V

    .line 4
    :cond_0
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    iget-boolean v0, p1, Landroid/transition/TransitionSet;->mStarted:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/transition/Transition;->start()V

    .line 3
    iget-object p1, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/transition/TransitionSet;->mStarted:Z

    :cond_0
    return-void
.end method
