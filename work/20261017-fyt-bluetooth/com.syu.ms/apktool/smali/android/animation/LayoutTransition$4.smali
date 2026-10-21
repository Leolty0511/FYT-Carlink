.class Landroid/animation/LayoutTransition$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/LayoutTransition;->setupChangeAnimation(Landroid/view/ViewGroup;ILandroid/animation/Animator;JLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/animation/LayoutTransition;

.field public final synthetic val$changeReason:I

.field public final synthetic val$child:Landroid/view/View;

.field public final synthetic val$listener:Landroid/view/View$OnLayoutChangeListener;

.field public final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;ILandroid/view/View$OnLayoutChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    iput-object p2, p0, Landroid/animation/LayoutTransition$4;->val$parent:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/animation/LayoutTransition$4;->val$child:Landroid/view/View;

    iput p4, p0, Landroid/animation/LayoutTransition$4;->val$changeReason:I

    iput-object p5, p0, Landroid/animation/LayoutTransition$4;->val$listener:Landroid/view/View$OnLayoutChangeListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/animation/LayoutTransition$4;->val$child:Landroid/view/View;

    iget-object v0, p0, Landroid/animation/LayoutTransition$4;->val$listener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2
    iget-object p1, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p1}, Landroid/animation/LayoutTransition;->access$000(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Landroid/animation/LayoutTransition$4;->val$child:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    .line 1
    iget-object p1, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p1}, Landroid/animation/LayoutTransition;->access$1500(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;

    move-result-object p1

    iget-object v0, p0, Landroid/animation/LayoutTransition$4;->val$child:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p1}, Landroid/animation/LayoutTransition;->access$1600(Landroid/animation/LayoutTransition;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p1}, Landroid/animation/LayoutTransition;->access$1700(Landroid/animation/LayoutTransition;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/LayoutTransition$TransitionListener;

    .line 5
    iget-object v1, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    iget-object v2, p0, Landroid/animation/LayoutTransition$4;->val$parent:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/animation/LayoutTransition$4;->val$child:Landroid/view/View;

    iget v4, p0, Landroid/animation/LayoutTransition$4;->val$changeReason:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x4

    :goto_1
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/animation/LayoutTransition$TransitionListener;->endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 6

    .line 1
    iget-object p1, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p1}, Landroid/animation/LayoutTransition;->access$1600(Landroid/animation/LayoutTransition;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p1}, Landroid/animation/LayoutTransition;->access$1700(Landroid/animation/LayoutTransition;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/LayoutTransition$TransitionListener;

    .line 4
    iget-object v1, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    iget-object v2, p0, Landroid/animation/LayoutTransition$4;->val$parent:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/animation/LayoutTransition$4;->val$child:Landroid/view/View;

    iget v4, p0, Landroid/animation/LayoutTransition$4;->val$changeReason:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x4

    :goto_1
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/animation/LayoutTransition$TransitionListener;->startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_0

    :cond_2
    return-void
.end method
