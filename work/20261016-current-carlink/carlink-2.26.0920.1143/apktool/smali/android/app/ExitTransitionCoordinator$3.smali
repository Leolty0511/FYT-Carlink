.class Landroid/app/ExitTransitionCoordinator$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ExitTransitionCoordinator;->startExit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ExitTransitionCoordinator;


# direct methods
.method public constructor <init>(Landroid/app/ExitTransitionCoordinator;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$3;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$3;->this$0:Landroid/app/ExitTransitionCoordinator;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->access$200(Landroid/app/ExitTransitionCoordinator;)Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$3;->this$0:Landroid/app/ExitTransitionCoordinator;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->access$300(Landroid/app/ExitTransitionCoordinator;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$3;->this$0:Landroid/app/ExitTransitionCoordinator;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->access$400(Landroid/app/ExitTransitionCoordinator;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method
