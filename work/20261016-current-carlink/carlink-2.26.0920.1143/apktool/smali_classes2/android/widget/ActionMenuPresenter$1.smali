.class Landroid/widget/ActionMenuPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


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

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$1;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$1;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/widget/ActionMenuPresenter;->access$100(Landroid/widget/ActionMenuPresenter;Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$1;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$200(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$1;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 23
    .line 24
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$300(Landroid/widget/ActionMenuPresenter;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    return v0
.end method
