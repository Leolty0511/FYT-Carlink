.class Landroid/transition/TransitionManager$MultiListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/TransitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiListener"
.end annotation


# instance fields
.field public mSceneRoot:Landroid/view/ViewGroup;

.field public mTransition:Landroid/transition/Transition;


# direct methods
.method public constructor <init>(Landroid/transition/Transition;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/transition/TransitionManager$MultiListener;->mTransition:Landroid/transition/Transition;

    .line 3
    iput-object p2, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    return-void
.end method

.method private removeListeners()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2
    iget-object v0, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/transition/TransitionManager$MultiListener;->removeListeners()V

    .line 2
    invoke-static {}, Landroid/transition/TransitionManager;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    invoke-static {}, Landroid/transition/TransitionManager;->access$100()Landroid/util/ArrayMap;

    move-result-object v0

    .line 4
    iget-object v1, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v3, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    :cond_1
    :goto_0
    iget-object v3, p0, Landroid/transition/TransitionManager$MultiListener;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v1, p0, Landroid/transition/TransitionManager$MultiListener;->mTransition:Landroid/transition/Transition;

    new-instance v3, Landroid/transition/TransitionManager$MultiListener$1;

    invoke-direct {v3, p0, v0}, Landroid/transition/TransitionManager$MultiListener$1;-><init>(Landroid/transition/TransitionManager$MultiListener;Landroid/util/ArrayMap;)V

    invoke-virtual {v1, v3}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 11
    iget-object v0, p0, Landroid/transition/TransitionManager$MultiListener;->mTransition:Landroid/transition/Transition;

    iget-object v1, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/transition/Transition;->captureValues(Landroid/view/ViewGroup;Z)V

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    .line 13
    invoke-virtual {v1}, Landroid/transition/Transition;->resume()V

    goto :goto_1

    .line 14
    :cond_2
    iget-object v0, p0, Landroid/transition/TransitionManager$MultiListener;->mTransition:Landroid/transition/Transition;

    iget-object v1, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->playTransition(Landroid/view/ViewGroup;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/transition/TransitionManager$MultiListener;->removeListeners()V

    .line 2
    invoke-static {}, Landroid/transition/TransitionManager;->access$000()Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    invoke-static {}, Landroid/transition/TransitionManager;->access$100()Landroid/util/ArrayMap;

    move-result-object p1

    iget-object v0, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/Transition;

    .line 6
    invoke-virtual {v0}, Landroid/transition/Transition;->resume()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Landroid/transition/TransitionManager$MultiListener;->mTransition:Landroid/transition/Transition;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/transition/Transition;->clearValues(Z)V

    return-void
.end method
