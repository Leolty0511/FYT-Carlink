.class Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;->onMediaKey(Landroid/view/KeyEvent;Landroid/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;

.field final synthetic val$event:Landroid/view/KeyEvent;

.field final synthetic val$result:Landroid/os/ResultReceiver;


# direct methods
.method public constructor <init>(Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;Landroid/view/KeyEvent;Landroid/os/ResultReceiver;)V
    .locals 0

    iput-object p1, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;->this$0:Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;

    iput-object p2, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;->val$event:Landroid/view/KeyEvent;

    iput-object p3, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;->val$result:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;->this$0:Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;->access$600(Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;)Landroid/media/session/MediaSessionManager$OnMediaKeyListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;->val$event:Landroid/view/KeyEvent;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Landroid/media/session/MediaSessionManager$OnMediaKeyListener;->onMediaKey(Landroid/view/KeyEvent;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v1, "The media key listener is returned "

    .line 14
    .line 15
    const-string v2, "SessionManager"

    .line 16
    .line 17
    invoke-static {v1, v0, v2}, Landroid/accessibilityservice/c;->z(Ljava/lang/String;ZLjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;->val$result:Landroid/os/ResultReceiver;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v1, v0, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
