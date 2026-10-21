.class public Landroid/transition/ChangeClipBounds;
.super Landroid/transition/Transition;
.source "SourceFile"


# static fields
.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:clipBounds:bounds"

.field private static final PROPNAME_CLIP:Ljava/lang/String; = "android:clipBounds:clip"

.field private static final TAG:Ljava/lang/String; = "ChangeTransform"

.field private static final sTransitionProperties:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "android:clipBounds:clip"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroid/transition/ChangeClipBounds;->sTransitionProperties:[Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 4

    .line 1
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 17
    .line 18
    const-string v3, "android:clipBounds:clip"

    .line 19
    .line 20
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    new-instance v1, Landroid/graphics/Rect;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 40
    .line 41
    const-string v0, "android:clipBounds:bounds"

    .line 42
    .line 43
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/transition/ChangeClipBounds;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/transition/ChangeClipBounds;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 6

    .line 1
    const/4 p1, 0x0

    .line 2
    if-eqz p2, :cond_6

    .line 3
    .line 4
    if-eqz p3, :cond_6

    .line 5
    .line 6
    iget-object v0, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 7
    .line 8
    const-string v1, "android:clipBounds:clip"

    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_6

    .line 15
    .line 16
    iget-object v0, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_0
    iget-object v0, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/graphics/Rect;

    .line 32
    .line 33
    iget-object v2, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 34
    .line 35
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroid/graphics/Rect;

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    const/4 v3, 0x0

    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    move v4, v2

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move v4, v3

    .line 48
    :goto_0
    if-nez v0, :cond_2

    .line 49
    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    return-object p1

    .line 53
    :cond_2
    const-string v5, "android:clipBounds:bounds"

    .line 54
    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    iget-object p2, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 58
    .line 59
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    move-object v0, p2

    .line 64
    check-cast v0, Landroid/graphics/Rect;

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    if-nez v1, :cond_4

    .line 68
    .line 69
    iget-object p2, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 70
    .line 71
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    move-object v1, p2

    .line 76
    check-cast v1, Landroid/graphics/Rect;

    .line 77
    .line 78
    :cond_4
    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-eqz p2, :cond_5

    .line 83
    .line 84
    return-object p1

    .line 85
    :cond_5
    iget-object p1, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 88
    .line 89
    .line 90
    new-instance p1, Landroid/animation/RectEvaluator;

    .line 91
    .line 92
    new-instance p2, Landroid/graphics/Rect;

    .line 93
    .line 94
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-direct {p1, p2}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    .line 98
    .line 99
    .line 100
    iget-object p2, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 101
    .line 102
    const/4 v5, 0x2

    .line 103
    new-array v5, v5, [Ljava/lang/Object;

    .line 104
    .line 105
    aput-object v0, v5, v3

    .line 106
    .line 107
    aput-object v1, v5, v2

    .line 108
    .line 109
    const-string v0, "clipBounds"

    .line 110
    .line 111
    invoke-static {p2, v0, p1, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-eqz v4, :cond_6

    .line 116
    .line 117
    iget-object p2, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 118
    .line 119
    new-instance p3, Landroid/transition/ChangeClipBounds$1;

    .line 120
    .line 121
    invoke-direct {p3, p0, p2}, Landroid/transition/ChangeClipBounds$1;-><init>(Landroid/transition/ChangeClipBounds;Landroid/view/View;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 125
    .line 126
    .line 127
    :cond_6
    :goto_2
    return-object p1
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/transition/ChangeClipBounds;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method
