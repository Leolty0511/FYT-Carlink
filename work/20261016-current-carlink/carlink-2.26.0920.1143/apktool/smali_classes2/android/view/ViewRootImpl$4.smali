.class Landroid/view/ViewRootImpl$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl;->loadSystemProperties()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    .line 2
    .line 3
    const-string/jumbo v1, "viewroot.profile_rendering"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->access$2902(Landroid/view/ViewRootImpl;Z)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    .line 15
    .line 16
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 17
    .line 18
    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 19
    .line 20
    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->access$800(Landroid/view/ViewRootImpl;Z)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    .line 24
    .line 25
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 26
    .line 27
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->loadSystemProperties()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 40
    .line 41
    .line 42
    :cond_0
    const-string v0, "debug.layout"

    .line 43
    .line 44
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    .line 49
    .line 50
    iget-object v2, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 51
    .line 52
    iget-boolean v3, v2, Landroid/view/View$AttachInfo;->mDebugLayout:Z

    .line 53
    .line 54
    if-eq v0, v3, :cond_1

    .line 55
    .line 56
    iput-boolean v0, v2, Landroid/view/View$AttachInfo;->mDebugLayout:Z

    .line 57
    .line 58
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 59
    .line 60
    const/16 v1, 0x16

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    iget-object v0, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    .line 69
    .line 70
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 71
    .line 72
    const-wide/16 v2, 0xc8

    .line 73
    .line 74
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 75
    .line 76
    .line 77
    :cond_1
    return-void
.end method
