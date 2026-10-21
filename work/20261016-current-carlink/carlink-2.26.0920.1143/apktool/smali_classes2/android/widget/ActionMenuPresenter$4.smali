.class Landroid/widget/ActionMenuPresenter$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ActionMenuPresenter;->runItemAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;

.field final synthetic val$menuItemLayoutInfoPre:Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$4;->this$0:Landroid/widget/ActionMenuPresenter;

    iput-object p2, p0, Landroid/widget/ActionMenuPresenter$4;->val$menuItemLayoutInfoPre:Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$4;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 3
    .line 4
    invoke-static {v1}, Landroid/widget/ActionMenuPresenter;->access$900(Landroid/widget/ActionMenuPresenter;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-ge v0, v1, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$4;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 15
    .line 16
    invoke-static {v1}, Landroid/widget/ActionMenuPresenter;->access$900(Landroid/widget/ActionMenuPresenter;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    .line 25
    .line 26
    iget-object v1, v1, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    .line 27
    .line 28
    if-ne v1, p1, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Landroid/widget/ActionMenuPresenter$4;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 31
    .line 32
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->access$900(Landroid/widget/ActionMenuPresenter;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    :goto_1
    iget-object p1, p0, Landroid/widget/ActionMenuPresenter$4;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 44
    .line 45
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->access$1000(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Landroid/view/ViewGroup;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$4;->val$menuItemLayoutInfoPre:Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    .line 56
    .line 57
    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
