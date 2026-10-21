.class Landroid/widget/ActionMenuPresenter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$2;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/widget/ActionMenuPresenter$2;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->access$500(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$2;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 14
    .line 15
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$400(Landroid/widget/ActionMenuPresenter;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Landroid/widget/ActionMenuPresenter$2;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 23
    .line 24
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->access$600(Landroid/widget/ActionMenuPresenter;)Landroid/util/SparseArray;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Landroid/widget/ActionMenuPresenter$2;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 32
    .line 33
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->access$700(Landroid/widget/ActionMenuPresenter;)Landroid/util/SparseArray;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 38
    .line 39
    .line 40
    return-void
.end method
