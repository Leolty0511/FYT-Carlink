.class Landroid/app/ExitTransitionCoordinator$4;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ExitTransitionCoordinator;->startExit(ILandroid/content/Intent;)V
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

    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$4;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/app/ExitTransitionCoordinator$4;->this$0:Landroid/app/ExitTransitionCoordinator;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Landroid/app/ExitTransitionCoordinator;->access$502(Landroid/app/ExitTransitionCoordinator;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Landroid/app/ExitTransitionCoordinator$4;->this$0:Landroid/app/ExitTransitionCoordinator;

    .line 8
    .line 9
    invoke-static {p1}, Landroid/app/ExitTransitionCoordinator;->access$600(Landroid/app/ExitTransitionCoordinator;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
