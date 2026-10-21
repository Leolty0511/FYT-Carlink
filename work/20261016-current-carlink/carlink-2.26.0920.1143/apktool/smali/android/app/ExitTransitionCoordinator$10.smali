.class Landroid/app/ExitTransitionCoordinator$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ExitTransitionCoordinator;->notifyComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ExitTransitionCoordinator;

.field final synthetic val$resultReceiver:Landroid/os/ResultReceiver;

.field final synthetic val$sharedElementBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/app/ExitTransitionCoordinator;Landroid/os/ResultReceiver;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$10;->this$0:Landroid/app/ExitTransitionCoordinator;

    iput-object p2, p0, Landroid/app/ExitTransitionCoordinator$10;->val$resultReceiver:Landroid/os/ResultReceiver;

    iput-object p3, p0, Landroid/app/ExitTransitionCoordinator$10;->val$sharedElementBundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedElementsReady()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$10;->val$resultReceiver:Landroid/os/ResultReceiver;

    .line 2
    .line 3
    const/16 v1, 0x67

    .line 4
    .line 5
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator$10;->val$sharedElementBundle:Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$10;->this$0:Landroid/app/ExitTransitionCoordinator;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->access$1200(Landroid/app/ExitTransitionCoordinator;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
