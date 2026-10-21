.class Landroid/widget/PopupWindow$PopupDecorView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PopupWindow$PopupDecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/PopupWindow$PopupDecorView;


# direct methods
.method public constructor <init>(Landroid/widget/PopupWindow$PopupDecorView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PopupWindow$PopupDecorView$4;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroid/widget/PopupWindow$PopupDecorView$4;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    .line 5
    .line 6
    invoke-static {p1}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
