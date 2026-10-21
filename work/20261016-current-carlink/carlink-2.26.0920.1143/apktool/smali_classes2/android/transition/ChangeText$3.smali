.class Landroid/transition/ChangeText$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


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

.field final synthetic val$endColor:I

.field final synthetic val$endSelectionEnd:I

.field final synthetic val$endSelectionStart:I

.field final synthetic val$endText:Ljava/lang/CharSequence;

.field final synthetic val$startText:Ljava/lang/CharSequence;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/transition/ChangeText;Ljava/lang/CharSequence;Landroid/widget/TextView;Ljava/lang/CharSequence;III)V
    .locals 0

    iput-object p1, p0, Landroid/transition/ChangeText$3;->this$0:Landroid/transition/ChangeText;

    iput-object p2, p0, Landroid/transition/ChangeText$3;->val$startText:Ljava/lang/CharSequence;

    iput-object p3, p0, Landroid/transition/ChangeText$3;->val$view:Landroid/widget/TextView;

    iput-object p4, p0, Landroid/transition/ChangeText$3;->val$endText:Ljava/lang/CharSequence;

    iput p5, p0, Landroid/transition/ChangeText$3;->val$endSelectionStart:I

    iput p6, p0, Landroid/transition/ChangeText$3;->val$endSelectionEnd:I

    iput p7, p0, Landroid/transition/ChangeText$3;->val$endColor:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroid/transition/ChangeText$3;->val$startText:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iget-object v0, p0, Landroid/transition/ChangeText$3;->val$view:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Landroid/transition/ChangeText$3;->val$view:Landroid/widget/TextView;

    .line 16
    .line 17
    iget-object v0, p0, Landroid/transition/ChangeText$3;->val$endText:Ljava/lang/CharSequence;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Landroid/transition/ChangeText$3;->val$view:Landroid/widget/TextView;

    .line 23
    .line 24
    instance-of v0, p1, Landroid/widget/EditText;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Landroid/transition/ChangeText$3;->this$0:Landroid/transition/ChangeText;

    .line 29
    .line 30
    check-cast p1, Landroid/widget/EditText;

    .line 31
    .line 32
    iget v1, p0, Landroid/transition/ChangeText$3;->val$endSelectionStart:I

    .line 33
    .line 34
    iget v2, p0, Landroid/transition/ChangeText$3;->val$endSelectionEnd:I

    .line 35
    .line 36
    invoke-static {v0, p1, v1, v2}, Landroid/transition/ChangeText;->access$000(Landroid/transition/ChangeText;Landroid/widget/EditText;II)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object p1, p0, Landroid/transition/ChangeText$3;->val$view:Landroid/widget/TextView;

    .line 40
    .line 41
    iget v0, p0, Landroid/transition/ChangeText$3;->val$endColor:I

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
