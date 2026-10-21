.class Landroid/transition/ChangeText$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/ChangeText;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/transition/ChangeText;

.field final synthetic val$startColor:I

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/transition/ChangeText;Landroid/widget/TextView;I)V
    .locals 0

    iput-object p1, p0, Landroid/transition/ChangeText$2;->this$0:Landroid/transition/ChangeText;

    iput-object p2, p0, Landroid/transition/ChangeText$2;->val$view:Landroid/widget/TextView;

    iput p3, p0, Landroid/transition/ChangeText$2;->val$startColor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Landroid/transition/ChangeText$2;->val$view:Landroid/widget/TextView;

    .line 12
    .line 13
    shl-int/lit8 p1, p1, 0x18

    .line 14
    .line 15
    iget v1, p0, Landroid/transition/ChangeText$2;->val$startColor:I

    .line 16
    .line 17
    const v2, 0xffffff

    .line 18
    .line 19
    .line 20
    and-int/2addr v1, v2

    .line 21
    or-int/2addr p1, v1

    .line 22
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
