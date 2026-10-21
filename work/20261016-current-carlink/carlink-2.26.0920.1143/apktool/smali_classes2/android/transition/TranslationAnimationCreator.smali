.class Landroid/transition/TranslationAnimationCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;
    .locals 12

    .line 1
    move-object v1, p0

    .line 2
    move-object v0, p1

    .line 3
    move/from16 v2, p6

    .line 4
    .line 5
    move/from16 v3, p7

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    .line 8
    .line 9
    .line 10
    move-result v5

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    .line 12
    .line 13
    .line 14
    move-result v6

    .line 15
    iget-object v4, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 16
    .line 17
    const v7, 0x1020458

    .line 18
    .line 19
    .line 20
    invoke-virtual {v4, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, [I

    .line 25
    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    aget v7, v4, v7

    .line 30
    .line 31
    sub-int/2addr v7, p2

    .line 32
    int-to-float v7, v7

    .line 33
    add-float/2addr v7, v5

    .line 34
    const/4 v8, 0x1

    .line 35
    aget v4, v4, v8

    .line 36
    .line 37
    sub-int/2addr v4, p3

    .line 38
    int-to-float v4, v4

    .line 39
    add-float/2addr v4, v6

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move/from16 v7, p4

    .line 42
    .line 43
    move/from16 v4, p5

    .line 44
    .line 45
    :goto_0
    sub-float v8, v7, v5

    .line 46
    .line 47
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    add-int/2addr v8, p2

    .line 52
    sub-float v9, v4, v6

    .line 53
    .line 54
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    add-int/2addr v9, p3

    .line 59
    invoke-virtual {p0, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 63
    .line 64
    .line 65
    cmpl-float v10, v7, v2

    .line 66
    .line 67
    if-nez v10, :cond_1

    .line 68
    .line 69
    cmpl-float v10, v4, v3

    .line 70
    .line 71
    if-nez v10, :cond_1

    .line 72
    .line 73
    const/4 v0, 0x0

    .line 74
    return-object v0

    .line 75
    :cond_1
    new-instance v10, Landroid/graphics/Path;

    .line 76
    .line 77
    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v10, v7, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v10, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 84
    .line 85
    .line 86
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 87
    .line 88
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 89
    .line 90
    invoke-static {p0, v2, v3, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 91
    .line 92
    .line 93
    move-result-object v10

    .line 94
    new-instance v11, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;

    .line 95
    .line 96
    iget-object v2, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 97
    .line 98
    const/4 v7, 0x0

    .line 99
    move-object v0, v11

    .line 100
    move-object v1, p0

    .line 101
    move v3, v8

    .line 102
    move v4, v9

    .line 103
    invoke-direct/range {v0 .. v7}, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;-><init>(Landroid/view/View;Landroid/view/View;IIFFLandroid/transition/TranslationAnimationCreator$1;)V

    .line 104
    .line 105
    .line 106
    move-object/from16 v0, p9

    .line 107
    .line 108
    invoke-virtual {v0, v11}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v10, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v10, v11}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 115
    .line 116
    .line 117
    move-object/from16 v0, p8

    .line 118
    .line 119
    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 120
    .line 121
    .line 122
    return-object v10
.end method
