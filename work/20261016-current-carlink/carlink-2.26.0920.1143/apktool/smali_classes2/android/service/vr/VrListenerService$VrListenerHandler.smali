.class final Landroid/service/vr/VrListenerService$VrListenerHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/vr/VrListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VrListenerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/vr/VrListenerService;


# direct methods
.method public constructor <init>(Landroid/service/vr/VrListenerService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/service/vr/VrListenerService$VrListenerHandler;->this$0:Landroid/service/vr/VrListenerService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Landroid/service/vr/VrListenerService$VrListenerHandler;->this$0:Landroid/service/vr/VrListenerService;

    .line 8
    .line 9
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Landroid/content/ComponentName;

    .line 12
    .line 13
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 14
    .line 15
    if-ne v3, v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v1, 0x0

    .line 19
    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 20
    .line 21
    invoke-virtual {v0, v2, v1, p1}, Landroid/service/vr/VrListenerService;->onCurrentVrActivityChanged(Landroid/content/ComponentName;ZI)V

    .line 22
    .line 23
    .line 24
    :goto_1
    return-void
.end method
