.class public Landroid/transition/Fade;
.super Landroid/transition/Visibility;
.source "SourceFile"


# static fields
.field private static DBG:Z = false

.field public static final IN:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Fade"

.field public static final OUT:I = 0x2

.field private static final PROPNAME_SCREEN_X:Ljava/lang/String; = "android:fade:screenX"

.field private static final PROPNAME_SCREEN_Y:Ljava/lang/String; = "android:fade:screenY"


# instance fields
.field private mFadingMode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Landroid/transition/Fade;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    .line 3
    iput p1, p0, Landroid/transition/Fade;->mFadingMode:I

    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:fade:screenX"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "android:fade:screenY"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private createAnimation(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;
    .locals 2

    cmpl-float v0, p2, p3

    if-nez v0, :cond_1

    const/4 p1, 0x0

    if-eqz p4, :cond_0

    .line 1
    invoke-virtual {p4, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    return-object p1

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    const-string/jumbo p2, "transitionAlpha"

    .line 2
    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 3
    sget-boolean p2, Landroid/transition/Fade;->DBG:Z

    if-eqz p2, :cond_2

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Created animator "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Fade"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p4, :cond_3

    .line 5
    invoke-virtual {p1, p4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6
    invoke-virtual {p1, p4}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    :cond_3
    return-object p1
.end method


# virtual methods
.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/transition/Fade;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 2

    .line 1
    iget p1, p0, Landroid/transition/Fade;->mFadingMode:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    if-nez p4, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object p1, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 3
    sget-boolean p4, Landroid/transition/Fade;->DBG:Z

    if-eqz p4, :cond_2

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object p2, v1

    .line 5
    :goto_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fade.onAppear: startView, startVis, endView, endVis = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Fade"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 7
    new-instance p3, Landroid/transition/Fade$1;

    invoke-direct {p3, p0, p1}, Landroid/transition/Fade$1;-><init>(Landroid/transition/Fade;Landroid/view/View;)V

    .line 8
    invoke-virtual {p0, p3}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    const/high16 p3, 0x3f800000    # 1.0f

    .line 9
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/transition/Fade;->createAnimation(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 14

    move-object v7, p0

    move-object v6, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move/from16 v4, p5

    .line 1
    iget v2, v7, Landroid/transition/Fade;->mFadingMode:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    const/4 v5, 0x0

    if-eq v2, v3, :cond_0

    return-object v5

    :cond_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v2, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object v2, v5

    :goto_0
    if-eqz v1, :cond_2

    .line 3
    iget-object v1, v1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_1

    :cond_2
    move-object v1, v5

    .line 4
    :goto_1
    sget-boolean v8, Landroid/transition/Fade;->DBG:Z

    if-eqz v8, :cond_3

    .line 5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fade.onDisappear: startView, startVis, endView, endVis = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p3

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Fade"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v1, :cond_6

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-nez v8, :cond_4

    goto :goto_3

    :cond_4
    const/4 v8, 0x4

    if-ne v4, v8, :cond_5

    goto :goto_2

    :cond_5
    if-ne v2, v1, :cond_8

    :goto_2
    move-object v8, v1

    move-object v9, v8

    move-object v10, v5

    goto :goto_7

    :cond_6
    :goto_3
    if-eqz v1, :cond_7

    move-object v9, v1

    :goto_4
    move-object v10, v9

    :goto_5
    move-object v8, v5

    goto :goto_7

    :cond_7
    if-eqz v2, :cond_b

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_9

    :cond_8
    move-object v9, v2

    goto :goto_4

    .line 8
    :cond_9
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_b

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_b

    .line 9
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 10
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v8, -0x1

    if-eq v1, v8, :cond_a

    .line 11
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-boolean v1, v7, Landroid/transition/Transition;->mCanRemoveViews:Z

    if-eqz v1, :cond_a

    move-object v1, v2

    goto :goto_6

    :cond_a
    move-object v1, v5

    move-object v2, v1

    :goto_6
    move-object v10, v1

    move-object v9, v2

    goto :goto_5

    :cond_b
    move-object v8, v5

    move-object v9, v8

    move-object v10, v9

    :goto_7
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v1, 0x0

    if-eqz v10, :cond_c

    .line 12
    iget-object v2, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:fade:screenX"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 13
    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:fade:screenY"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-array v3, v3, [I

    .line 14
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 15
    aget v1, v3, v1

    sub-int/2addr v2, v1

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v2, v1

    invoke-virtual {v10, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    const/4 v1, 0x1

    .line 16
    aget v1, v3, v1

    sub-int/2addr v0, v1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v10, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 17
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 18
    new-instance v13, Landroid/transition/Fade$2;

    move-object v0, v13

    move-object v1, p0

    move-object v2, v9

    move-object v3, v8

    move/from16 v4, p5

    move-object v5, v10

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Landroid/transition/Fade$2;-><init>(Landroid/transition/Fade;Landroid/view/View;Landroid/view/View;ILandroid/view/View;Landroid/view/ViewGroup;)V

    .line 19
    invoke-direct {p0, v9, v11, v12, v13}, Landroid/transition/Fade;->createAnimation(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    :cond_c
    if-eqz v8, :cond_d

    .line 20
    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    new-instance v13, Landroid/transition/Fade$3;

    move-object v0, v13

    move-object v1, p0

    move-object v2, v8

    move/from16 v3, p5

    move-object v4, v9

    move-object v5, v10

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Landroid/transition/Fade$3;-><init>(Landroid/transition/Fade;Landroid/view/View;ILandroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 22
    invoke-direct {p0, v9, v11, v12, v13}, Landroid/transition/Fade;->createAnimation(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    :cond_d
    return-object v5
.end method
