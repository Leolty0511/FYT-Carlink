.class public Landroid/animation/StateListAnimator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/StateListAnimator$StateListAnimatorConstantState;,
        Landroid/animation/StateListAnimator$Tuple;
    }
.end annotation


# instance fields
.field private mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mChangingConfigurations:I

.field private mConstantState:Landroid/animation/StateListAnimator$StateListAnimatorConstantState;

.field private mLastMatch:Landroid/animation/StateListAnimator$Tuple;

.field private mRunningAnimator:Landroid/animation/Animator;

.field private mTuples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/StateListAnimator$Tuple;",
            ">;"
        }
    .end annotation
.end field

.field private mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Landroid/animation/StateListAnimator;->mLastMatch:Landroid/animation/StateListAnimator$Tuple;

    .line 13
    .line 14
    iput-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    .line 15
    .line 16
    invoke-direct {p0}, Landroid/animation/StateListAnimator;->initAnimatorListener()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static synthetic access$000(Landroid/animation/StateListAnimator;)Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method public static synthetic access$002(Landroid/animation/StateListAnimator;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method public static synthetic access$202(Landroid/animation/StateListAnimator;Landroid/animation/StateListAnimator$StateListAnimatorConstantState;)Landroid/animation/StateListAnimator$StateListAnimatorConstantState;
    .locals 0

    iput-object p1, p0, Landroid/animation/StateListAnimator;->mConstantState:Landroid/animation/StateListAnimator$StateListAnimatorConstantState;

    return-object p1
.end method

.method private cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private clearTarget()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    const/4 v2, 0x0

    .line 9
    if-ge v1, v0, :cond_0

    .line 10
    .line 11
    iget-object v3, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Landroid/animation/StateListAnimator$Tuple;

    .line 18
    .line 19
    iget-object v3, v3, Landroid/animation/StateListAnimator$Tuple;->mAnimator:Landroid/animation/Animator;

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iput-object v2, p0, Landroid/animation/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 28
    .line 29
    iput-object v2, p0, Landroid/animation/StateListAnimator;->mLastMatch:Landroid/animation/StateListAnimator$Tuple;

    .line 30
    .line 31
    iput-object v2, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    .line 32
    .line 33
    return-void
.end method

.method private initAnimatorListener()V
    .locals 1

    new-instance v0, Landroid/animation/StateListAnimator$1;

    invoke-direct {v0, p0}, Landroid/animation/StateListAnimator$1;-><init>(Landroid/animation/StateListAnimator;)V

    iput-object v0, p0, Landroid/animation/StateListAnimator;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    return-void
.end method

.method private start(Landroid/animation/StateListAnimator$Tuple;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/animation/StateListAnimator$Tuple;->mAnimator:Landroid/animation/Animator;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/animation/StateListAnimator;->getTarget()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p1, Landroid/animation/StateListAnimator$Tuple;->mAnimator:Landroid/animation/Animator;

    .line 11
    .line 12
    iput-object p1, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public addState([ILandroid/animation/Animator;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/animation/StateListAnimator$Tuple;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p2, v1}, Landroid/animation/StateListAnimator$Tuple;-><init>([ILandroid/animation/Animator;Landroid/animation/StateListAnimator$1;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, v0, Landroid/animation/StateListAnimator$Tuple;->mAnimator:Landroid/animation/Animator;

    .line 8
    .line 9
    iget-object v1, p0, Landroid/animation/StateListAnimator;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    iget p1, p0, Landroid/animation/StateListAnimator;->mChangingConfigurations:I

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/animation/Animator;->getChangingConfigurations()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    or-int/2addr p1, p2

    .line 26
    iput p1, p0, Landroid/animation/StateListAnimator;->mChangingConfigurations:I

    .line 27
    .line 28
    return-void
.end method

.method public appendChangingConfigurations(I)V
    .locals 1

    iget v0, p0, Landroid/animation/StateListAnimator;->mChangingConfigurations:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/animation/StateListAnimator;->mChangingConfigurations:I

    return-void
.end method

.method public clone()Landroid/animation/StateListAnimator;
    .locals 6

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/StateListAnimator;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Landroid/animation/StateListAnimator;->mLastMatch:Landroid/animation/StateListAnimator$Tuple;

    .line 5
    iput-object v1, v0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    .line 6
    iput-object v1, v0, Landroid/animation/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 7
    iput-object v1, v0, Landroid/animation/StateListAnimator;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 8
    invoke-direct {v0}, Landroid/animation/StateListAnimator;->initAnimatorListener()V

    .line 9
    iget-object v1, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    iget-object v3, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/StateListAnimator$Tuple;

    .line 11
    iget-object v4, v3, Landroid/animation/StateListAnimator$Tuple;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v4

    .line 12
    iget-object v5, p0, Landroid/animation/StateListAnimator;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 13
    iget-object v3, v3, Landroid/animation/StateListAnimator$Tuple;->mSpecs:[I

    invoke-virtual {v0, v3, v4}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/animation/StateListAnimator;->getChangingConfigurations()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/animation/StateListAnimator;->setChangingConfigurations(I)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 15
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "cannot clone state list animator"

    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/animation/StateListAnimator;->clone()Landroid/animation/StateListAnimator;

    move-result-object v0

    return-object v0
.end method

.method public createConstantState()Landroid/content/res/ConstantState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConstantState<",
            "Landroid/animation/StateListAnimator;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;

    invoke-direct {v0, p0}, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;-><init>(Landroid/animation/StateListAnimator;)V

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    iget v0, p0, Landroid/animation/StateListAnimator;->mChangingConfigurations:I

    return v0
.end method

.method public getRunningAnimator()Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method public getTarget()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/animation/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0
.end method

.method public getTuples()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/StateListAnimator$Tuple;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    return-object v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 0

    iput p1, p0, Landroid/animation/StateListAnimator;->mChangingConfigurations:I

    return-void
.end method

.method public setState([I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/animation/StateListAnimator$Tuple;

    .line 17
    .line 18
    iget-object v3, v2, Landroid/animation/StateListAnimator$Tuple;->mSpecs:[I

    .line 19
    .line 20
    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v2, 0x0

    .line 31
    :goto_1
    iget-object p1, p0, Landroid/animation/StateListAnimator;->mLastMatch:Landroid/animation/StateListAnimator$Tuple;

    .line 32
    .line 33
    if-ne v2, p1, :cond_2

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    if-eqz p1, :cond_3

    .line 37
    .line 38
    invoke-direct {p0}, Landroid/animation/StateListAnimator;->cancel()V

    .line 39
    .line 40
    .line 41
    :cond_3
    iput-object v2, p0, Landroid/animation/StateListAnimator;->mLastMatch:Landroid/animation/StateListAnimator$Tuple;

    .line 42
    .line 43
    if-eqz v2, :cond_4

    .line 44
    .line 45
    invoke-direct {p0, v2}, Landroid/animation/StateListAnimator;->start(Landroid/animation/StateListAnimator$Tuple;)V

    .line 46
    .line 47
    .line 48
    :cond_4
    return-void
.end method

.method public setTarget(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/animation/StateListAnimator;->getTarget()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-direct {p0}, Landroid/animation/StateListAnimator;->clearTarget()V

    .line 11
    .line 12
    .line 13
    :cond_1
    if-eqz p1, :cond_2

    .line 14
    .line 15
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroid/animation/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 21
    .line 22
    :cond_2
    return-void
.end method
