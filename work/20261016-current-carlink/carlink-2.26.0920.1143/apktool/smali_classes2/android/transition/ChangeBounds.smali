.class public Landroid/transition/ChangeBounds;
.super Landroid/transition/Transition;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/ChangeBounds$ViewBounds;
    }
.end annotation


# static fields
.field private static final BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "ChangeBounds"

.field private static final POSITION_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeBounds:bounds"

.field private static final PROPNAME_CLIP:Ljava/lang/String; = "android:changeBounds:clip"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeBounds:parent"

.field private static final PROPNAME_WINDOW_X:Ljava/lang/String; = "android:changeBounds:windowX"

.field private static final PROPNAME_WINDOW_Y:Ljava/lang/String; = "android:changeBounds:windowY"

.field private static final TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOP_LEFT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static sRectEvaluator:Landroid/animation/RectEvaluator;

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field mReparent:Z

.field mResizeClip:Z

.field tempLocation:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "android:changeBounds:windowX"

    .line 2
    .line 3
    const-string v1, "android:changeBounds:windowY"

    .line 4
    .line 5
    const-string v2, "android:changeBounds:bounds"

    .line 6
    .line 7
    const-string v3, "android:changeBounds:clip"

    .line 8
    .line 9
    const-string v4, "android:changeBounds:parent"

    .line 10
    .line 11
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Landroid/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    .line 16
    .line 17
    new-instance v0, Landroid/transition/ChangeBounds$1;

    .line 18
    .line 19
    const-string v1, "boundsOrigin"

    .line 20
    .line 21
    const-class v2, Landroid/graphics/PointF;

    .line 22
    .line 23
    invoke-direct {v0, v2, v1}, Landroid/transition/ChangeBounds$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Landroid/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    .line 27
    .line 28
    new-instance v0, Landroid/transition/ChangeBounds$2;

    .line 29
    .line 30
    const-string/jumbo v1, "topLeft"

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v2, v1}, Landroid/transition/ChangeBounds$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Landroid/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    .line 37
    .line 38
    new-instance v0, Landroid/transition/ChangeBounds$3;

    .line 39
    .line 40
    const-string v3, "bottomRight"

    .line 41
    .line 42
    invoke-direct {v0, v2, v3}, Landroid/transition/ChangeBounds$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    .line 46
    .line 47
    new-instance v0, Landroid/transition/ChangeBounds$4;

    .line 48
    .line 49
    invoke-direct {v0, v2, v3}, Landroid/transition/ChangeBounds$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sput-object v0, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    .line 53
    .line 54
    new-instance v0, Landroid/transition/ChangeBounds$5;

    .line 55
    .line 56
    invoke-direct {v0, v2, v1}, Landroid/transition/ChangeBounds$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Landroid/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    .line 60
    .line 61
    new-instance v0, Landroid/transition/ChangeBounds$6;

    .line 62
    .line 63
    const-string v1, "position"

    .line 64
    .line 65
    invoke-direct {v0, v2, v1}, Landroid/transition/ChangeBounds$6;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    sput-object v0, Landroid/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    .line 69
    .line 70
    new-instance v0, Landroid/animation/RectEvaluator;

    .line 71
    .line 72
    invoke-direct {v0}, Landroid/animation/RectEvaluator;-><init>()V

    .line 73
    .line 74
    .line 75
    sput-object v0, Landroid/transition/ChangeBounds;->sRectEvaluator:Landroid/animation/RectEvaluator;

    .line 76
    .line 77
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

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 6
    iput-object v0, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    .line 8
    iput-boolean v0, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    .line 9
    sget-object v1, Lcom/android/internal/R$styleable;->ChangeBounds:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    invoke-virtual {p0, p2}, Landroid/transition/ChangeBounds;->setResizeClip(Z)V

    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 7

    .line 1
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    :cond_0
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 22
    .line 23
    new-instance v2, Landroid/graphics/Rect;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 42
    .line 43
    .line 44
    const-string v3, "android:changeBounds:bounds"

    .line 45
    .line 46
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 50
    .line 51
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const-string v3, "android:changeBounds:parent"

    .line 58
    .line 59
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    iget-boolean v1, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    .line 63
    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 67
    .line 68
    iget-object v2, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 74
    .line 75
    iget-object v2, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    .line 76
    .line 77
    const/4 v3, 0x0

    .line 78
    aget v2, v2, v3

    .line 79
    .line 80
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    const-string v3, "android:changeBounds:windowX"

    .line 85
    .line 86
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 90
    .line 91
    iget-object v2, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    .line 92
    .line 93
    const/4 v3, 0x1

    .line 94
    aget v2, v2, v3

    .line 95
    .line 96
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    const-string v3, "android:changeBounds:windowY"

    .line 101
    .line 102
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    :cond_1
    iget-boolean v1, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    .line 106
    .line 107
    if-eqz v1, :cond_2

    .line 108
    .line 109
    iget-object p1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 110
    .line 111
    const-string v1, "android:changeBounds:clip"

    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    :cond_2
    return-void
.end method

.method private parentMatches(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {p0, p1, v1}, Landroid/transition/Transition;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    if-ne p1, p2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v1, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object p1, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 19
    .line 20
    if-ne p2, p1, :cond_0

    .line 21
    .line 22
    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/transition/ChangeBounds;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/transition/ChangeBounds;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 18

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v1, p3

    .line 6
    .line 7
    if-eqz v0, :cond_1b

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_c

    .line 12
    .line 13
    :cond_0
    iget-object v3, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 14
    .line 15
    iget-object v4, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 16
    .line 17
    const-string v5, "android:changeBounds:parent"

    .line 18
    .line 19
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Landroid/view/ViewGroup;

    .line 24
    .line 25
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Landroid/view/ViewGroup;

    .line 30
    .line 31
    if-eqz v3, :cond_1a

    .line 32
    .line 33
    if-nez v4, :cond_1

    .line 34
    .line 35
    goto/16 :goto_b

    .line 36
    .line 37
    :cond_1
    iget-object v9, v1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 38
    .line 39
    invoke-direct {v8, v3, v4}, Landroid/transition/ChangeBounds;->parentMatches(Landroid/view/View;Landroid/view/View;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_17

    .line 44
    .line 45
    iget-object v3, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 46
    .line 47
    const-string v5, "android:changeBounds:bounds"

    .line 48
    .line 49
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Landroid/graphics/Rect;

    .line 54
    .line 55
    iget-object v6, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 56
    .line 57
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    check-cast v5, Landroid/graphics/Rect;

    .line 62
    .line 63
    iget v6, v3, Landroid/graphics/Rect;->left:I

    .line 64
    .line 65
    iget v7, v5, Landroid/graphics/Rect;->left:I

    .line 66
    .line 67
    iget v11, v3, Landroid/graphics/Rect;->top:I

    .line 68
    .line 69
    iget v12, v5, Landroid/graphics/Rect;->top:I

    .line 70
    .line 71
    iget v13, v3, Landroid/graphics/Rect;->right:I

    .line 72
    .line 73
    iget v14, v5, Landroid/graphics/Rect;->right:I

    .line 74
    .line 75
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 76
    .line 77
    iget v15, v5, Landroid/graphics/Rect;->bottom:I

    .line 78
    .line 79
    sub-int v5, v13, v6

    .line 80
    .line 81
    sub-int v10, v3, v11

    .line 82
    .line 83
    sub-int v4, v14, v7

    .line 84
    .line 85
    sub-int v2, v15, v12

    .line 86
    .line 87
    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 88
    .line 89
    move-object/from16 v16, v9

    .line 90
    .line 91
    const-string v9, "android:changeBounds:clip"

    .line 92
    .line 93
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Landroid/graphics/Rect;

    .line 98
    .line 99
    iget-object v1, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 100
    .line 101
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    move-object v9, v1

    .line 106
    check-cast v9, Landroid/graphics/Rect;

    .line 107
    .line 108
    if-eqz v5, :cond_2

    .line 109
    .line 110
    if-nez v10, :cond_3

    .line 111
    .line 112
    :cond_2
    if-eqz v4, :cond_7

    .line 113
    .line 114
    if-eqz v2, :cond_7

    .line 115
    .line 116
    :cond_3
    if-ne v6, v7, :cond_5

    .line 117
    .line 118
    if-eq v11, v12, :cond_4

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_4
    const/4 v1, 0x0

    .line 122
    goto :goto_1

    .line 123
    :cond_5
    :goto_0
    const/4 v1, 0x1

    .line 124
    :goto_1
    if-ne v13, v14, :cond_6

    .line 125
    .line 126
    if-eq v3, v15, :cond_8

    .line 127
    .line 128
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_7
    const/4 v1, 0x0

    .line 132
    :cond_8
    :goto_2
    if-eqz v0, :cond_9

    .line 133
    .line 134
    invoke-virtual {v0, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v17

    .line 138
    if-eqz v17, :cond_a

    .line 139
    .line 140
    :cond_9
    if-nez v0, :cond_b

    .line 141
    .line 142
    if-eqz v9, :cond_b

    .line 143
    .line 144
    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 145
    .line 146
    :cond_b
    if-lez v1, :cond_18

    .line 147
    .line 148
    move-object/from16 p1, v9

    .line 149
    .line 150
    iget-boolean v9, v8, Landroid/transition/ChangeBounds;->mResizeClip:Z

    .line 151
    .line 152
    move-object/from16 p2, v0

    .line 153
    .line 154
    const/4 v0, 0x2

    .line 155
    if-nez v9, :cond_10

    .line 156
    .line 157
    move-object/from16 v9, v16

    .line 158
    .line 159
    invoke-virtual {v9, v6, v11, v13, v3}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 160
    .line 161
    .line 162
    if-ne v1, v0, :cond_d

    .line 163
    .line 164
    if-ne v5, v4, :cond_c

    .line 165
    .line 166
    if-ne v10, v2, :cond_c

    .line 167
    .line 168
    invoke-virtual/range {p0 .. p0}, Landroid/transition/Transition;->getPathMotion()Landroid/transition/PathMotion;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    int-to-float v1, v6

    .line 173
    int-to-float v2, v11

    .line 174
    int-to-float v3, v7

    .line 175
    int-to-float v4, v12

    .line 176
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    sget-object v1, Landroid/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    .line 181
    .line 182
    const/4 v2, 0x0

    .line 183
    invoke-static {v9, v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    goto/16 :goto_9

    .line 188
    .line 189
    :cond_c
    new-instance v1, Landroid/transition/ChangeBounds$ViewBounds;

    .line 190
    .line 191
    invoke-direct {v1, v9}, Landroid/transition/ChangeBounds$ViewBounds;-><init>(Landroid/view/View;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual/range {p0 .. p0}, Landroid/transition/Transition;->getPathMotion()Landroid/transition/PathMotion;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    int-to-float v4, v6

    .line 199
    int-to-float v5, v11

    .line 200
    int-to-float v6, v7

    .line 201
    int-to-float v7, v12

    .line 202
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    sget-object v4, Landroid/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    .line 207
    .line 208
    const/4 v5, 0x0

    .line 209
    invoke-static {v1, v4, v5, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-virtual/range {p0 .. p0}, Landroid/transition/Transition;->getPathMotion()Landroid/transition/PathMotion;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    int-to-float v6, v13

    .line 218
    int-to-float v3, v3

    .line 219
    int-to-float v7, v14

    .line 220
    int-to-float v10, v15

    .line 221
    invoke-virtual {v4, v6, v3, v7, v10}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    sget-object v4, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    .line 226
    .line 227
    invoke-static {v1, v4, v5, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    new-instance v4, Landroid/animation/AnimatorSet;

    .line 232
    .line 233
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 234
    .line 235
    .line 236
    new-array v0, v0, [Landroid/animation/Animator;

    .line 237
    .line 238
    const/4 v5, 0x0

    .line 239
    aput-object v2, v0, v5

    .line 240
    .line 241
    const/4 v2, 0x1

    .line 242
    aput-object v3, v0, v2

    .line 243
    .line 244
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 245
    .line 246
    .line 247
    new-instance v0, Landroid/transition/ChangeBounds$7;

    .line 248
    .line 249
    invoke-direct {v0, v8, v1}, Landroid/transition/ChangeBounds$7;-><init>(Landroid/transition/ChangeBounds;Landroid/transition/ChangeBounds$ViewBounds;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v4, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 253
    .line 254
    .line 255
    move-object v0, v4

    .line 256
    goto/16 :goto_9

    .line 257
    .line 258
    :cond_d
    if-ne v6, v7, :cond_f

    .line 259
    .line 260
    if-eq v11, v12, :cond_e

    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/transition/Transition;->getPathMotion()Landroid/transition/PathMotion;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    int-to-float v1, v13

    .line 268
    int-to-float v2, v3

    .line 269
    int-to-float v3, v14

    .line 270
    int-to-float v4, v15

    .line 271
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    sget-object v1, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    .line 276
    .line 277
    const/4 v2, 0x0

    .line 278
    invoke-static {v9, v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    goto/16 :goto_9

    .line 283
    .line 284
    :cond_f
    :goto_3
    const/4 v2, 0x0

    .line 285
    invoke-virtual/range {p0 .. p0}, Landroid/transition/Transition;->getPathMotion()Landroid/transition/PathMotion;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    int-to-float v1, v6

    .line 290
    int-to-float v3, v11

    .line 291
    int-to-float v4, v7

    .line 292
    int-to-float v5, v12

    .line 293
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    sget-object v1, Landroid/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    .line 298
    .line 299
    invoke-static {v9, v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    goto/16 :goto_9

    .line 304
    .line 305
    :cond_10
    move-object/from16 v9, v16

    .line 306
    .line 307
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    .line 312
    .line 313
    .line 314
    move-result v3

    .line 315
    add-int/2addr v1, v6

    .line 316
    add-int/2addr v3, v11

    .line 317
    invoke-virtual {v9, v6, v11, v1, v3}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 318
    .line 319
    .line 320
    if-ne v6, v7, :cond_12

    .line 321
    .line 322
    if-eq v11, v12, :cond_11

    .line 323
    .line 324
    goto :goto_4

    .line 325
    :cond_11
    const/4 v11, 0x0

    .line 326
    goto :goto_5

    .line 327
    :cond_12
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/transition/Transition;->getPathMotion()Landroid/transition/PathMotion;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    int-to-float v3, v6

    .line 332
    int-to-float v6, v11

    .line 333
    int-to-float v11, v7

    .line 334
    int-to-float v13, v12

    .line 335
    invoke-virtual {v1, v3, v6, v11, v13}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    sget-object v3, Landroid/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    .line 340
    .line 341
    const/4 v6, 0x0

    .line 342
    invoke-static {v9, v3, v6, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    move-object v11, v1

    .line 347
    :goto_5
    if-nez p2, :cond_13

    .line 348
    .line 349
    new-instance v1, Landroid/graphics/Rect;

    .line 350
    .line 351
    const/4 v3, 0x0

    .line 352
    invoke-direct {v1, v3, v3, v5, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 353
    .line 354
    .line 355
    goto :goto_6

    .line 356
    :cond_13
    const/4 v3, 0x0

    .line 357
    move-object/from16 v1, p2

    .line 358
    .line 359
    :goto_6
    if-nez p1, :cond_14

    .line 360
    .line 361
    new-instance v5, Landroid/graphics/Rect;

    .line 362
    .line 363
    invoke-direct {v5, v3, v3, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 364
    .line 365
    .line 366
    goto :goto_7

    .line 367
    :cond_14
    move-object/from16 v5, p1

    .line 368
    .line 369
    :goto_7
    invoke-virtual {v1, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    if-nez v2, :cond_15

    .line 374
    .line 375
    invoke-virtual {v9, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 376
    .line 377
    .line 378
    sget-object v2, Landroid/transition/ChangeBounds;->sRectEvaluator:Landroid/animation/RectEvaluator;

    .line 379
    .line 380
    new-array v0, v0, [Ljava/lang/Object;

    .line 381
    .line 382
    aput-object v1, v0, v3

    .line 383
    .line 384
    const/4 v1, 0x1

    .line 385
    aput-object v5, v0, v1

    .line 386
    .line 387
    const-string v1, "clipBounds"

    .line 388
    .line 389
    invoke-static {v9, v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    .line 390
    .line 391
    .line 392
    move-result-object v10

    .line 393
    new-instance v13, Landroid/transition/ChangeBounds$8;

    .line 394
    .line 395
    move-object v0, v13

    .line 396
    move-object/from16 v1, p0

    .line 397
    .line 398
    move-object v2, v9

    .line 399
    move-object/from16 v3, p1

    .line 400
    .line 401
    move v4, v7

    .line 402
    move v5, v12

    .line 403
    move v6, v14

    .line 404
    move v7, v15

    .line 405
    invoke-direct/range {v0 .. v7}, Landroid/transition/ChangeBounds$8;-><init>(Landroid/transition/ChangeBounds;Landroid/view/View;Landroid/graphics/Rect;IIII)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v10, v13}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 409
    .line 410
    .line 411
    move-object v2, v10

    .line 412
    goto :goto_8

    .line 413
    :cond_15
    const/4 v2, 0x0

    .line 414
    :goto_8
    invoke-static {v11, v2}, Landroid/transition/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    :goto_9
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    instance-of v1, v1, Landroid/view/ViewGroup;

    .line 423
    .line 424
    if-eqz v1, :cond_16

    .line 425
    .line 426
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    check-cast v1, Landroid/view/ViewGroup;

    .line 431
    .line 432
    const/4 v2, 0x1

    .line 433
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 434
    .line 435
    .line 436
    new-instance v2, Landroid/transition/ChangeBounds$9;

    .line 437
    .line 438
    invoke-direct {v2, v8, v1}, Landroid/transition/ChangeBounds$9;-><init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v8, v2}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 442
    .line 443
    .line 444
    :cond_16
    return-object v0

    .line 445
    :cond_17
    iget-object v2, v8, Landroid/transition/ChangeBounds;->tempLocation:[I

    .line 446
    .line 447
    move-object/from16 v3, p1

    .line 448
    .line 449
    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 450
    .line 451
    .line 452
    iget-object v2, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 453
    .line 454
    const-string v4, "android:changeBounds:windowX"

    .line 455
    .line 456
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    check-cast v2, Ljava/lang/Integer;

    .line 461
    .line 462
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 463
    .line 464
    .line 465
    move-result v2

    .line 466
    iget-object v5, v8, Landroid/transition/ChangeBounds;->tempLocation:[I

    .line 467
    .line 468
    const/4 v6, 0x0

    .line 469
    aget v5, v5, v6

    .line 470
    .line 471
    sub-int/2addr v2, v5

    .line 472
    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 473
    .line 474
    const-string v5, "android:changeBounds:windowY"

    .line 475
    .line 476
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    check-cast v0, Ljava/lang/Integer;

    .line 481
    .line 482
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 483
    .line 484
    .line 485
    move-result v0

    .line 486
    iget-object v6, v8, Landroid/transition/ChangeBounds;->tempLocation:[I

    .line 487
    .line 488
    const/4 v7, 0x1

    .line 489
    aget v6, v6, v7

    .line 490
    .line 491
    sub-int/2addr v0, v6

    .line 492
    iget-object v6, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 493
    .line 494
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v4

    .line 498
    check-cast v4, Ljava/lang/Integer;

    .line 499
    .line 500
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 501
    .line 502
    .line 503
    move-result v4

    .line 504
    iget-object v6, v8, Landroid/transition/ChangeBounds;->tempLocation:[I

    .line 505
    .line 506
    const/4 v7, 0x0

    .line 507
    aget v6, v6, v7

    .line 508
    .line 509
    sub-int/2addr v4, v6

    .line 510
    iget-object v1, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 511
    .line 512
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    check-cast v1, Ljava/lang/Integer;

    .line 517
    .line 518
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 519
    .line 520
    .line 521
    move-result v1

    .line 522
    iget-object v5, v8, Landroid/transition/ChangeBounds;->tempLocation:[I

    .line 523
    .line 524
    const/4 v6, 0x1

    .line 525
    aget v5, v5, v6

    .line 526
    .line 527
    sub-int/2addr v1, v5

    .line 528
    if-ne v2, v4, :cond_19

    .line 529
    .line 530
    if-eq v0, v1, :cond_18

    .line 531
    .line 532
    goto :goto_a

    .line 533
    :cond_18
    const/4 v0, 0x0

    .line 534
    return-object v0

    .line 535
    :cond_19
    :goto_a
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 536
    .line 537
    .line 538
    move-result v5

    .line 539
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 540
    .line 541
    .line 542
    move-result v6

    .line 543
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 544
    .line 545
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 546
    .line 547
    .line 548
    move-result-object v7

    .line 549
    new-instance v10, Landroid/graphics/Canvas;

    .line 550
    .line 551
    invoke-direct {v10, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v9, v10}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 555
    .line 556
    .line 557
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    .line 558
    .line 559
    invoke-direct {v10, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 560
    .line 561
    .line 562
    add-int/2addr v5, v2

    .line 563
    add-int/2addr v6, v0

    .line 564
    invoke-virtual {v10, v2, v0, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v9}, Landroid/view/View;->getTransitionAlpha()F

    .line 568
    .line 569
    .line 570
    move-result v5

    .line 571
    const/4 v6, 0x0

    .line 572
    invoke-virtual {v9, v6}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 573
    .line 574
    .line 575
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 576
    .line 577
    .line 578
    move-result-object v6

    .line 579
    invoke-virtual {v6, v10}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 580
    .line 581
    .line 582
    invoke-virtual/range {p0 .. p0}, Landroid/transition/Transition;->getPathMotion()Landroid/transition/PathMotion;

    .line 583
    .line 584
    .line 585
    move-result-object v6

    .line 586
    int-to-float v2, v2

    .line 587
    int-to-float v0, v0

    .line 588
    int-to-float v4, v4

    .line 589
    int-to-float v1, v1

    .line 590
    invoke-virtual {v6, v2, v0, v4, v1}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    sget-object v1, Landroid/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    .line 595
    .line 596
    const/4 v2, 0x0

    .line 597
    invoke-static {v1, v2, v0}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    const/4 v1, 0x1

    .line 602
    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    .line 603
    .line 604
    const/4 v2, 0x0

    .line 605
    aput-object v0, v1, v2

    .line 606
    .line 607
    invoke-static {v10, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 608
    .line 609
    .line 610
    move-result-object v6

    .line 611
    new-instance v7, Landroid/transition/ChangeBounds$10;

    .line 612
    .line 613
    move-object v0, v7

    .line 614
    move-object/from16 v1, p0

    .line 615
    .line 616
    move-object/from16 v2, p1

    .line 617
    .line 618
    move-object v3, v10

    .line 619
    move-object v4, v9

    .line 620
    invoke-direct/range {v0 .. v5}, Landroid/transition/ChangeBounds$10;-><init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v6, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 624
    .line 625
    .line 626
    return-object v6

    .line 627
    :cond_1a
    :goto_b
    const/4 v0, 0x0

    .line 628
    return-object v0

    .line 629
    :cond_1b
    :goto_c
    const/4 v0, 0x0

    .line 630
    return-object v0
.end method

.method public getResizeClip()Z
    .locals 1

    iget-boolean v0, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public setReparent(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    return-void
.end method

.method public setResizeClip(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    return-void
.end method
