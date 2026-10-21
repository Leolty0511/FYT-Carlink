.class Landroid/app/ActivityOptions$HideWindowListener;
.super Landroid/transition/TransitionListenerAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HideWindowListener"
.end annotation


# instance fields
.field private final mExit:Landroid/app/ExitTransitionCoordinator;

.field private mSharedElementHidden:Z

.field private mSharedElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransitionEnded:Z

.field private final mWaitingForTransition:Z

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Window;Landroid/app/ExitTransitionCoordinator;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/ActivityOptions$HideWindowListener;->mWindow:Landroid/view/Window;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/app/ActivityOptions$HideWindowListener;->mExit:Landroid/app/ExitTransitionCoordinator;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v1, p2, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroid/app/ActivityOptions$HideWindowListener;->mSharedElements:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/Window;->getExitTransition()Landroid/transition/Transition;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Landroid/app/ActivityOptions$HideWindowListener;->mWaitingForTransition:Z

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Landroid/app/ActivityOptions$HideWindowListener;->mWaitingForTransition:Z

    .line 32
    .line 33
    :goto_0
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    const v0, 0x1020209

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string p2, "Cannot start a transition while one is running"

    .line 55
    .line 56
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_2
    :goto_1
    return-void
.end method

.method private hideWhenDone()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/app/ActivityOptions$HideWindowListener;->mSharedElementHidden:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Landroid/app/ActivityOptions$HideWindowListener;->mWaitingForTransition:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Landroid/app/ActivityOptions$HideWindowListener;->mTransitionEnded:Z

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityOptions$HideWindowListener;->mExit:Landroid/app/ExitTransitionCoordinator;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/ExitTransitionCoordinator;->resetViews()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroid/app/ActivityOptions$HideWindowListener;->mSharedElements:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_0
    if-ge v1, v0, :cond_1

    .line 26
    .line 27
    iget-object v2, p0, Landroid/app/ActivityOptions$HideWindowListener;->mSharedElements:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, p0, Landroid/app/ActivityOptions$HideWindowListener;->mWindow:Landroid/view/Window;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    const v1, 0x1020209

    .line 50
    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    const/16 v1, 0x8

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    :cond_2
    return-void
.end method


# virtual methods
.method public hideSharedElements()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/app/ActivityOptions$HideWindowListener;->mSharedElementHidden:Z

    .line 3
    .line 4
    invoke-direct {p0}, Landroid/app/ActivityOptions$HideWindowListener;->hideWhenDone()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/app/ActivityOptions$HideWindowListener;->mTransitionEnded:Z

    .line 3
    .line 4
    invoke-direct {p0}, Landroid/app/ActivityOptions$HideWindowListener;->hideWhenDone()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 8
    .line 9
    .line 10
    return-void
.end method
