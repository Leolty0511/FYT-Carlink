.class Landroid/transition/ChangeText$6;
.super Landroid/transition/TransitionListenerAdapter;
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
.field mPausedColor:I

.field final synthetic this$0:Landroid/transition/ChangeText;

.field final synthetic val$endColor:I

.field final synthetic val$endSelectionEnd:I

.field final synthetic val$endSelectionStart:I

.field final synthetic val$endText:Ljava/lang/CharSequence;

.field final synthetic val$startSelectionEnd:I

.field final synthetic val$startSelectionStart:I

.field final synthetic val$startText:Ljava/lang/CharSequence;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/transition/ChangeText;Landroid/widget/TextView;Ljava/lang/CharSequence;IIILjava/lang/CharSequence;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/transition/ChangeText$6;->this$0:Landroid/transition/ChangeText;

    .line 2
    .line 3
    iput-object p2, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    .line 4
    .line 5
    iput-object p3, p0, Landroid/transition/ChangeText$6;->val$endText:Ljava/lang/CharSequence;

    .line 6
    .line 7
    iput p4, p0, Landroid/transition/ChangeText$6;->val$endSelectionStart:I

    .line 8
    .line 9
    iput p5, p0, Landroid/transition/ChangeText$6;->val$endSelectionEnd:I

    .line 10
    .line 11
    iput p6, p0, Landroid/transition/ChangeText$6;->val$endColor:I

    .line 12
    .line 13
    iput-object p7, p0, Landroid/transition/ChangeText$6;->val$startText:Ljava/lang/CharSequence;

    .line 14
    .line 15
    iput p8, p0, Landroid/transition/ChangeText$6;->val$startSelectionStart:I

    .line 16
    .line 17
    iput p9, p0, Landroid/transition/ChangeText$6;->val$startSelectionEnd:I

    .line 18
    .line 19
    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput p1, p0, Landroid/transition/ChangeText$6;->mPausedColor:I

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroid/transition/ChangeText$6;->this$0:Landroid/transition/ChangeText;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/transition/ChangeText;->access$100(Landroid/transition/ChangeText;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x2

    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    .line 11
    .line 12
    iget-object v0, p0, Landroid/transition/ChangeText$6;->val$endText:Ljava/lang/CharSequence;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    .line 18
    .line 19
    instance-of v0, p1, Landroid/widget/EditText;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Landroid/transition/ChangeText$6;->this$0:Landroid/transition/ChangeText;

    .line 24
    .line 25
    check-cast p1, Landroid/widget/EditText;

    .line 26
    .line 27
    iget v1, p0, Landroid/transition/ChangeText$6;->val$endSelectionStart:I

    .line 28
    .line 29
    iget v2, p0, Landroid/transition/ChangeText$6;->val$endSelectionEnd:I

    .line 30
    .line 31
    invoke-static {v0, p1, v1, v2}, Landroid/transition/ChangeText;->access$000(Landroid/transition/ChangeText;Landroid/widget/EditText;II)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object p1, p0, Landroid/transition/ChangeText$6;->this$0:Landroid/transition/ChangeText;

    .line 35
    .line 36
    invoke-static {p1}, Landroid/transition/ChangeText;->access$100(Landroid/transition/ChangeText;)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-lez p1, :cond_1

    .line 41
    .line 42
    iget-object p1, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iput p1, p0, Landroid/transition/ChangeText$6;->mPausedColor:I

    .line 49
    .line 50
    iget-object p1, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    .line 51
    .line 52
    iget v0, p0, Landroid/transition/ChangeText$6;->val$endColor:I

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroid/transition/ChangeText$6;->this$0:Landroid/transition/ChangeText;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/transition/ChangeText;->access$100(Landroid/transition/ChangeText;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x2

    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    .line 11
    .line 12
    iget-object v0, p0, Landroid/transition/ChangeText$6;->val$startText:Ljava/lang/CharSequence;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    .line 18
    .line 19
    instance-of v0, p1, Landroid/widget/EditText;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Landroid/transition/ChangeText$6;->this$0:Landroid/transition/ChangeText;

    .line 24
    .line 25
    check-cast p1, Landroid/widget/EditText;

    .line 26
    .line 27
    iget v1, p0, Landroid/transition/ChangeText$6;->val$startSelectionStart:I

    .line 28
    .line 29
    iget v2, p0, Landroid/transition/ChangeText$6;->val$startSelectionEnd:I

    .line 30
    .line 31
    invoke-static {v0, p1, v1, v2}, Landroid/transition/ChangeText;->access$000(Landroid/transition/ChangeText;Landroid/widget/EditText;II)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object p1, p0, Landroid/transition/ChangeText$6;->this$0:Landroid/transition/ChangeText;

    .line 35
    .line 36
    invoke-static {p1}, Landroid/transition/ChangeText;->access$100(Landroid/transition/ChangeText;)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-lez p1, :cond_1

    .line 41
    .line 42
    iget-object p1, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    .line 43
    .line 44
    iget v0, p0, Landroid/transition/ChangeText$6;->mPausedColor:I

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method
