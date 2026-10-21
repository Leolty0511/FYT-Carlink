.class Landroid/app/EnterTransitionCoordinator$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/EnterTransitionCoordinator;->onTakeSharedElements()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/EnterTransitionCoordinator;

.field final synthetic val$sharedElementState:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/app/EnterTransitionCoordinator;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$3;->this$0:Landroid/app/EnterTransitionCoordinator;

    iput-object p2, p0, Landroid/app/EnterTransitionCoordinator$3;->val$sharedElementState:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/app/EnterTransitionCoordinator$3;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/EnterTransitionCoordinator$3;->lambda$onSharedElementsReady$1(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic b(Landroid/app/EnterTransitionCoordinator$3;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/EnterTransitionCoordinator$3;->lambda$null$0(Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$null$0(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$3;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-static {v0, p1}, Landroid/app/EnterTransitionCoordinator;->access$100(Landroid/app/EnterTransitionCoordinator;Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$onSharedElementsReady$1(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$3;->this$0:Landroid/app/EnterTransitionCoordinator;

    new-instance v1, Landroid/app/g;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Landroid/app/g;-><init>(Landroid/app/EnterTransitionCoordinator$3;Landroid/os/Bundle;I)V

    invoke-virtual {v0, v1}, Landroid/app/ActivityTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onSharedElementsReady()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$3;->this$0:Landroid/app/EnterTransitionCoordinator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator$3;->val$sharedElementState:Landroid/os/Bundle;

    .line 10
    .line 11
    new-instance v2, Landroid/app/g;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v2, p0, v1, v3}, Landroid/app/g;-><init>(Landroid/app/EnterTransitionCoordinator$3;Landroid/os/Bundle;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3, v2}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;ZLjava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
