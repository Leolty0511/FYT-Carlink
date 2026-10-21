.class public Landroid/transition/Rotate;
.super Landroid/transition/Transition;
.source "SourceFile"


# static fields
.field private static final PROPNAME_ROTATION:Ljava/lang/String; = "android:rotate:rotation"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 2

    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object p1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "android:rotate:rotation"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 2

    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object p1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "android:rotate:rotation"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 3

    .line 1
    const/4 p1, 0x0

    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 8
    .line 9
    iget-object p2, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 10
    .line 11
    const-string v1, "android:rotate:rotation"

    .line 12
    .line 13
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Ljava/lang/Float;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    iget-object p3, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    check-cast p3, Ljava/lang/Float;

    .line 30
    .line 31
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    cmpl-float v1, p2, p3

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0, p2}, Landroid/view/View;->setRotation(F)V

    .line 40
    .line 41
    .line 42
    sget-object p1, Landroid/view/View;->ROTATION:Landroid/util/Property;

    .line 43
    .line 44
    const/4 v1, 0x2

    .line 45
    new-array v1, v1, [F

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    aput p2, v1, v2

    .line 49
    .line 50
    const/4 p2, 0x1

    .line 51
    aput p3, v1, p2

    .line 52
    .line 53
    invoke-static {v0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    :cond_1
    :goto_0
    return-object p1
.end method
