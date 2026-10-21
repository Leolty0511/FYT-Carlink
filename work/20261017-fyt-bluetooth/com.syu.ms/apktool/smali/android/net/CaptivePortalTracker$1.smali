.class Landroid/net/CaptivePortalTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/CaptivePortalTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/net/CaptivePortalTracker;


# direct methods
.method public constructor <init>(Landroid/net/CaptivePortalTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/CaptivePortalTracker$1;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Landroid/net/CaptivePortalTracker$1;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-static {v0}, Landroid/net/CaptivePortalTracker;->access$500(Landroid/net/CaptivePortalTracker;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/net/CaptivePortalTracker$1;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-static {v0}, Landroid/net/CaptivePortalTracker;->access$500(Landroid/net/CaptivePortalTracker;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const-string p1, "networkInfo"

    .line 3
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 4
    iget-object p2, p0, Landroid/net/CaptivePortalTracker$1;->this$0:Landroid/net/CaptivePortalTracker;

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1}, Lu/m;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Lu/m;->sendMessage(Landroid/os/Message;)V

    :cond_2
    return-void
.end method
