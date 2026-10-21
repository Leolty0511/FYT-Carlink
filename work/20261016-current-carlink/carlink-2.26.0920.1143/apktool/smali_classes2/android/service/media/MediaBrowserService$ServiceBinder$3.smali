.class Landroid/service/media/MediaBrowserService$ServiceBinder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/media/MediaBrowserService$ServiceBinder;->addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

.field final synthetic val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$options:Landroid/os/Bundle;

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/service/media/MediaBrowserService$ServiceBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$3;->this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    iput-object p2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$3;->val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    iput-object p3, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$3;->val$id:Ljava/lang/String;

    iput-object p4, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$3;->val$token:Landroid/os/IBinder;

    iput-object p5, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$3;->val$options:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$3;->val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$3;->this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    .line 8
    .line 9
    iget-object v1, v1, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    .line 10
    .line 11
    invoke-static {v1}, Landroid/service/media/MediaBrowserService;->access$000(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "addSubscription for callback that isn\'t registered id="

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$3;->val$id:Ljava/lang/String;

    .line 31
    .line 32
    const-string v2, "MediaBrowserService"

    .line 33
    .line 34
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$3;->this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    .line 39
    .line 40
    iget-object v1, v1, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    .line 41
    .line 42
    iget-object v2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$3;->val$id:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$3;->val$token:Landroid/os/IBinder;

    .line 45
    .line 46
    iget-object v4, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$3;->val$options:Landroid/os/Bundle;

    .line 47
    .line 48
    invoke-static {v1, v2, v0, v3, v4}, Landroid/service/media/MediaBrowserService;->access$400(Landroid/service/media/MediaBrowserService;Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
