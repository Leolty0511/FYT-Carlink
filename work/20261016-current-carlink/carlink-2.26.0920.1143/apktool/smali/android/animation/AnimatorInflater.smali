.class public Landroid/animation/AnimatorInflater;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/AnimatorInflater$PathDataEvaluator;
    }
.end annotation


# static fields
.field private static final DBG_ANIMATOR_INFLATER:Z = false

.field private static final SEQUENTIALLY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AnimatorInflater"

.field private static final TOGETHER:I = 0x0

.field private static final VALUE_TYPE_COLOR:I = 0x3

.field private static final VALUE_TYPE_FLOAT:I = 0x0

.field private static final VALUE_TYPE_INT:I = 0x1

.field private static final VALUE_TYPE_PATH:I = 0x2

.field private static final VALUE_TYPE_UNDEFINED:I = 0x4

.field private static final sTmpTypedValue:Landroid/util/TypedValue;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;
    .locals 7

    .line 1
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method private static createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p6

    .line 2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    const/4 v14, 0x0

    move-object v0, v14

    move-object v15, v0

    .line 3
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    const/4 v6, 0x0

    if-ne v1, v2, :cond_1

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v13, :cond_a

    :cond_1
    const/4 v2, 0x1

    if-eq v1, v2, :cond_a

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "objectAnimator"

    .line 5
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6
    invoke-static {v7, v8, v10, v12}, Landroid/animation/AnimatorInflater;->loadObjectAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto/16 :goto_2

    :cond_3
    const-string v3, "animator"

    .line 7
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 8
    invoke-static {v7, v8, v10, v14, v12}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto/16 :goto_2

    :cond_4
    const-string/jumbo v3, "set"

    .line 9
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 10
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz v8, :cond_5

    .line 11
    sget-object v0, Lcom/android/internal/R$styleable;->AnimatorSet:[I

    invoke-virtual {v8, v10, v0, v6, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_1

    .line 12
    :cond_5
    sget-object v0, Lcom/android/internal/R$styleable;->AnimatorSet:[I

    invoke-virtual {v7, v10, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    :goto_1
    move-object v4, v0

    .line 13
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/animation/Animator;->appendChangingConfigurations(I)V

    .line 14
    invoke-virtual {v4, v6, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v17, v4

    move-object v4, v5

    move-object/from16 v18, v5

    move/from16 v5, v16

    move/from16 v16, v6

    move/from16 v6, p6

    .line 15
    invoke-static/range {v0 .. v6}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    .line 16
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    move/from16 v6, v16

    move-object/from16 v0, v18

    goto :goto_2

    :cond_6
    const-string/jumbo v3, "propertyValuesHolder"

    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 18
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 19
    invoke-static {v7, v8, v9, v1}, Landroid/animation/AnimatorInflater;->loadValues(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    .line 20
    instance-of v3, v0, Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_7

    .line 21
    move-object v3, v0

    check-cast v3, Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :cond_7
    move v6, v2

    :goto_2
    if-eqz v11, :cond_0

    if-nez v6, :cond_0

    if-nez v15, :cond_8

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v1

    .line 23
    :cond_8
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 24
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown animator name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-static {v9, v1}, Landroid/accessibilityservice/c;->p(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move/from16 v16, v6

    if-eqz v11, :cond_d

    if-eqz v15, :cond_d

    .line 27
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/animation/Animator;

    .line 28
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move/from16 v6, v16

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    add-int/lit8 v4, v6, 0x1

    .line 29
    aput-object v3, v1, v6

    move v6, v4

    goto :goto_3

    :cond_b
    if-nez p5, :cond_c

    .line 30
    invoke-virtual {v11, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_4

    .line 31
    :cond_c
    invoke-virtual {v11, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    :cond_d
    :goto_4
    return-object v0
.end method

.method private static createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 19
    .line 20
    if-ne p0, v0, :cond_1

    .line 21
    .line 22
    invoke-static {p1}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-static {p1}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    :goto_0
    return-object p0
.end method

.method private static createStateListAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/animation/StateListAnimator;
    .locals 10

    .line 1
    new-instance v0, Landroid/animation/StateListAnimator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/animation/StateListAnimator;-><init>()V

    .line 4
    .line 5
    .line 6
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eq v1, v2, :cond_7

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    if-eq v1, v2, :cond_1

    .line 15
    .line 16
    const/4 v2, 0x3

    .line 17
    if-eq v1, v2, :cond_7

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const-string/jumbo v1, "item"

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    new-array v2, v1, [I

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    const/4 v4, 0x0

    .line 41
    move v5, v3

    .line 42
    move v6, v5

    .line 43
    :goto_1
    if-ge v5, v1, :cond_4

    .line 44
    .line 45
    invoke-interface {p2, v5}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    const v8, 0x10101cd

    .line 50
    .line 51
    .line 52
    if-ne v7, v8, :cond_2

    .line 53
    .line 54
    invoke-interface {p2, v5, v3}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    invoke-static {p0, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    goto :goto_3

    .line 63
    :cond_2
    add-int/lit8 v8, v6, 0x1

    .line 64
    .line 65
    invoke-interface {p2, v5, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    if-eqz v9, :cond_3

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    neg-int v7, v7

    .line 73
    :goto_2
    aput v7, v2, v6

    .line 74
    .line 75
    move v6, v8

    .line 76
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    if-nez v4, :cond_5

    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    const/high16 v4, 0x3f800000    # 1.0f

    .line 90
    .line 91
    invoke-static {v1, v3, p1, v4}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    :cond_5
    if-eqz v4, :cond_6

    .line 96
    .line 97
    invoke-static {v2, v6}, Landroid/util/StateSet;->trimStateSet([II)[I

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1, v4}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_6
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    .line 106
    .line 107
    const-string p1, "animation state item must have a valid animation"

    .line 108
    .line 109
    invoke-direct {p0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p0

    .line 113
    :cond_7
    return-object v0
.end method

.method private static distributeKeyframes([Landroid/animation/Keyframe;FII)V
    .locals 2

    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-float/2addr p1, v0

    :goto_0
    if-gt p2, p3, :cond_0

    aget-object v0, p0, p2

    add-int/lit8 v1, p2, -0x1

    aget-object v1, p0, v1

    invoke-virtual {v1}, Landroid/animation/Keyframe;->getFraction()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/animation/Keyframe;->setFraction(F)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static dumpKeyframes([Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_2

    .line 7
    :cond_0
    const-string v0, "AnimatorInflater"

    .line 8
    .line 9
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    array-length p1, p0

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, p1, :cond_3

    .line 15
    .line 16
    aget-object v2, p0, v1

    .line 17
    .line 18
    check-cast v2, Landroid/animation/Keyframe;

    .line 19
    .line 20
    const-string v3, "Keyframe "

    .line 21
    .line 22
    const-string v4, ": fraction "

    .line 23
    .line 24
    invoke-static {v3, v1, v4}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const/4 v5, 0x0

    .line 33
    cmpg-float v4, v4, v5

    .line 34
    .line 35
    const-string/jumbo v5, "null"

    .line 36
    .line 37
    .line 38
    if-gez v4, :cond_1

    .line 39
    .line 40
    move-object v4, v5

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v4, ", , value : "

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/animation/Keyframe;->hasValue()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    :cond_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    add-int/lit8 v1, v1, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    :goto_2
    return-void
.end method

.method private static getChangingConfigs(Landroid/content/res/Resources;I)I
    .locals 2

    .line 1
    sget-object v0, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 6
    .line 7
    .line 8
    iget p0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method private static getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;
    .locals 11

    .line 1
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v3, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v3, v2

    .line 12
    :goto_0
    if-eqz v3, :cond_1

    .line 13
    .line 14
    iget v0, v0, Landroid/util/TypedValue;->type:I

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move v0, v2

    .line 18
    :goto_1
    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    if-eqz v4, :cond_2

    .line 23
    .line 24
    move v5, v1

    .line 25
    goto :goto_2

    .line 26
    :cond_2
    move v5, v2

    .line 27
    :goto_2
    if-eqz v5, :cond_3

    .line 28
    .line 29
    iget v4, v4, Landroid/util/TypedValue;->type:I

    .line 30
    .line 31
    goto :goto_3

    .line 32
    :cond_3
    move v4, v2

    .line 33
    :goto_3
    const/4 v6, 0x4

    .line 34
    const/4 v7, 0x3

    .line 35
    if-ne p1, v6, :cond_7

    .line 36
    .line 37
    if-eqz v3, :cond_4

    .line 38
    .line 39
    invoke-static {v0}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_5

    .line 44
    .line 45
    :cond_4
    if-eqz v5, :cond_6

    .line 46
    .line 47
    invoke-static {v4}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_6

    .line 52
    .line 53
    :cond_5
    move p1, v7

    .line 54
    goto :goto_4

    .line 55
    :cond_6
    move p1, v2

    .line 56
    :cond_7
    :goto_4
    if-nez p1, :cond_8

    .line 57
    .line 58
    move v6, v1

    .line 59
    goto :goto_5

    .line 60
    :cond_8
    move v6, v2

    .line 61
    :goto_5
    const/4 v8, 0x2

    .line 62
    const/4 v9, 0x0

    .line 63
    if-ne p1, v8, :cond_f

    .line 64
    .line 65
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    if-nez p1, :cond_9

    .line 74
    .line 75
    move-object p2, v9

    .line 76
    goto :goto_6

    .line 77
    :cond_9
    new-instance p2, Landroid/util/PathParser$PathData;

    .line 78
    .line 79
    invoke-direct {p2, p1}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :goto_6
    if-nez p0, :cond_a

    .line 83
    .line 84
    move-object p3, v9

    .line 85
    goto :goto_7

    .line 86
    :cond_a
    new-instance p3, Landroid/util/PathParser$PathData;

    .line 87
    .line 88
    invoke-direct {p3, p0}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :goto_7
    if-nez p2, :cond_b

    .line 92
    .line 93
    if-eqz p3, :cond_20

    .line 94
    .line 95
    :cond_b
    if-eqz p2, :cond_e

    .line 96
    .line 97
    new-instance v0, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    .line 98
    .line 99
    invoke-direct {v0, v9}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>(Landroid/animation/AnimatorInflater$1;)V

    .line 100
    .line 101
    .line 102
    if-eqz p3, :cond_d

    .line 103
    .line 104
    invoke-static {p2, p3}, Landroid/util/PathParser;->canMorph(Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-eqz v3, :cond_c

    .line 109
    .line 110
    new-array p0, v8, [Ljava/lang/Object;

    .line 111
    .line 112
    aput-object p2, p0, v2

    .line 113
    .line 114
    aput-object p3, p0, v1

    .line 115
    .line 116
    invoke-static {p4, v0, p0}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    goto :goto_8

    .line 121
    :cond_c
    new-instance p2, Landroid/view/InflateException;

    .line 122
    .line 123
    const-string p3, " Can\'t morph from "

    .line 124
    .line 125
    const-string p4, " to "

    .line 126
    .line 127
    invoke-static {p3, p1, p4, p0}, Landroid/accessibilityservice/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-direct {p2, p0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p2

    .line 135
    :cond_d
    new-array p0, v1, [Ljava/lang/Object;

    .line 136
    .line 137
    aput-object p2, p0, v2

    .line 138
    .line 139
    invoke-static {p4, v0, p0}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    :goto_8
    move-object v9, p0

    .line 144
    goto/16 :goto_11

    .line 145
    .line 146
    :cond_e
    if-eqz p3, :cond_20

    .line 147
    .line 148
    new-instance p0, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    .line 149
    .line 150
    invoke-direct {p0, v9}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>(Landroid/animation/AnimatorInflater$1;)V

    .line 151
    .line 152
    .line 153
    new-array p1, v1, [Ljava/lang/Object;

    .line 154
    .line 155
    aput-object p3, p1, v2

    .line 156
    .line 157
    invoke-static {p4, p0, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    .line 158
    .line 159
    .line 160
    move-result-object v9

    .line 161
    goto/16 :goto_11

    .line 162
    .line 163
    :cond_f
    if-ne p1, v7, :cond_10

    .line 164
    .line 165
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    goto :goto_9

    .line 170
    :cond_10
    move-object p1, v9

    .line 171
    :goto_9
    const/4 v7, 0x5

    .line 172
    const/4 v10, 0x0

    .line 173
    if-eqz v6, :cond_16

    .line 174
    .line 175
    if-eqz v3, :cond_14

    .line 176
    .line 177
    if-ne v0, v7, :cond_11

    .line 178
    .line 179
    invoke-virtual {p0, p2, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 180
    .line 181
    .line 182
    move-result p2

    .line 183
    goto :goto_a

    .line 184
    :cond_11
    invoke-virtual {p0, p2, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 185
    .line 186
    .line 187
    move-result p2

    .line 188
    :goto_a
    if-eqz v5, :cond_13

    .line 189
    .line 190
    if-ne v4, v7, :cond_12

    .line 191
    .line 192
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 193
    .line 194
    .line 195
    move-result p0

    .line 196
    goto :goto_b

    .line 197
    :cond_12
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 198
    .line 199
    .line 200
    move-result p0

    .line 201
    :goto_b
    new-array p3, v8, [F

    .line 202
    .line 203
    aput p2, p3, v2

    .line 204
    .line 205
    aput p0, p3, v1

    .line 206
    .line 207
    invoke-static {p4, p3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    goto/16 :goto_10

    .line 212
    .line 213
    :cond_13
    new-array p0, v1, [F

    .line 214
    .line 215
    aput p2, p0, v2

    .line 216
    .line 217
    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    goto/16 :goto_10

    .line 222
    .line 223
    :cond_14
    if-ne v4, v7, :cond_15

    .line 224
    .line 225
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 226
    .line 227
    .line 228
    move-result p0

    .line 229
    goto :goto_c

    .line 230
    :cond_15
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 231
    .line 232
    .line 233
    move-result p0

    .line 234
    :goto_c
    new-array p2, v1, [F

    .line 235
    .line 236
    aput p0, p2, v2

    .line 237
    .line 238
    invoke-static {p4, p2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    goto/16 :goto_10

    .line 243
    .line 244
    :cond_16
    if-eqz v3, :cond_1c

    .line 245
    .line 246
    if-ne v0, v7, :cond_17

    .line 247
    .line 248
    invoke-virtual {p0, p2, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 249
    .line 250
    .line 251
    move-result p2

    .line 252
    float-to-int p2, p2

    .line 253
    goto :goto_d

    .line 254
    :cond_17
    invoke-static {v0}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    if-eqz v0, :cond_18

    .line 259
    .line 260
    invoke-virtual {p0, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 261
    .line 262
    .line 263
    move-result p2

    .line 264
    goto :goto_d

    .line 265
    :cond_18
    invoke-virtual {p0, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 266
    .line 267
    .line 268
    move-result p2

    .line 269
    :goto_d
    if-eqz v5, :cond_1b

    .line 270
    .line 271
    if-ne v4, v7, :cond_19

    .line 272
    .line 273
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 274
    .line 275
    .line 276
    move-result p0

    .line 277
    float-to-int p0, p0

    .line 278
    goto :goto_e

    .line 279
    :cond_19
    invoke-static {v4}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    if-eqz v0, :cond_1a

    .line 284
    .line 285
    invoke-virtual {p0, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 286
    .line 287
    .line 288
    move-result p0

    .line 289
    goto :goto_e

    .line 290
    :cond_1a
    invoke-virtual {p0, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 291
    .line 292
    .line 293
    move-result p0

    .line 294
    :goto_e
    new-array p3, v8, [I

    .line 295
    .line 296
    aput p2, p3, v2

    .line 297
    .line 298
    aput p0, p3, v1

    .line 299
    .line 300
    invoke-static {p4, p3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    .line 301
    .line 302
    .line 303
    move-result-object p0

    .line 304
    goto :goto_10

    .line 305
    :cond_1b
    new-array p0, v1, [I

    .line 306
    .line 307
    aput p2, p0, v2

    .line 308
    .line 309
    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    .line 310
    .line 311
    .line 312
    move-result-object p0

    .line 313
    goto :goto_10

    .line 314
    :cond_1c
    if-eqz v5, :cond_1f

    .line 315
    .line 316
    if-ne v4, v7, :cond_1d

    .line 317
    .line 318
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 319
    .line 320
    .line 321
    move-result p0

    .line 322
    float-to-int p0, p0

    .line 323
    goto :goto_f

    .line 324
    :cond_1d
    invoke-static {v4}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    .line 325
    .line 326
    .line 327
    move-result p2

    .line 328
    if-eqz p2, :cond_1e

    .line 329
    .line 330
    invoke-virtual {p0, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 331
    .line 332
    .line 333
    move-result p0

    .line 334
    goto :goto_f

    .line 335
    :cond_1e
    invoke-virtual {p0, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 336
    .line 337
    .line 338
    move-result p0

    .line 339
    :goto_f
    new-array p2, v1, [I

    .line 340
    .line 341
    aput p0, p2, v2

    .line 342
    .line 343
    invoke-static {p4, p2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    .line 344
    .line 345
    .line 346
    move-result-object p0

    .line 347
    :goto_10
    move-object v9, p0

    .line 348
    :cond_1f
    if-eqz v9, :cond_20

    .line 349
    .line 350
    if-eqz p1, :cond_20

    .line 351
    .line 352
    invoke-virtual {v9, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 353
    .line 354
    .line 355
    :cond_20
    :goto_11
    return-object v9
.end method

.method private static inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    move v2, v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v2, v1

    .line 12
    :goto_0
    if-eqz v2, :cond_1

    .line 13
    .line 14
    iget p1, p1, Landroid/util/TypedValue;->type:I

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move p1, v1

    .line 18
    :goto_1
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_2

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_2
    move v0, v1

    .line 26
    :goto_2
    if-eqz v0, :cond_3

    .line 27
    .line 28
    iget p0, p0, Landroid/util/TypedValue;->type:I

    .line 29
    .line 30
    goto :goto_3

    .line 31
    :cond_3
    move p0, v1

    .line 32
    :goto_3
    if-eqz v2, :cond_4

    .line 33
    .line 34
    invoke-static {p1}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_5

    .line 39
    .line 40
    :cond_4
    if-eqz v0, :cond_6

    .line 41
    .line 42
    invoke-static {p0}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_6

    .line 47
    .line 48
    :cond_5
    const/4 v1, 0x3

    .line 49
    :cond_6
    return v1
.end method

.method private static inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    sget-object p0, Lcom/android/internal/R$styleable;->Keyframe:[I

    .line 5
    .line 6
    invoke-virtual {p1, p2, p0, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object p1, Lcom/android/internal/R$styleable;->Keyframe:[I

    .line 12
    .line 13
    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    const/4 p2, 0x1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move p2, v0

    .line 26
    :goto_1
    if-eqz p2, :cond_2

    .line 27
    .line 28
    iget p1, p1, Landroid/util/TypedValue;->type:I

    .line 29
    .line 30
    invoke-static {p1}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    const/4 v0, 0x3

    .line 37
    :cond_2
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    .line 39
    .line 40
    return v0
.end method

.method private static isColorType(I)Z
    .locals 1

    const/16 v0, 0x1c

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    invoke-static {p0, p1, p2, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;
    .locals 6

    const-string v0, "Can\'t load animation resource ID #0x"

    .line 3
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;

    move-result-object v1

    int-to-long v2, p2

    .line 4
    invoke-virtual {v1, v2, v3, p0, p1}, Landroid/content/res/ConfigurationBoundResourceCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    if-eqz v4, :cond_0

    return-object v4

    :cond_0
    const/4 v4, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 6
    invoke-static {p0, p1, v4, p3}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 7
    invoke-static {p0, p2}, Landroid/animation/AnimatorInflater;->getChangingConfigs(Landroid/content/res/Resources;I)I

    move-result v5

    invoke-virtual {p3, v5}, Landroid/animation/Animator;->appendChangingConfigurations(I)V

    .line 8
    invoke-virtual {p3}, Landroid/animation/Animator;->createConstantState()Landroid/content/res/ConstantState;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 9
    invoke-virtual {v1, v2, v3, p1, v5}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v5, p0, p1}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object p0

    move-object p3, p0

    check-cast p3, Landroid/animation/Animator;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v4, :cond_2

    .line 11
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    return-object p3

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 12
    :try_start_1
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 15
    throw p1

    :catch_1
    move-exception p0

    .line 16
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 19
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v4, :cond_3

    .line 20
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3
    throw p0
.end method

.method private static loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 21
    sget-object v1, Lcom/android/internal/R$styleable;->Animator:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    goto :goto_0

    .line 22
    :cond_0
    sget-object v1, Lcom/android/internal/R$styleable;->Animator:[I

    invoke-virtual {p0, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    :goto_0
    if-eqz p3, :cond_2

    if-eqz p1, :cond_1

    .line 23
    sget-object v2, Lcom/android/internal/R$styleable;->PropertyAnimator:[I

    invoke-virtual {p1, p2, v2, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    goto :goto_1

    .line 24
    :cond_1
    sget-object v2, Lcom/android/internal/R$styleable;->PropertyAnimator:[I

    invoke-virtual {p0, p2, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 25
    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/animation/Animator;->appendChangingConfigurations(I)V

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    if-nez p3, :cond_3

    .line 26
    new-instance p3, Landroid/animation/ValueAnimator;

    invoke-direct {p3}, Landroid/animation/ValueAnimator;-><init>()V

    .line 27
    :cond_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/animation/Animator;->appendChangingConfigurations(I)V

    .line 28
    invoke-static {p3, v1, p2, p4}, Landroid/animation/AnimatorInflater;->parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;F)V

    .line 29
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    if-lez p4, :cond_5

    .line 30
    invoke-static {p0, p1, p4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    .line 31
    instance-of p1, p0, Landroid/view/animation/BaseInterpolator;

    if-eqz p1, :cond_4

    .line 32
    move-object p1, p0

    check-cast p1, Landroid/view/animation/BaseInterpolator;

    .line 33
    invoke-virtual {p1}, Landroid/view/animation/BaseInterpolator;->getChangingConfiguration()I

    move-result p1

    .line 34
    invoke-virtual {p3, p1}, Landroid/animation/Animator;->appendChangingConfigurations(I)V

    .line 35
    :cond_4
    invoke-virtual {p3, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 36
    :cond_5
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_6

    .line 37
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_6
    return-object p3
.end method

.method private static loadKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;I)Landroid/animation/Keyframe;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    sget-object v1, Lcom/android/internal/R$styleable;->Keyframe:[I

    .line 5
    .line 6
    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v1, Lcom/android/internal/R$styleable;->Keyframe:[I

    .line 12
    .line 13
    invoke-virtual {p0, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    :goto_0
    const/high16 v1, -0x40800000    # -1.0f

    .line 18
    .line 19
    const/4 v2, 0x3

    .line 20
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/4 v4, 0x1

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    move v5, v4

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v5, v0

    .line 34
    :goto_1
    const/4 v6, 0x4

    .line 35
    if-ne p3, v6, :cond_3

    .line 36
    .line 37
    if-eqz v5, :cond_2

    .line 38
    .line 39
    iget p3, v3, Landroid/util/TypedValue;->type:I

    .line 40
    .line 41
    invoke-static {p3}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    if-eqz p3, :cond_2

    .line 46
    .line 47
    move p3, v2

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    move p3, v0

    .line 50
    :cond_3
    :goto_2
    if-eqz v5, :cond_6

    .line 51
    .line 52
    if-eqz p3, :cond_5

    .line 53
    .line 54
    if-eq p3, v4, :cond_4

    .line 55
    .line 56
    if-eq p3, v2, :cond_4

    .line 57
    .line 58
    const/4 p3, 0x0

    .line 59
    goto :goto_3

    .line 60
    :cond_4
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 61
    .line 62
    .line 63
    move-result p3

    .line 64
    invoke-static {v1, p3}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    goto :goto_3

    .line 69
    :cond_5
    const/4 p3, 0x0

    .line 70
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    invoke-static {v1, p3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    goto :goto_3

    .line 79
    :cond_6
    if-nez p3, :cond_7

    .line 80
    .line 81
    invoke-static {v1}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    goto :goto_3

    .line 86
    :cond_7
    invoke-static {v1}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    :goto_3
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-lez v0, :cond_8

    .line 95
    .line 96
    invoke-static {p0, p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/view/animation/Interpolator;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p3, p0}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 101
    .line 102
    .line 103
    :cond_8
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    .line 105
    .line 106
    return-object p3
.end method

.method private static loadObjectAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;F)Landroid/animation/ObjectAnimator;
    .locals 1

    .line 1
    new-instance v0, Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, p2, v0, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method private static loadPvh(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, v0

    .line 3
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x3

    .line 8
    if-eq v2, v3, :cond_4

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    if-eq v2, v4, :cond_4

    .line 12
    .line 13
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string/jumbo v3, "keyframe"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    if-ne p4, v2, :cond_1

    .line 28
    .line 29
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 30
    .line 31
    .line 32
    move-result-object p4

    .line 33
    invoke-static {p0, p1, p4}, Landroid/animation/AnimatorInflater;->inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)I

    .line 34
    .line 35
    .line 36
    move-result p4

    .line 37
    :cond_1
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {p0, p1, v2, p4}, Landroid/animation/AnimatorInflater;->loadKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;I)Landroid/animation/Keyframe;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-eqz v2, :cond_3

    .line 46
    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    new-instance v1, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    :cond_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_4
    if-eqz v1, :cond_f

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-lez p0, :cond_f

    .line 68
    .line 69
    const/4 p1, 0x0

    .line 70
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    check-cast p2, Landroid/animation/Keyframe;

    .line 75
    .line 76
    add-int/lit8 v0, p0, -0x1

    .line 77
    .line 78
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Landroid/animation/Keyframe;

    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    const/high16 v4, 0x3f800000    # 1.0f

    .line 89
    .line 90
    cmpg-float v5, v2, v4

    .line 91
    .line 92
    const/4 v6, 0x0

    .line 93
    if-gez v5, :cond_6

    .line 94
    .line 95
    cmpg-float v2, v2, v6

    .line 96
    .line 97
    if-gez v2, :cond_5

    .line 98
    .line 99
    invoke-virtual {v0, v4}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    invoke-static {v0, v4}, Landroid/animation/AnimatorInflater;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    add-int/lit8 p0, p0, 0x1

    .line 115
    .line 116
    :cond_6
    :goto_1
    invoke-virtual {p2}, Landroid/animation/Keyframe;->getFraction()F

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    cmpl-float v2, v0, v6

    .line 121
    .line 122
    if-eqz v2, :cond_8

    .line 123
    .line 124
    cmpg-float v0, v0, v6

    .line 125
    .line 126
    if-gez v0, :cond_7

    .line 127
    .line 128
    invoke-virtual {p2, v6}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_7
    invoke-static {p2, v6}, Landroid/animation/AnimatorInflater;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    add-int/lit8 p0, p0, 0x1

    .line 140
    .line 141
    :cond_8
    :goto_2
    new-array p2, p0, [Landroid/animation/Keyframe;

    .line 142
    .line 143
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    :goto_3
    if-ge p1, p0, :cond_e

    .line 147
    .line 148
    aget-object v0, p2, p1

    .line 149
    .line 150
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    cmpg-float v1, v1, v6

    .line 155
    .line 156
    if-gez v1, :cond_d

    .line 157
    .line 158
    if-nez p1, :cond_9

    .line 159
    .line 160
    invoke-virtual {v0, v6}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 161
    .line 162
    .line 163
    goto :goto_6

    .line 164
    :cond_9
    add-int/lit8 v1, p0, -0x1

    .line 165
    .line 166
    if-ne p1, v1, :cond_a

    .line 167
    .line 168
    invoke-virtual {v0, v4}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 169
    .line 170
    .line 171
    goto :goto_6

    .line 172
    :cond_a
    add-int/lit8 v0, p1, 0x1

    .line 173
    .line 174
    move v2, p1

    .line 175
    :goto_4
    if-ge v0, v1, :cond_c

    .line 176
    .line 177
    aget-object v5, p2, v0

    .line 178
    .line 179
    invoke-virtual {v5}, Landroid/animation/Keyframe;->getFraction()F

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    cmpl-float v5, v5, v6

    .line 184
    .line 185
    if-ltz v5, :cond_b

    .line 186
    .line 187
    goto :goto_5

    .line 188
    :cond_b
    add-int/lit8 v2, v0, 0x1

    .line 189
    .line 190
    move v7, v2

    .line 191
    move v2, v0

    .line 192
    move v0, v7

    .line 193
    goto :goto_4

    .line 194
    :cond_c
    :goto_5
    add-int/lit8 v0, v2, 0x1

    .line 195
    .line 196
    aget-object v0, p2, v0

    .line 197
    .line 198
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    add-int/lit8 v1, p1, -0x1

    .line 203
    .line 204
    aget-object v1, p2, v1

    .line 205
    .line 206
    invoke-virtual {v1}, Landroid/animation/Keyframe;->getFraction()F

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    sub-float/2addr v0, v1

    .line 211
    invoke-static {p2, v0, p1, v2}, Landroid/animation/AnimatorInflater;->distributeKeyframes([Landroid/animation/Keyframe;FII)V

    .line 212
    .line 213
    .line 214
    :cond_d
    :goto_6
    add-int/lit8 p1, p1, 0x1

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_e
    invoke-static {p3, p2}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    if-ne p4, v3, :cond_f

    .line 222
    .line 223
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    invoke-virtual {v0, p0}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 228
    .line 229
    .line 230
    :cond_f
    return-object v0
.end method

.method public static loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;
    .locals 8

    .line 1
    const-string v0, "Can\'t load state list animator resource ID #0x"

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/res/Resources;->getStateListAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    int-to-long v4, p1

    .line 16
    invoke-virtual {v2, v4, v5, v1, v3}, Landroid/content/res/ConfigurationBoundResourceCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    check-cast v6, Landroid/animation/StateListAnimator;

    .line 21
    .line 22
    if-eqz v6, :cond_0

    .line 23
    .line 24
    return-object v6

    .line 25
    :cond_0
    const/4 v6, 0x0

    .line 26
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    invoke-static {p0, v6, v7}, Landroid/animation/AnimatorInflater;->createStateListAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/animation/StateListAnimator;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    invoke-static {v1, p1}, Landroid/animation/AnimatorInflater;->getChangingConfigs(Landroid/content/res/Resources;I)I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    invoke-virtual {p0, v7}, Landroid/animation/StateListAnimator;->appendChangingConfigurations(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/animation/StateListAnimator;->createConstantState()Landroid/content/res/ConstantState;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    if-eqz v7, :cond_1

    .line 52
    .line 53
    invoke-virtual {v2, v4, v5, v3, v7}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7, v1, v3}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Landroid/animation/StateListAnimator;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    :cond_1
    if-eqz v6, :cond_2

    .line 63
    .line 64
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 65
    .line 66
    .line 67
    :cond_2
    return-object p0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception p0

    .line 71
    :try_start_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    .line 72
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-direct {v1, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 93
    .line 94
    .line 95
    throw v1

    .line 96
    :catch_1
    move-exception p0

    .line 97
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    .line 98
    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-direct {v1, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 119
    .line 120
    .line 121
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :goto_0
    if-eqz v6, :cond_3

    .line 123
    .line 124
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 125
    .line 126
    .line 127
    :cond_3
    throw p0
.end method

.method private static loadValues(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, v0

    .line 3
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x3

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eq v2, v3, :cond_6

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    if-eq v2, v5, :cond_6

    .line 13
    .line 14
    const/4 v6, 0x2

    .line 15
    if-eq v2, v6, :cond_0

    .line 16
    .line 17
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string/jumbo v7, "propertyValuesHolder"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_5

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    sget-object v2, Lcom/android/internal/R$styleable;->PropertyValuesHolder:[I

    .line 37
    .line 38
    invoke-virtual {p1, p3, v2, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    sget-object v2, Lcom/android/internal/R$styleable;->PropertyValuesHolder:[I

    .line 44
    .line 45
    invoke-virtual {p0, p3, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const/4 v7, 0x4

    .line 54
    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    invoke-static {p0, p1, p2, v3, v6}, Landroid/animation/AnimatorInflater;->loadPvh(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    if-nez v7, :cond_2

    .line 63
    .line 64
    invoke-static {v2, v6, v4, v5, v3}, Landroid/animation/AnimatorInflater;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    :cond_2
    if-eqz v7, :cond_4

    .line 69
    .line 70
    if-nez v1, :cond_3

    .line 71
    .line 72
    new-instance v1, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    :cond_3
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    :cond_4
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    .line 82
    .line 83
    :cond_5
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_6
    if-eqz v1, :cond_7

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    new-array v0, p0, [Landroid/animation/PropertyValuesHolder;

    .line 94
    .line 95
    :goto_2
    if-ge v4, p0, :cond_7

    .line 96
    .line 97
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Landroid/animation/PropertyValuesHolder;

    .line 102
    .line 103
    aput-object p1, v0, v4

    .line 104
    .line 105
    add-int/lit8 v4, v4, 0x1

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_7
    return-object v0
.end method

.method private static parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;F)V
    .locals 11

    .line 1
    const/16 v0, 0x12c

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    int-to-long v2, v0

    .line 9
    const/4 v0, 0x2

    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    int-to-long v5, v0

    .line 16
    const/4 v0, 0x7

    .line 17
    const/4 v7, 0x4

    .line 18
    invoke-virtual {p1, v0, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v8, 0x6

    .line 23
    const/4 v9, 0x5

    .line 24
    if-ne v0, v7, :cond_0

    .line 25
    .line 26
    invoke-static {p1, v9, v8}, Landroid/animation/AnimatorInflater;->inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    :cond_0
    const-string v10, ""

    .line 31
    .line 32
    invoke-static {p1, v0, v9, v8, v10}, Landroid/animation/AnimatorInflater;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    if-eqz v8, :cond_1

    .line 37
    .line 38
    new-array v9, v1, [Landroid/animation/PropertyValuesHolder;

    .line 39
    .line 40
    aput-object v8, v9, v4

    .line 41
    .line 42
    invoke-virtual {p0, v9}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {p0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 49
    .line 50
    .line 51
    const/4 v2, 0x3

    .line 52
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_3

    .line 70
    .line 71
    invoke-virtual {p1, v7, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 76
    .line 77
    .line 78
    :cond_3
    if-eqz p2, :cond_4

    .line 79
    .line 80
    invoke-static {p0, p2, v0, p3}, Landroid/animation/AnimatorInflater;->setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;IF)V

    .line 81
    .line 82
    .line 83
    :cond_4
    return-void
.end method

.method private static setupAnimatorForPath(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;)Landroid/animation/TypeEvaluator;
    .locals 8

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const/4 v1, 0x6

    .line 7
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    move-object v3, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v3, Landroid/util/PathParser$PathData;

    .line 17
    .line 18
    invoke-direct {v3, v0}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    if-nez v1, :cond_1

    .line 22
    .line 23
    move-object v4, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    new-instance v4, Landroid/util/PathParser$PathData;

    .line 26
    .line 27
    invoke-direct {v4, v1}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :goto_1
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x1

    .line 32
    if-eqz v3, :cond_4

    .line 33
    .line 34
    if-eqz v4, :cond_3

    .line 35
    .line 36
    const/4 v7, 0x2

    .line 37
    new-array v7, v7, [Ljava/lang/Object;

    .line 38
    .line 39
    aput-object v3, v7, v5

    .line 40
    .line 41
    aput-object v4, v7, v6

    .line 42
    .line 43
    invoke-virtual {p0, v7}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v3, v4}, Landroid/util/PathParser;->canMorph(Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-eqz p0, :cond_2

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    new-instance p0, Landroid/view/InflateException;

    .line 54
    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p1, " Can\'t morph from "

    .line 68
    .line 69
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p1, " to "

    .line 76
    .line 77
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {p0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0

    .line 91
    :cond_3
    new-array p1, v6, [Ljava/lang/Object;

    .line 92
    .line 93
    aput-object v3, p1, v5

    .line 94
    .line 95
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :goto_2
    new-instance p0, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    .line 99
    .line 100
    invoke-direct {p0, v2}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>(Landroid/animation/AnimatorInflater$1;)V

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_4
    if-eqz v4, :cond_5

    .line 105
    .line 106
    new-array p1, v6, [Ljava/lang/Object;

    .line 107
    .line 108
    aput-object v4, p1, v5

    .line 109
    .line 110
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    new-instance p0, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    .line 114
    .line 115
    invoke-direct {p0, v2}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>(Landroid/animation/AnimatorInflater$1;)V

    .line 116
    .line 117
    .line 118
    :goto_3
    move-object v2, p0

    .line 119
    :cond_5
    return-object v2
.end method

.method private static setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;IF)V
    .locals 7

    .line 1
    check-cast p0, Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_9

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    const/4 v5, 0x3

    .line 17
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    if-eq p2, v3, :cond_0

    .line 22
    .line 23
    const/4 v6, 0x4

    .line 24
    if-ne p2, v6, :cond_1

    .line 25
    .line 26
    :cond_0
    move p2, v2

    .line 27
    :cond_1
    if-nez v4, :cond_3

    .line 28
    .line 29
    if-eqz v5, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    new-instance p0, Landroid/view/InflateException;

    .line 33
    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string p3, " propertyXName or propertyYName is needed for PathData"

    .line 40
    .line 41
    invoke-static {p1, p2, p3}, Landroid/accessibilityservice/c;->c(Landroid/content/res/TypedArray;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {p0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p0

    .line 49
    :cond_3
    :goto_0
    invoke-static {v1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const/high16 v1, 0x3f000000    # 0.5f

    .line 54
    .line 55
    mul-float/2addr p3, v1

    .line 56
    invoke-static {p1, p3}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;F)Landroid/animation/PathKeyframes;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-nez p2, :cond_4

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/animation/PathKeyframes;->createXFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p1}, Landroid/animation/PathKeyframes;->createYFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    goto :goto_1

    .line 71
    :cond_4
    invoke-virtual {p1}, Landroid/animation/PathKeyframes;->createXIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p1}, Landroid/animation/PathKeyframes;->createYIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    :goto_1
    const/4 p3, 0x0

    .line 80
    if-eqz v4, :cond_5

    .line 81
    .line 82
    invoke-static {v4, p2}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    goto :goto_2

    .line 87
    :cond_5
    move-object p2, p3

    .line 88
    :goto_2
    if-eqz v5, :cond_6

    .line 89
    .line 90
    invoke-static {v5, p1}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    :cond_6
    if-nez p2, :cond_7

    .line 95
    .line 96
    new-array p1, v0, [Landroid/animation/PropertyValuesHolder;

    .line 97
    .line 98
    aput-object p3, p1, v2

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_7
    if-nez p3, :cond_8

    .line 105
    .line 106
    new-array p1, v0, [Landroid/animation/PropertyValuesHolder;

    .line 107
    .line 108
    aput-object p2, p1, v2

    .line 109
    .line 110
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 111
    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_8
    new-array p1, v3, [Landroid/animation/PropertyValuesHolder;

    .line 115
    .line 116
    aput-object p2, p1, v2

    .line 117
    .line 118
    aput-object p3, p1, v0

    .line 119
    .line 120
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_9
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :goto_3
    return-void
.end method

.method private static setupValues(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;ZZIZI)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x5

    .line 6
    const/4 v5, 0x6

    .line 7
    if-eqz p2, :cond_5

    .line 8
    .line 9
    if-eqz p3, :cond_3

    .line 10
    .line 11
    if-ne p4, v4, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    :goto_0
    if-eqz p5, :cond_2

    .line 23
    .line 24
    if-ne p6, v4, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    :goto_1
    new-array p3, v0, [F

    .line 36
    .line 37
    aput p2, p3, v3

    .line 38
    .line 39
    aput p1, p3, v1

    .line 40
    .line 41
    invoke-virtual {p0, p3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_6

    .line 45
    .line 46
    :cond_2
    new-array p1, v1, [F

    .line 47
    .line 48
    aput p2, p1, v3

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_6

    .line 54
    .line 55
    :cond_3
    if-ne p6, v4, :cond_4

    .line 56
    .line 57
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    goto :goto_2

    .line 62
    :cond_4
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    :goto_2
    new-array p2, v1, [F

    .line 67
    .line 68
    aput p1, p2, v3

    .line 69
    .line 70
    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_6

    .line 74
    .line 75
    :cond_5
    if-eqz p3, :cond_b

    .line 76
    .line 77
    if-ne p4, v4, :cond_6

    .line 78
    .line 79
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    float-to-int p2, p2

    .line 84
    goto :goto_3

    .line 85
    :cond_6
    invoke-static {p4}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-eqz p2, :cond_7

    .line 90
    .line 91
    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    goto :goto_3

    .line 96
    :cond_7
    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    :goto_3
    if-eqz p5, :cond_a

    .line 101
    .line 102
    if-ne p6, v4, :cond_8

    .line 103
    .line 104
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    float-to-int p1, p1

    .line 109
    goto :goto_4

    .line 110
    :cond_8
    invoke-static {p6}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    .line 111
    .line 112
    .line 113
    move-result p3

    .line 114
    if-eqz p3, :cond_9

    .line 115
    .line 116
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    goto :goto_4

    .line 121
    :cond_9
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    :goto_4
    new-array p3, v0, [I

    .line 126
    .line 127
    aput p2, p3, v3

    .line 128
    .line 129
    aput p1, p3, v1

    .line 130
    .line 131
    invoke-virtual {p0, p3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 132
    .line 133
    .line 134
    goto :goto_6

    .line 135
    :cond_a
    new-array p1, v1, [I

    .line 136
    .line 137
    aput p2, p1, v3

    .line 138
    .line 139
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 140
    .line 141
    .line 142
    goto :goto_6

    .line 143
    :cond_b
    if-eqz p5, :cond_e

    .line 144
    .line 145
    if-ne p6, v4, :cond_c

    .line 146
    .line 147
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    float-to-int p1, p1

    .line 152
    goto :goto_5

    .line 153
    :cond_c
    invoke-static {p6}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    .line 154
    .line 155
    .line 156
    move-result p2

    .line 157
    if-eqz p2, :cond_d

    .line 158
    .line 159
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    goto :goto_5

    .line 164
    :cond_d
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    :goto_5
    new-array p2, v1, [I

    .line 169
    .line 170
    aput p1, p2, v3

    .line 171
    .line 172
    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 173
    .line 174
    .line 175
    :cond_e
    :goto_6
    return-void
.end method
