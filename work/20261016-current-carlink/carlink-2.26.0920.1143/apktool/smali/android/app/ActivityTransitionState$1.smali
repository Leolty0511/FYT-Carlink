.class Landroid/app/ActivityTransitionState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityTransitionState;->onResume(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityTransitionState;


# direct methods
.method public constructor <init>(Landroid/app/ActivityTransitionState;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityTransitionState$1;->this$0:Landroid/app/ActivityTransitionState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/ActivityTransitionState$1;->this$0:Landroid/app/ActivityTransitionState;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/app/ActivityTransitionState;->access$000(Landroid/app/ActivityTransitionState;)Landroid/app/EnterTransitionCoordinator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/app/ActivityTransitionState$1;->this$0:Landroid/app/ActivityTransitionState;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/app/ActivityTransitionState;->access$000(Landroid/app/ActivityTransitionState;)Landroid/app/EnterTransitionCoordinator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isWaitingForRemoteExit()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityTransitionState$1;->this$0:Landroid/app/ActivityTransitionState;

    .line 22
    .line 23
    invoke-static {v0}, Landroid/app/ActivityTransitionState;->access$100(Landroid/app/ActivityTransitionState;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroid/app/ActivityTransitionState$1;->this$0:Landroid/app/ActivityTransitionState;

    .line 27
    .line 28
    invoke-static {v0}, Landroid/app/ActivityTransitionState;->access$200(Landroid/app/ActivityTransitionState;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method
