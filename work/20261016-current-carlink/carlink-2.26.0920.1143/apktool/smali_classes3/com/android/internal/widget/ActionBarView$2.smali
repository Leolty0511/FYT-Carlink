.class Lcom/android/internal/widget/ActionBarView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ActionBarView;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/ActionBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$2;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$2;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->access$100(Lcom/android/internal/widget/ActionBarView;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$2;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 10
    .line 11
    iget-object v0, p1, Lcom/android/internal/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->access$200(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/view/menu/ActionMenuItem;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
