.class public abstract Landroid/transition/Visibility;
.super Landroid/transition/Transition;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/Visibility$VisibilityInfo;
    }
.end annotation


# static fields
.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:visibility:parent"

.field private static final PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibility:visibility"

.field private static final sTransitionProperties:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "android:visibility:visibility"

    const-string v1, "android:visibility:parent"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 2
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object p1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const-string v1, "android:visibility:parent"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;
    .locals 7

    .line 1
    new-instance v0, Landroid/transition/Visibility$VisibilityInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/transition/Visibility$VisibilityInfo;-><init>(Landroid/transition/Visibility$1;)V

    const/4 v2, 0x0

    .line 2
    iput-boolean v2, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    .line 3
    iput-boolean v2, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    const-string v3, "android:visibility:parent"

    const-string v4, "android:visibility:visibility"

    const/4 v5, -0x1

    if-eqz p1, :cond_0

    .line 4
    iget-object v6, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    .line 5
    iget-object v6, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    goto :goto_0

    .line 6
    :cond_0
    iput v5, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    .line 7
    iput-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    :goto_0
    if-eqz p2, :cond_1

    .line 8
    iget-object v1, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    .line 9
    iget-object v1, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    goto :goto_1

    .line 10
    :cond_1
    iput v5, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    .line 11
    iput-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    :goto_1
    const/4 v1, 0x1

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 12
    iget v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v4, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-ne v3, v4, :cond_2

    iget-object v5, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    iget-object v6, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-ne v5, v6, :cond_2

    return-object v0

    :cond_2
    if-eq v3, v4, :cond_4

    if-nez v3, :cond_3

    .line 13
    iput-boolean v2, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 14
    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_2

    :cond_3
    if-nez v4, :cond_6

    .line 15
    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 16
    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_2

    .line 17
    :cond_4
    iget-object v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    iget-object v4, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-eq v3, v4, :cond_6

    if-nez v4, :cond_5

    .line 18
    iput-boolean v2, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 19
    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_2

    :cond_5
    if-nez v3, :cond_6

    .line 20
    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 21
    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    :cond_6
    :goto_2
    if-nez p1, :cond_7

    .line 22
    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 23
    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_3

    :cond_7
    if-nez p2, :cond_8

    .line 24
    iput-boolean v2, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 25
    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    :cond_8
    :goto_3
    return-object v0
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/transition/Visibility;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/transition/Visibility;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 8

    .line 1
    invoke-direct {p0, p2, p3}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v0

    .line 2
    iget-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 3
    iget-object v1, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    if-gtz v1, :cond_0

    iget-object v1, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    iget-object v1, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-eqz p3, :cond_2

    .line 5
    iget-object v4, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_1

    :cond_2
    move-object v4, v2

    :goto_1
    const/4 v5, -0x1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v6

    goto :goto_2

    :cond_3
    move v6, v5

    :goto_2
    if-eqz v4, :cond_4

    .line 7
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    :cond_4
    int-to-long v6, v6

    .line 8
    invoke-virtual {p0, v1, v6, v7}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;J)Z

    move-result v1

    if-nez v1, :cond_5

    int-to-long v5, v5

    invoke-virtual {p0, v4, v5, v6}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;J)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const/4 v1, 0x1

    move v3, v1

    :cond_6
    if-nez v3, :cond_7

    .line 9
    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_7

    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_9

    .line 10
    :cond_7
    iget-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    if-eqz v1, :cond_8

    .line 11
    iget v5, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v7, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    .line 12
    :cond_8
    iget v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v5, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_9
    return-object v2
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public isVisible(Landroid/transition/TransitionValues;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2
    iget-object p1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:parent"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
