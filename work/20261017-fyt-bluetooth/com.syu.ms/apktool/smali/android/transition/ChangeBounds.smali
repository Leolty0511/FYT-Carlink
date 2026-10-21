.class public Landroid/transition/ChangeBounds;
.super Landroid/transition/Transition;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ChangeBounds"

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeBounds:bounds"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeBounds:parent"

.field private static final PROPNAME_WINDOW_X:Ljava/lang/String; = "android:changeBounds:windowX"

.field private static final PROPNAME_WINDOW_Y:Ljava/lang/String; = "android:changeBounds:windowY"

.field private static sRectEvaluator:Landroid/animation/RectEvaluator;

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field public mReparent:Z

.field public mResizeClip:Z

.field public tempLocation:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "android:changeBounds:bounds"

    const-string v1, "android:changeBounds:parent"

    const-string v2, "android:changeBounds:windowX"

    const-string v3, "android:changeBounds:windowY"

    .line 1
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    .line 2
    new-instance v0, Landroid/animation/RectEvaluator;

    invoke-direct {v0}, Landroid/animation/RectEvaluator;-><init>()V

    sput-object v0, Landroid/transition/ChangeBounds;->sRectEvaluator:Landroid/animation/RectEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    .line 4
    iput-boolean v0, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 6

    .line 1
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 2
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v0, "android:changeBounds:bounds"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v2, "android:changeBounds:parent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v1, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 5
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v1, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android:changeBounds:windowX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v0, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "android:changeBounds:windowY"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/transition/ChangeBounds;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/transition/ChangeBounds;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz v2, :cond_25

    if-nez v3, :cond_0

    goto/16 :goto_a

    .line 1
    :cond_0
    iget-object v5, v2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 2
    iget-object v6, v3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:changeBounds:parent"

    .line 3
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 4
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    if-eqz v5, :cond_24

    if-nez v6, :cond_1

    goto/16 :goto_9

    .line 5
    :cond_1
    iget-object v7, v3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v5, v6, :cond_3

    .line 6
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v5, v6, :cond_2

    goto :goto_0

    :cond_2
    move v5, v8

    goto :goto_1

    :cond_3
    :goto_0
    move v5, v9

    .line 7
    :goto_1
    iget-boolean v6, v0, Landroid/transition/ChangeBounds;->mReparent:Z

    const/4 v10, 0x2

    if-eqz v6, :cond_6

    if-eqz v5, :cond_4

    goto/16 :goto_2

    .line 8
    :cond_4
    iget-object v5, v2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:changeBounds:windowX"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 9
    iget-object v2, v2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v11, "android:changeBounds:windowY"

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 10
    iget-object v12, v3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v12, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 11
    iget-object v3, v3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v5, v6, :cond_5

    if-eq v2, v3, :cond_23

    .line 12
    :cond_5
    iget-object v4, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    invoke-virtual {v1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 13
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 14
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 15
    invoke-virtual {v7, v11}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 16
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v11, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x4

    .line 17
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 18
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 19
    new-instance v4, Landroid/graphics/Rect;

    iget-object v12, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    aget v13, v12, v8

    sub-int v13, v5, v13

    aget v14, v12, v9

    sub-int v14, v2, v14

    aget v12, v12, v8

    sub-int/2addr v5, v12

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v5, v12

    iget-object v12, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    aget v12, v12, v9

    sub-int/2addr v2, v12

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v2, v12

    invoke-direct {v4, v13, v14, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 20
    new-instance v2, Landroid/graphics/Rect;

    iget-object v5, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    aget v12, v5, v8

    sub-int v12, v6, v12

    aget v13, v5, v9

    sub-int v13, v3, v13

    aget v5, v5, v8

    sub-int/2addr v6, v5

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v6, v5

    iget-object v5, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    aget v5, v5, v9

    sub-int/2addr v3, v5

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v3, v5

    invoke-direct {v2, v12, v13, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 21
    sget-object v3, Landroid/transition/ChangeBounds;->sRectEvaluator:Landroid/animation/RectEvaluator;

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v4, v5, v8

    aput-object v2, v5, v9

    const-string v2, "bounds"

    invoke-static {v11, v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 22
    new-instance v3, Landroid/transition/ChangeBounds$4;

    invoke-direct {v3, v0, v1, v11, v7}, Landroid/transition/ChangeBounds$4;-><init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v2

    .line 23
    :cond_6
    :goto_2
    iget-object v1, v2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:bounds"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 24
    iget-object v3, v3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 25
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 26
    iget v5, v2, Landroid/graphics/Rect;->left:I

    .line 27
    iget v6, v1, Landroid/graphics/Rect;->top:I

    .line 28
    iget v11, v2, Landroid/graphics/Rect;->top:I

    .line 29
    iget v12, v1, Landroid/graphics/Rect;->right:I

    .line 30
    iget v13, v2, Landroid/graphics/Rect;->right:I

    .line 31
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 32
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v14, v12, v3

    sub-int v15, v1, v6

    sub-int v4, v13, v5

    sub-int v9, v2, v11

    if-eqz v14, :cond_b

    if-eqz v15, :cond_b

    if-eqz v4, :cond_b

    if-eqz v9, :cond_b

    if-eq v3, v5, :cond_7

    const/16 v17, 0x1

    goto :goto_3

    :cond_7
    move/from16 v17, v8

    :goto_3
    if-eq v6, v11, :cond_8

    add-int/lit8 v17, v17, 0x1

    :cond_8
    if-eq v12, v13, :cond_9

    add-int/lit8 v17, v17, 0x1

    :cond_9
    if-eq v1, v2, :cond_a

    add-int/lit8 v17, v17, 0x1

    :cond_a
    move/from16 v8, v17

    :cond_b
    if-lez v8, :cond_23

    .line 33
    iget-boolean v10, v0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    if-nez v10, :cond_15

    .line 34
    new-array v4, v8, [Landroid/animation/PropertyValuesHolder;

    if-eq v3, v5, :cond_c

    .line 35
    invoke-virtual {v7, v3}, Landroid/view/View;->setLeft(I)V

    :cond_c
    if-eq v6, v11, :cond_d

    .line 36
    invoke-virtual {v7, v6}, Landroid/view/View;->setTop(I)V

    :cond_d
    if-eq v12, v13, :cond_e

    .line 37
    invoke-virtual {v7, v12}, Landroid/view/View;->setRight(I)V

    :cond_e
    if-eq v1, v2, :cond_f

    .line 38
    invoke-virtual {v7, v1}, Landroid/view/View;->setBottom(I)V

    :cond_f
    const/4 v8, 0x2

    if-eq v3, v5, :cond_10

    new-array v9, v8, [I

    const/4 v10, 0x0

    aput v3, v9, v10

    const/16 v16, 0x1

    aput v5, v9, v16

    const-string v3, "left"

    .line 39
    invoke-static {v3, v9}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v4, v10

    move/from16 v3, v16

    goto :goto_4

    :cond_10
    const/4 v10, 0x0

    const/16 v16, 0x1

    move v3, v10

    :goto_4
    if-eq v6, v11, :cond_11

    add-int/lit8 v5, v3, 0x1

    new-array v9, v8, [I

    aput v6, v9, v10

    aput v11, v9, v16

    const-string/jumbo v6, "top"

    .line 40
    invoke-static {v6, v9}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v4, v3

    move v3, v5

    :cond_11
    if-eq v12, v13, :cond_12

    add-int/lit8 v5, v3, 0x1

    new-array v6, v8, [I

    aput v12, v6, v10

    aput v13, v6, v16

    const-string/jumbo v9, "right"

    .line 41
    invoke-static {v9, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v4, v3

    move v3, v5

    :cond_12
    if-eq v1, v2, :cond_13

    new-array v5, v8, [I

    aput v1, v5, v10

    aput v2, v5, v16

    const-string v1, "bottom"

    .line 42
    invoke-static {v1, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v4, v3

    .line 43
    :cond_13
    invoke-static {v7, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 44
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_14

    .line 45
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    .line 46
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 47
    new-instance v3, Landroid/transition/ChangeBounds$1;

    invoke-direct {v3, v0, v2}, Landroid/transition/ChangeBounds$1;-><init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;)V

    .line 48
    invoke-virtual {v0, v3}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    :cond_14
    return-object v1

    :cond_15
    if-eq v14, v4, :cond_16

    .line 49
    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-virtual {v7, v1}, Landroid/view/View;->setRight(I)V

    :cond_16
    if-eq v15, v9, :cond_17

    .line 50
    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v11

    invoke-virtual {v7, v1}, Landroid/view/View;->setBottom(I)V

    :cond_17
    if-eq v3, v5, :cond_18

    sub-int v1, v3, v5

    int-to-float v1, v1

    .line 51
    invoke-virtual {v7, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_18
    if-eq v6, v11, :cond_19

    sub-int v1, v6, v11

    int-to-float v1, v1

    .line 52
    invoke-virtual {v7, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_19
    sub-int/2addr v5, v3

    int-to-float v1, v5

    sub-int/2addr v11, v6

    int-to-float v2, v11

    sub-int v3, v4, v14

    sub-int v5, v9, v15

    const/4 v6, 0x0

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_1a

    const/4 v8, 0x1

    goto :goto_5

    :cond_1a
    const/4 v8, 0x0

    :goto_5
    cmpl-float v2, v2, v6

    if-eqz v2, :cond_1b

    add-int/lit8 v8, v8, 0x1

    :cond_1b
    if-nez v3, :cond_1c

    if-eqz v5, :cond_1d

    :cond_1c
    add-int/lit8 v8, v8, 0x1

    .line 53
    :cond_1d
    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_1e

    const/4 v1, 0x2

    new-array v10, v1, [F

    .line 54
    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v1

    const/16 v17, 0x0

    aput v1, v10, v17

    const/4 v1, 0x1

    aput v6, v10, v1

    const-string/jumbo v1, "translationX"

    invoke-static {v1, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v8, v17

    const/4 v10, 0x1

    goto :goto_6

    :cond_1e
    const/16 v17, 0x0

    move/from16 v10, v17

    :goto_6
    if-eqz v2, :cond_1f

    add-int/lit8 v1, v10, 0x1

    const/4 v2, 0x2

    new-array v11, v2, [F

    .line 55
    invoke-virtual {v7}, Landroid/view/View;->getTranslationY()F

    move-result v2

    aput v2, v11, v17

    const/4 v2, 0x1

    aput v6, v11, v2

    const-string/jumbo v2, "translationY"

    invoke-static {v2, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v8, v10

    move v10, v1

    :cond_1f
    if-nez v3, :cond_21

    if-eqz v5, :cond_20

    goto :goto_7

    :cond_20
    const/4 v1, 0x1

    goto :goto_8

    .line 56
    :cond_21
    :goto_7
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 57
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2, v2, v4, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 58
    sget-object v4, Landroid/transition/ChangeBounds;->sRectEvaluator:Landroid/animation/RectEvaluator;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    const/4 v1, 0x1

    aput-object v3, v5, v1

    const-string v2, "clipBounds"

    invoke-static {v2, v4, v5}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v8, v10

    .line 59
    :goto_8
    invoke-static {v7, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 60
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_22

    .line 61
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 62
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 63
    new-instance v1, Landroid/transition/ChangeBounds$2;

    invoke-direct {v1, v0, v3}, Landroid/transition/ChangeBounds$2;-><init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;)V

    .line 64
    invoke-virtual {v0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 65
    :cond_22
    new-instance v1, Landroid/transition/ChangeBounds$3;

    invoke-direct {v1, v0, v7}, Landroid/transition/ChangeBounds$3;-><init>(Landroid/transition/ChangeBounds;Landroid/view/View;)V

    invoke-virtual {v2, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v2

    :cond_23
    const/4 v1, 0x0

    return-object v1

    :cond_24
    :goto_9
    const/4 v1, 0x0

    return-object v1

    :cond_25
    :goto_a
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public setReparent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    return-void
.end method

.method public setResizeClip(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    return-void
.end method
