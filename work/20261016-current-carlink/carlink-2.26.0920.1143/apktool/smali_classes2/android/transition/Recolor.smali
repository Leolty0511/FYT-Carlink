.class public Landroid/transition/Recolor;
.super Landroid/transition/Transition;
.source "SourceFile"


# static fields
.field private static final PROPNAME_BACKGROUND:Ljava/lang/String; = "android:recolor:background"

.field private static final PROPNAME_TEXT_COLOR:Ljava/lang/String; = "android:recolor:textColor"


# direct methods
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
    .locals 3

    .line 1
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 2
    .line 3
    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "android:recolor:background"

    .line 10
    .line 11
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 15
    .line 16
    instance-of v1, v0, Landroid/widget/TextView;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object p1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 21
    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "android:recolor:textColor"

    .line 33
    .line 34
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/transition/Recolor;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/transition/Recolor;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 9

    .line 1
    const/4 p1, 0x0

    .line 2
    if-eqz p2, :cond_2

    .line 3
    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    goto/16 :goto_0

    .line 7
    .line 8
    :cond_0
    iget-object v0, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 9
    .line 10
    iget-object v1, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 11
    .line 12
    const-string v2, "android:recolor:background"

    .line 13
    .line 14
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    iget-object v3, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 21
    .line 22
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    instance-of v3, v1, Landroid/graphics/drawable/ColorDrawable;

    .line 29
    .line 30
    const/4 v4, 0x1

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x2

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    instance-of v3, v2, Landroid/graphics/drawable/ColorDrawable;

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    .line 40
    .line 41
    move-object v3, v2

    .line 42
    check-cast v3, Landroid/graphics/drawable/ColorDrawable;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    if-eq v7, v8, :cond_1

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 59
    .line 60
    .line 61
    new-array p1, v6, [I

    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    aput p2, p1, v5

    .line 68
    .line 69
    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    aput p2, p1, v4

    .line 74
    .line 75
    const-string p2, "color"

    .line 76
    .line 77
    invoke-static {v2, p2, p1}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    return-object p1

    .line 82
    :cond_1
    instance-of v1, v0, Landroid/widget/TextView;

    .line 83
    .line 84
    if-eqz v1, :cond_2

    .line 85
    .line 86
    check-cast v0, Landroid/widget/TextView;

    .line 87
    .line 88
    iget-object p2, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 89
    .line 90
    const-string v1, "android:recolor:textColor"

    .line 91
    .line 92
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    check-cast p2, Ljava/lang/Integer;

    .line 97
    .line 98
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    iget-object p3, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 103
    .line 104
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p3

    .line 108
    check-cast p3, Ljava/lang/Integer;

    .line 109
    .line 110
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 111
    .line 112
    .line 113
    move-result p3

    .line 114
    if-eq p2, p3, :cond_2

    .line 115
    .line 116
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    .line 118
    .line 119
    new-array p1, v6, [I

    .line 120
    .line 121
    aput p2, p1, v5

    .line 122
    .line 123
    aput p3, p1, v4

    .line 124
    .line 125
    const-string/jumbo p2, "textColor"

    .line 126
    .line 127
    .line 128
    invoke-static {v0, p2, p1}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    :cond_2
    :goto_0
    return-object p1
.end method
