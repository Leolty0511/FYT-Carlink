.class Landroid/media/browse/MediaBrowser$MediaServiceConnection$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/browse/MediaBrowser$MediaServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

.field final synthetic val$name:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/media/browse/MediaBrowser$MediaServiceConnection;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$2;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    iput-object p2, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$2;->val$name:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$2;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    .line 2
    .line 3
    const-string/jumbo v1, "onServiceDisconnected"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->access$1600(Landroid/media/browse/MediaBrowser$MediaServiceConnection;Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$2;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    .line 14
    .line 15
    iget-object v0, v0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser;->access$102(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserService;)Landroid/service/media/IMediaBrowserService;

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$2;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    .line 22
    .line 23
    iget-object v0, v0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser;->access$202(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$2;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    .line 29
    .line 30
    iget-object v0, v0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    .line 31
    .line 32
    const/4 v1, 0x4

    .line 33
    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser;->access$002(Landroid/media/browse/MediaBrowser;I)I

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$2;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    .line 37
    .line 38
    iget-object v0, v0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    .line 39
    .line 40
    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->access$800(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$ConnectionCallback;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;->onConnectionSuspended()V

    .line 45
    .line 46
    .line 47
    return-void
.end method
