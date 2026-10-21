.class Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/browse/MediaBrowser$MediaServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

.field final synthetic val$binder:Landroid/os/IBinder;

.field final synthetic val$name:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/media/browse/MediaBrowser$MediaServiceConnection;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    iput-object p2, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->val$name:Landroid/content/ComponentName;

    iput-object p3, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->val$binder:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    .line 2
    .line 3
    const-string/jumbo v1, "onServiceConnected"

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
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    .line 14
    .line 15
    iget-object v0, v0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    .line 16
    .line 17
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->val$binder:Landroid/os/IBinder;

    .line 18
    .line 19
    invoke-static {v1}, Landroid/service/media/IMediaBrowserService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/media/IMediaBrowserService;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser;->access$102(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserService;)Landroid/service/media/IMediaBrowserService;

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    .line 27
    .line 28
    iget-object v0, v0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    .line 29
    .line 30
    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->access$1700(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$ServiceCallbacks;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser;->access$202(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    .line 38
    .line 39
    iget-object v0, v0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    .line 40
    .line 41
    const/4 v1, 0x2

    .line 42
    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser;->access$002(Landroid/media/browse/MediaBrowser;I)I

    .line 43
    .line 44
    .line 45
    :try_start_0
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    .line 46
    .line 47
    iget-object v0, v0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    .line 48
    .line 49
    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->access$100(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserService;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    .line 54
    .line 55
    iget-object v1, v1, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    .line 56
    .line 57
    invoke-static {v1}, Landroid/media/browse/MediaBrowser;->access$600(Landroid/media/browse/MediaBrowser;)Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-object v2, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    .line 66
    .line 67
    iget-object v2, v2, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    .line 68
    .line 69
    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->access$1800(Landroid/media/browse/MediaBrowser;)Landroid/os/Bundle;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iget-object v3, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    .line 74
    .line 75
    iget-object v3, v3, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    .line 76
    .line 77
    invoke-static {v3}, Landroid/media/browse/MediaBrowser;->access$200(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-interface {v0, v1, v2, v3}, Landroid/service/media/IMediaBrowserService;->connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v1, "RemoteException during connect for "

    .line 88
    .line 89
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    .line 93
    .line 94
    iget-object v1, v1, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    .line 95
    .line 96
    invoke-static {v1}, Landroid/media/browse/MediaBrowser;->access$300(Landroid/media/browse/MediaBrowser;)Landroid/content/ComponentName;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const-string v1, "MediaBrowser"

    .line 108
    .line 109
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    :goto_0
    return-void
.end method
