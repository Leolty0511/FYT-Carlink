.class Landroid/webkit/WebSyncManager$SyncHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SyncHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/webkit/WebSyncManager;


# direct methods
.method private constructor <init>(Landroid/webkit/WebSyncManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/webkit/WebSyncManager$SyncHandler;->this$0:Landroid/webkit/WebSyncManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/webkit/WebSyncManager;Landroid/webkit/WebSyncManager$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/webkit/WebSyncManager$SyncHandler;-><init>(Landroid/webkit/WebSyncManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Landroid/webkit/WebSyncManager$SyncHandler;->this$0:Landroid/webkit/WebSyncManager;

    invoke-virtual {p1}, Landroid/webkit/WebSyncManager;->syncFromRamToFlash()V

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 4
    invoke-static {}, Landroid/webkit/WebSyncManager;->access$000()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method
