.class Landroid/widget/PopupWindow$PopupDecorView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PopupWindow$PopupDecorView;->requestEnterTransition(Landroid/transition/Transition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/PopupWindow$PopupDecorView;

.field final synthetic val$enterTransition:Landroid/transition/Transition;


# direct methods
.method public constructor <init>(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PopupWindow$PopupDecorView$1;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    iput-object p2, p0, Landroid/widget/PopupWindow$PopupDecorView$1;->val$enterTransition:Landroid/transition/Transition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView$1;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView$1;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    .line 13
    .line 14
    iget-object v0, v0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Landroid/widget/PopupWindow$PopupDecorView$1;->val$enterTransition:Landroid/transition/Transition;

    .line 21
    .line 22
    new-instance v2, Landroid/widget/PopupWindow$PopupDecorView$1$1;

    .line 23
    .line 24
    invoke-direct {v2, p0, v0}, Landroid/widget/PopupWindow$PopupDecorView$1$1;-><init>(Landroid/widget/PopupWindow$PopupDecorView$1;Landroid/graphics/Rect;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView$1;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    .line 31
    .line 32
    iget-object v1, p0, Landroid/widget/PopupWindow$PopupDecorView$1;->val$enterTransition:Landroid/transition/Transition;

    .line 33
    .line 34
    invoke-static {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->access$400(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
