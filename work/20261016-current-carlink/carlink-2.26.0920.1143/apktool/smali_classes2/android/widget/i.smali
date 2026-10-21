.class public final synthetic Landroid/widget/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/widget/PopupWindow$PopupDecorView;

.field public final synthetic c:Landroid/transition/Transition$TransitionListener;

.field public final synthetic d:Landroid/transition/Transition;

.field public final synthetic e:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition$TransitionListener;Landroid/transition/Transition;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/i;->b:Landroid/widget/PopupWindow$PopupDecorView;

    iput-object p2, p0, Landroid/widget/i;->c:Landroid/transition/Transition$TransitionListener;

    iput-object p3, p0, Landroid/widget/i;->d:Landroid/transition/Transition;

    iput-object p4, p0, Landroid/widget/i;->e:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroid/widget/i;->d:Landroid/transition/Transition;

    iget-object v1, p0, Landroid/widget/i;->e:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/i;->b:Landroid/widget/PopupWindow$PopupDecorView;

    iget-object v3, p0, Landroid/widget/i;->c:Landroid/transition/Transition$TransitionListener;

    invoke-static {v2, v3, v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->c(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition$TransitionListener;Landroid/transition/Transition;Landroid/view/View;)V

    return-void
.end method
