.class Landroid/view/ViewGroup$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewGroup$4;->this$0:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Landroid/view/ViewGroup$4;->this$0:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/view/ViewGroup;->access$300(Landroid/view/ViewGroup;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/animation/LayoutTransition;->isChangingLayout()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Landroid/view/ViewGroup$4;->this$0:Landroid/view/ViewGroup;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Landroid/view/ViewGroup$4;->this$0:Landroid/view/ViewGroup;

    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    invoke-static {p1, p2}, Landroid/view/ViewGroup;->access$302(Landroid/view/ViewGroup;Z)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 p1, 0x3

    .line 27
    if-ne p4, p1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Landroid/view/ViewGroup$4;->this$0:Landroid/view/ViewGroup;

    .line 30
    .line 31
    invoke-static {p1}, Landroid/view/ViewGroup;->access$400(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Landroid/view/ViewGroup$4;->this$0:Landroid/view/ViewGroup;

    .line 38
    .line 39
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    const/4 p1, 0x3

    if-ne p4, p1, :cond_0

    iget-object p1, p0, Landroid/view/ViewGroup$4;->this$0:Landroid/view/ViewGroup;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    :cond_0
    return-void
.end method
