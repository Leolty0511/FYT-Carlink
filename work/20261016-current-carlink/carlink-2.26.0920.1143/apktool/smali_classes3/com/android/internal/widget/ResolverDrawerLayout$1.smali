.class Lcom/android/internal/widget/ResolverDrawerLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ResolverDrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ResolverDrawerLayout;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout$1;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchModeChanged(Z)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout$1;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->hasFocus()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout$1;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->access$000(Lcom/android/internal/widget/ResolverDrawerLayout;Landroid/view/View;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout$1;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-static {p1, v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->access$100(Lcom/android/internal/widget/ResolverDrawerLayout;IF)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
