.class Landroid/animation/LayoutTransition$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/LayoutTransition;->runAppearingTransition(Landroid/view/ViewGroup;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/animation/LayoutTransition;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/animation/LayoutTransition;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    iput-object p2, p0, Landroid/animation/LayoutTransition$4;->val$child:Landroid/view/View;

    iput-object p3, p0, Landroid/animation/LayoutTransition$4;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .line 1
    iget-object p1, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/animation/LayoutTransition;->access$1800(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Landroid/animation/LayoutTransition$4;->val$child:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    .line 13
    .line 14
    invoke-static {p1}, Landroid/animation/LayoutTransition;->access$1600(Landroid/animation/LayoutTransition;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    .line 21
    .line 22
    invoke-static {p1}, Landroid/animation/LayoutTransition;->access$1700(Landroid/animation/LayoutTransition;)Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/animation/LayoutTransition$TransitionListener;

    .line 47
    .line 48
    iget-object v1, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    .line 49
    .line 50
    iget-object v2, p0, Landroid/animation/LayoutTransition$4;->val$parent:Landroid/view/ViewGroup;

    .line 51
    .line 52
    iget-object v3, p0, Landroid/animation/LayoutTransition$4;->val$child:Landroid/view/View;

    .line 53
    .line 54
    const/4 v4, 0x2

    .line 55
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/animation/LayoutTransition$TransitionListener;->endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method
