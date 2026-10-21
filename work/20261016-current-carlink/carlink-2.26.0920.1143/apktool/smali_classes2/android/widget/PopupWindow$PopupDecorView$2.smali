.class Landroid/widget/PopupWindow$PopupDecorView$2;
.super Landroid/transition/TransitionListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PopupWindow$PopupDecorView;->startExitTransition(Landroid/transition/Transition;Landroid/view/View;Landroid/graphics/Rect;Landroid/transition/Transition$TransitionListener;)V
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

    iput-object p1, p0, Landroid/widget/PopupWindow$PopupDecorView$2;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroid/widget/PopupWindow$PopupDecorView$2;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    .line 5
    .line 6
    invoke-static {p1}, Landroid/widget/PopupWindow$PopupDecorView;->access$500(Landroid/widget/PopupWindow$PopupDecorView;)Ljava/lang/Runnable;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Landroid/widget/PopupWindow$PopupDecorView$2;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    .line 13
    .line 14
    invoke-static {p1}, Landroid/widget/PopupWindow$PopupDecorView;->access$500(Landroid/widget/PopupWindow$PopupDecorView;)Ljava/lang/Runnable;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
