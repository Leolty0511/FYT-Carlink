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
.field public final synthetic this$0:Landroid/transition/ChangeText;

.field public final synthetic val$startColor:I

.field public final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/transition/ChangeText;Landroid/widget/TextView;I)V
    .locals 0

    .line 1
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

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Landroid/transition/ChangeText$2;->val$view:Landroid/widget/TextView;

    shl-int/lit8 p1, p1, 0x18

    iget v1, p0, Landroid/transition/ChangeText$2;->val$startColor:I

    const/high16 v2, 0xff0000

    and-int/2addr v2, v1

    or-int/2addr p1, v2

    const v2, 0xff00

    and-int/2addr v2, v1

    or-int/2addr p1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
