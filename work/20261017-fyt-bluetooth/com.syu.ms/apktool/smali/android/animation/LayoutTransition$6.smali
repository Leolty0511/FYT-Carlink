.class Landroid/animation/LayoutTransition$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/LayoutTransition;->runDisappearingTransition(Landroid/view/ViewGroup;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/animation/LayoutTransition;

.field public final synthetic val$child:Landroid/view/View;

.field public final synthetic val$parent:Landroid/view/ViewGroup;

.field public final synthetic val$preAnimAlpha:F


# direct methods
.method public constructor <init>(Landroid/animation/LayoutTransition;Landroid/view/View;FLandroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/animation/LayoutTransition$6;->this$0:Landroid/animation/LayoutTransition;

    iput-object p2, p0, Landroid/animation/LayoutTransition$6;->val$child:Landroid/view/View;

    iput p3, p0, Landroid/animation/LayoutTransition$6;->val$preAnimAlpha:F

    iput-object p4, p0, Landroid/animation/LayoutTransition$6;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .line 1
    iget-object p1, p0, Landroid/animation/LayoutTransition$6;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p1}, Landroid/animation/LayoutTransition;->access$1900(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;

    move-result-object p1

    iget-object v0, p0, Landroid/animation/LayoutTransition$6;->val$child:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Landroid/animation/LayoutTransition$6;->val$child:Landroid/view/View;

    iget v0, p0, Landroid/animation/LayoutTransition$6;->val$preAnimAlpha:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 3
    iget-object p1, p0, Landroid/animation/LayoutTransition$6;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p1}, Landroid/animation/LayoutTransition;->access$1600(Landroid/animation/LayoutTransition;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Landroid/animation/LayoutTransition$6;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p1}, Landroid/animation/LayoutTransition;->access$1700(Landroid/animation/LayoutTransition;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/LayoutTransition$TransitionListener;

    .line 6
    iget-object v1, p0, Landroid/animation/LayoutTransition$6;->this$0:Landroid/animation/LayoutTransition;

    iget-object v2, p0, Landroid/animation/LayoutTransition$6;->val$parent:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/animation/LayoutTransition$6;->val$child:Landroid/view/View;

    const/4 v4, 0x3

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/animation/LayoutTransition$TransitionListener;->endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
