.class public Lt/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = false

.field public static final b:Landroid/transition/Transition;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lt/a;->b:Landroid/transition/Transition;

    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    sget-boolean v0, Lt/a;->a:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lt/a;->b:Landroid/transition/Transition;

    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method
