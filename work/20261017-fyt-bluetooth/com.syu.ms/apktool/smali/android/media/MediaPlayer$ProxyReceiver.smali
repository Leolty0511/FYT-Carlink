.class Landroid/media/MediaPlayer$ProxyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProxyReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method private constructor <init>(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/MediaPlayer$ProxyReceiver;->this$0:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$ProxyReceiver;-><init>(Landroid/media/MediaPlayer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PROXY_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Landroid/media/MediaPlayer$ProxyReceiver;->this$0:Landroid/media/MediaPlayer;

    invoke-static {p1, p2}, Landroid/media/MediaPlayer;->access$2400(Landroid/media/MediaPlayer;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
