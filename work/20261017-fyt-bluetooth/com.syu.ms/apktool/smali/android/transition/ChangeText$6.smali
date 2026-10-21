.class Landroid/transition/ChangeText$6;
.super Landroid/transition/Transition$TransitionListenerAdapter;
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
.field public mPausedColor:I

.field public final synthetic this$0:Landroid/transition/ChangeText;

.field public final synthetic val$endColor:I

.field public final synthetic val$endSelectionEnd:I

.field public final synthetic val$endSelectionStart:I

.field public final synthetic val$endText:Ljava/lang/CharSequence;

.field public final synthetic val$startSelectionEnd:I

.field public final synthetic val$startSelectionStart:I

.field public final synthetic val$startText:Ljava/lang/CharSequence;

.field public final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/transition/ChangeText;Landroid/widget/TextView;Ljava/lang/CharSequence;IIILjava/lang/CharSequence;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/transition/ChangeText$6;->this$0:Landroid/transition/ChangeText;

    iput-object p2, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    iput-object p3, p0, Landroid/transition/ChangeText$6;->val$endText:Ljava/lang/CharSequence;

    iput p4, p0, Landroid/transition/ChangeText$6;->val$endSelectionStart:I

    iput p5, p0, Landroid/transition/ChangeText$6;->val$endSelectionEnd:I

    iput p6, p0, Landroid/transition/ChangeText$6;->val$endColor:I

    iput-object p7, p0, Landroid/transition/ChangeText$6;->val$startText:Ljava/lang/CharSequence;

    iput p8, p0, Landroid/transition/ChangeText$6;->val$startSelectionStart:I

    iput p9, p0, Landroid/transition/ChangeText$6;->val$startSelectionEnd:I

    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroid/transition/ChangeText$6;->mPausedColor:I

    return-void
.end method


# virtual methods
.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroid/transition/ChangeText$6;->this$0:Landroid/transition/ChangeText;

    invoke-static {p1}, Landroid/transition/ChangeText;->access$100(Landroid/transition/ChangeText;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/transition/ChangeText$6;->val$endText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Landroid/transition/ChangeText$6;->this$0:Landroid/transition/ChangeText;

    check-cast p1, Landroid/widget/EditText;

    iget v1, p0, Landroid/transition/ChangeText$6;->val$endSelectionStart:I

    iget v2, p0, Landroid/transition/ChangeText$6;->val$endSelectionEnd:I

    invoke-static {v0, p1, v1, v2}, Landroid/transition/ChangeText;->access$000(Landroid/transition/ChangeText;Landroid/widget/EditText;II)V

    .line 5
    :cond_0
    iget-object p1, p0, Landroid/transition/ChangeText$6;->this$0:Landroid/transition/ChangeText;

    invoke-static {p1}, Landroid/transition/ChangeText;->access$100(Landroid/transition/ChangeText;)I

    move-result p1

    if-lez p1, :cond_1

    .line 6
    iget-object p1, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    iput p1, p0, Landroid/transition/ChangeText$6;->mPausedColor:I

    .line 7
    iget-object p1, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    iget v0, p0, Landroid/transition/ChangeText$6;->val$endColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroid/transition/ChangeText$6;->this$0:Landroid/transition/ChangeText;

    invoke-static {p1}, Landroid/transition/ChangeText;->access$100(Landroid/transition/ChangeText;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/transition/ChangeText$6;->val$startText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Landroid/transition/ChangeText$6;->this$0:Landroid/transition/ChangeText;

    check-cast p1, Landroid/widget/EditText;

    iget v1, p0, Landroid/transition/ChangeText$6;->val$startSelectionStart:I

    iget v2, p0, Landroid/transition/ChangeText$6;->val$startSelectionEnd:I

    invoke-static {v0, p1, v1, v2}, Landroid/transition/ChangeText;->access$000(Landroid/transition/ChangeText;Landroid/widget/EditText;II)V

    .line 5
    :cond_0
    iget-object p1, p0, Landroid/transition/ChangeText$6;->this$0:Landroid/transition/ChangeText;

    invoke-static {p1}, Landroid/transition/ChangeText;->access$100(Landroid/transition/ChangeText;)I

    move-result p1

    if-lez p1, :cond_1

    .line 6
    iget-object p1, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    iget v0, p0, Landroid/transition/ChangeText$6;->mPausedColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method
