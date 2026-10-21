.class Landroid/transition/TransitionSet$TransitionSetListener;
.super Landroid/transition/TransitionListenerAdapter;
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
.field mTransitionSet:Landroid/transition/TransitionSet;


# direct methods
.method public constructor <init>(Landroid/transition/TransitionSet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    .line 2
    .line 3
    iget v1, v0, Landroid/transition/TransitionSet;->mCurrentListeners:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, -0x1

    .line 6
    .line 7
    iput v1, v0, Landroid/transition/TransitionSet;->mCurrentListeners:I

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, v0, Landroid/transition/TransitionSet;->mStarted:Z

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/transition/Transition;->end()V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    .line 2
    .line 3
    iget-boolean v0, p1, Landroid/transition/TransitionSet;->mStarted:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/transition/Transition;->start()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p1, Landroid/transition/TransitionSet;->mStarted:Z

    .line 14
    .line 15
    :cond_0
    return-void
.end method
