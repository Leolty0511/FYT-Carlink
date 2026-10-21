.class public Landroid/animation/AnimatorInflater;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SEQUENTIALLY:I = 0x1

.field private static final TOGETHER:I = 0x0

.field private static final VALUE_TYPE_COLOR:I = 0x4

.field private static final VALUE_TYPE_CUSTOM:I = 0x5

.field private static final VALUE_TYPE_FLOAT:I = 0x0

.field private static final VALUE_TYPE_INT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/animation/Animator;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;I)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;I)Landroid/animation/Animator;
    .locals 7

    .line 2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    .line 3
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ne v4, v5, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_7

    :cond_1
    const/4 v5, 0x1

    if-eq v4, v5, :cond_7

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "objectAnimator"

    .line 5
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6
    invoke-static {p0, p2}, Landroid/animation/AnimatorInflater;->loadObjectAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    goto :goto_1

    :cond_3
    const-string v4, "animator"

    .line 7
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 8
    invoke-static {p0, p2, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "set"

    .line 9
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 10
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 11
    sget-object v4, Li/a;->AnimatorSet:[I

    invoke-virtual {p0, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 12
    invoke-virtual {v4, v6, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 13
    invoke-static {p0, p1, p2, v3, v5}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;I)Landroid/animation/Animator;

    .line 14
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :goto_1
    if-eqz p3, :cond_0

    if-nez v2, :cond_5

    .line 15
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    :cond_5
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown animator name: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    if-eqz p3, :cond_a

    if-eqz v2, :cond_a

    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/animation/Animator;

    .line 19
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/Animator;

    add-int/lit8 v0, v6, 0x1

    .line 20
    aput-object p2, p0, v6

    move v6, v0

    goto :goto_2

    :cond_8
    if-nez p4, :cond_9

    .line 21
    invoke-virtual {p3, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_3

    .line 22
    :cond_9
    invoke-virtual {p3, p0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    :cond_a
    :goto_3
    return-object v3
.end method

.method public static loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    .locals 4

    const-string v0, "Can\'t load animation resource ID #0x"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 2
    invoke-static {p0, v1}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/animation/Animator;

    move-result-object p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    :try_start_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2, p0}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 6
    throw v2

    :catch_1
    move-exception p0

    .line 7
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2, p0}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 9
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_1

    .line 10
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw p0
.end method

.method private static loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 17

    move-object/from16 v0, p0

    .line 11
    sget-object v1, Li/a;->Animator:[I

    move-object/from16 v2, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0x12c

    .line 12
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    int-to-long v3, v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 13
    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    int-to-long v7, v7

    const/4 v9, 0x7

    .line 14
    invoke-virtual {v1, v9, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    if-nez p2, :cond_0

    .line 15
    new-instance v10, Landroid/animation/ValueAnimator;

    invoke-direct {v10}, Landroid/animation/ValueAnimator;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v10, p2

    :goto_0
    const/4 v11, 0x6

    if-nez v9, :cond_1

    move v9, v2

    goto :goto_1

    :cond_1
    move v9, v6

    :goto_1
    const/4 v12, 0x5

    .line 16
    invoke-virtual {v1, v12}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    if-eqz v13, :cond_2

    move v14, v2

    goto :goto_2

    :cond_2
    move v14, v6

    :goto_2
    if-eqz v14, :cond_3

    .line 17
    iget v13, v13, Landroid/util/TypedValue;->type:I

    goto :goto_3

    :cond_3
    move v13, v6

    .line 18
    :goto_3
    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    if-eqz v15, :cond_4

    move/from16 v16, v2

    goto :goto_4

    :cond_4
    move/from16 v16, v6

    :goto_4
    if-eqz v16, :cond_5

    .line 19
    iget v15, v15, Landroid/util/TypedValue;->type:I

    goto :goto_5

    :cond_5
    move v15, v6

    :goto_5
    const/16 v2, 0x1f

    const/16 v6, 0x1c

    if-eqz v14, :cond_6

    if-lt v13, v6, :cond_6

    if-le v13, v2, :cond_7

    :cond_6
    if-eqz v16, :cond_8

    if-lt v15, v6, :cond_8

    if-gt v15, v2, :cond_8

    .line 20
    :cond_7
    new-instance v9, Landroid/animation/ArgbEvaluator;

    invoke-direct {v9}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v10, v9}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    const/4 v9, 0x0

    :cond_8
    const/4 v2, 0x0

    if-eqz v9, :cond_e

    if-eqz v14, :cond_c

    if-ne v13, v12, :cond_9

    .line 21
    invoke-virtual {v1, v12, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    goto :goto_6

    .line 22
    :cond_9
    invoke-virtual {v1, v12, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    :goto_6
    if-eqz v16, :cond_b

    if-ne v15, v12, :cond_a

    .line 23
    invoke-virtual {v1, v11, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    goto :goto_7

    .line 24
    :cond_a
    invoke-virtual {v1, v11, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    :goto_7
    new-array v5, v5, [F

    const/4 v9, 0x0

    aput v6, v5, v9

    const/4 v13, 0x1

    aput v2, v5, v13

    .line 25
    invoke-virtual {v10, v5}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto/16 :goto_d

    :cond_b
    const/4 v9, 0x0

    const/4 v13, 0x1

    new-array v2, v13, [F

    aput v6, v2, v9

    .line 26
    invoke-virtual {v10, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto/16 :goto_d

    :cond_c
    const/4 v9, 0x0

    const/4 v13, 0x1

    if-ne v15, v12, :cond_d

    .line 27
    invoke-virtual {v1, v11, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    goto :goto_8

    .line 28
    :cond_d
    invoke-virtual {v1, v11, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    :goto_8
    new-array v5, v13, [F

    aput v2, v5, v9

    .line 29
    invoke-virtual {v10, v5}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto/16 :goto_d

    :cond_e
    const/4 v9, 0x0

    if-eqz v14, :cond_14

    if-ne v13, v12, :cond_f

    .line 30
    invoke-virtual {v1, v12, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v13

    float-to-int v13, v13

    goto :goto_9

    :cond_f
    if-lt v13, v6, :cond_10

    const/16 v14, 0x1f

    if-gt v13, v14, :cond_10

    .line 31
    invoke-virtual {v1, v12, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v13

    goto :goto_9

    .line 32
    :cond_10
    invoke-virtual {v1, v12, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    :goto_9
    if-eqz v16, :cond_13

    if-ne v15, v12, :cond_11

    .line 33
    invoke-virtual {v1, v11, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    goto :goto_a

    :cond_11
    if-lt v15, v6, :cond_12

    const/16 v2, 0x1f

    if-gt v15, v2, :cond_12

    .line 34
    invoke-virtual {v1, v11, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    goto :goto_a

    .line 35
    :cond_12
    invoke-virtual {v1, v11, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    :goto_a
    new-array v5, v5, [I

    aput v13, v5, v9

    const/4 v6, 0x1

    aput v2, v5, v6

    .line 36
    invoke-virtual {v10, v5}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_d

    :cond_13
    const/4 v6, 0x1

    new-array v2, v6, [I

    aput v13, v2, v9

    .line 37
    invoke-virtual {v10, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_d

    :cond_14
    if-eqz v16, :cond_17

    if-ne v15, v12, :cond_15

    .line 38
    invoke-virtual {v1, v11, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    :goto_b
    const/4 v5, 0x1

    goto :goto_c

    :cond_15
    if-lt v15, v6, :cond_16

    const/16 v2, 0x1f

    if-gt v15, v2, :cond_16

    .line 39
    invoke-virtual {v1, v11, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    goto :goto_b

    .line 40
    :cond_16
    invoke-virtual {v1, v11, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    goto :goto_b

    :goto_c
    new-array v6, v5, [I

    aput v2, v6, v9

    .line 41
    invoke-virtual {v10, v6}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 42
    :cond_17
    :goto_d
    invoke-virtual {v10, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 43
    invoke-virtual {v10, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const/4 v2, 0x3

    .line 44
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 45
    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v10, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    :cond_18
    const/4 v2, 0x4

    .line 46
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x1

    .line 47
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v10, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    :cond_19
    const/4 v2, 0x0

    .line 48
    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-lez v2, :cond_1a

    .line 49
    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 50
    :cond_1a
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v10
.end method

.method private static loadObjectAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/animation/ObjectAnimator;
    .locals 2

    .line 1
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 2
    invoke-static {p0, p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 3
    sget-object v1, Li/a;->PropertyAnimator:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method
