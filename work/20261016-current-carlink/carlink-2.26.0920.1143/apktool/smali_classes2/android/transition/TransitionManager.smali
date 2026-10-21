.class public Landroid/transition/TransitionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/TransitionManager$MultiListener;
    }
.end annotation


# static fields
.field private static final EMPTY_STRINGS:[Ljava/lang/String;

.field private static LOG_TAG:Ljava/lang/String; = "TransitionManager"

.field private static sDefaultTransition:Landroid/transition/Transition;

.field private static sPendingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static sRunningTransitions:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/util/ArrayMap<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Landroid/transition/Transition;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field mScenePairTransitions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/transition/Scene;",
            "Landroid/util/ArrayMap<",
            "Landroid/transition/Scene;",
            "Landroid/transition/Transition;",
            ">;>;"
        }
    .end annotation
.end field

.field mSceneTransitions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/transition/Scene;",
            "Landroid/transition/Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/transition/AutoTransition;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/transition/AutoTransition;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/transition/TransitionManager;->sDefaultTransition:Landroid/transition/Transition;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    new-array v0, v0, [Ljava/lang/String;

    .line 10
    .line 11
    sput-object v0, Landroid/transition/TransitionManager;->EMPTY_STRINGS:[Ljava/lang/String;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Landroid/transition/TransitionManager;->sRunningTransitions:Ljava/lang/ThreadLocal;

    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    sput-object v0, Landroid/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/transition/TransitionManager;->mSceneTransitions:Landroid/util/ArrayMap;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/transition/TransitionManager;->mScenePairTransitions:Landroid/util/ArrayMap;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Landroid/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic access$100()Landroid/util/ArrayMap;
    .locals 1

    invoke-static {}, Landroid/transition/TransitionManager;->getRunningTransitions()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    return-void
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V
    .locals 1

    .line 2
    sget-object v0, Landroid/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Landroid/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Landroid/transition/TransitionManager;->sDefaultTransition:Landroid/transition/Transition;

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object p1

    .line 6
    invoke-static {p0, p1}, Landroid/transition/TransitionManager;->sceneChangeSetup(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    const/4 v0, 0x0

    .line 7
    invoke-static {p0, v0}, Landroid/transition/Scene;->setCurrentScene(Landroid/view/View;Landroid/transition/Scene;)V

    .line 8
    invoke-static {p0, p1}, Landroid/transition/TransitionManager;->sceneChangeRunTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_1
    return-void
.end method

.method private static changeScene(Landroid/transition/Scene;Landroid/transition/Transition;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroid/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_2

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/transition/Scene;->enter()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object v1, Landroid/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1, v0}, Landroid/transition/Transition;->setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/Transition;

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Landroid/transition/Scene;->getCurrentScene(Landroid/view/View;)Landroid/transition/Scene;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/transition/Scene;->isCreatedFromLayoutResource()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    invoke-virtual {p1, v1}, Landroid/transition/Transition;->setCanRemoveViews(Z)V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-static {v0, p1}, Landroid/transition/TransitionManager;->sceneChangeSetup(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/transition/Scene;->enter()V

    .line 51
    .line 52
    .line 53
    invoke-static {v0, p1}, Landroid/transition/TransitionManager;->sceneChangeRunTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    return-void
.end method

.method public static endTransitions(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    sget-object v0, Landroid/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/transition/TransitionManager;->getRunningTransitions()Landroid/util/ArrayMap;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    add-int/lit8 v0, v0, -0x1

    .line 34
    .line 35
    :goto_0
    if-ltz v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroid/transition/Transition;

    .line 42
    .line 43
    invoke-virtual {v2, p0}, Landroid/transition/Transition;->forceToEnd(Landroid/view/ViewGroup;)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v0, v0, -0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method

.method public static getDefaultTransition()Landroid/transition/Transition;
    .locals 1

    sget-object v0, Landroid/transition/TransitionManager;->sDefaultTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method private static getRunningTransitions()Landroid/util/ArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Landroid/transition/Transition;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/transition/TransitionManager;->sRunningTransitions:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    sget-object v0, Landroid/transition/TransitionManager;->sRunningTransitions:Ljava/lang/ThreadLocal;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    move-object v0, v1

    .line 33
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/util/ArrayMap;

    .line 38
    .line 39
    return-object v0
.end method

.method public static go(Landroid/transition/Scene;)V
    .locals 1

    .line 1
    sget-object v0, Landroid/transition/TransitionManager;->sDefaultTransition:Landroid/transition/Transition;

    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->changeScene(Landroid/transition/Scene;Landroid/transition/Transition;)V

    return-void
.end method

.method public static go(Landroid/transition/Scene;Landroid/transition/Transition;)V
    .locals 0

    .line 2
    invoke-static {p0, p1}, Landroid/transition/TransitionManager;->changeScene(Landroid/transition/Scene;Landroid/transition/Transition;)V

    return-void
.end method

.method private static sceneChangeRunTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/transition/TransitionManager$MultiListener;

    .line 6
    .line 7
    invoke-direct {v0, p1, p0}, Landroid/transition/TransitionManager$MultiListener;-><init>(Landroid/transition/Transition;Landroid/view/ViewGroup;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private static sceneChangeSetup(Landroid/view/ViewGroup;Landroid/transition/Transition;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/transition/TransitionManager;->getRunningTransitions()Landroid/util/ArrayMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-lez v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroid/transition/Transition;

    .line 34
    .line 35
    invoke-virtual {v1, p0}, Landroid/transition/Transition;->pause(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    if-eqz p1, :cond_1

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    invoke-virtual {p1, p0, v0}, Landroid/transition/Transition;->captureValues(Landroid/view/ViewGroup;Z)V

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-static {p0}, Landroid/transition/Scene;->getCurrentScene(Landroid/view/View;)Landroid/transition/Scene;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    if-eqz p0, :cond_2

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/transition/Scene;->exit()V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method


# virtual methods
.method public getTransition(Landroid/transition/Scene;)Landroid/transition/Transition;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Landroid/transition/Scene;->getCurrentScene(Landroid/view/View;)Landroid/transition/Scene;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroid/transition/TransitionManager;->mScenePairTransitions:Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/util/ArrayMap;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/transition/Transition;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_0
    iget-object v0, p0, Landroid/transition/TransitionManager;->mSceneTransitions:Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroid/transition/Transition;

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    sget-object p1, Landroid/transition/TransitionManager;->sDefaultTransition:Landroid/transition/Transition;

    .line 44
    .line 45
    :goto_0
    return-object p1
.end method

.method public setDefaultTransition(Landroid/transition/Transition;)V
    .locals 0

    sput-object p1, Landroid/transition/TransitionManager;->sDefaultTransition:Landroid/transition/Transition;

    return-void
.end method

.method public setTransition(Landroid/transition/Scene;Landroid/transition/Scene;Landroid/transition/Transition;)V
    .locals 2

    .line 2
    iget-object v0, p0, Landroid/transition/TransitionManager;->mScenePairTransitions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    iget-object v1, p0, Landroid/transition/TransitionManager;->mScenePairTransitions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-virtual {v0, p1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTransition(Landroid/transition/Scene;Landroid/transition/Transition;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/transition/TransitionManager;->mSceneTransitions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public transitionTo(Landroid/transition/Scene;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/transition/TransitionManager;->getTransition(Landroid/transition/Scene;)Landroid/transition/Transition;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/transition/TransitionManager;->changeScene(Landroid/transition/Scene;Landroid/transition/Transition;)V

    return-void
.end method
