.class Landroid/os/RemoteCallback$LocalCallback;
.super Landroid/os/IRemoteCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/RemoteCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/os/RemoteCallback;


# direct methods
.method public constructor <init>(Landroid/os/RemoteCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/os/RemoteCallback$LocalCallback;->this$0:Landroid/os/RemoteCallback;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/RemoteCallback$LocalCallback;->this$0:Landroid/os/RemoteCallback;

    iget-object v1, v0, Landroid/os/RemoteCallback;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/os/RemoteCallback$DeliverResult;

    invoke-direct {v2, v0, p1}, Landroid/os/RemoteCallback$DeliverResult;-><init>(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
