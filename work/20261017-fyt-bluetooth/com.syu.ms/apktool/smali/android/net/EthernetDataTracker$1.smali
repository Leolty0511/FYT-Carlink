.class Landroid/net/EthernetDataTracker$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/EthernetDataTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/net/EthernetDataTracker;


# direct methods
.method public constructor <init>(Landroid/net/EthernetDataTracker;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/EthernetDataTracker$1;->this$0:Landroid/net/EthernetDataTracker;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroid/net/EthernetDataTracker$1;->this$0:Landroid/net/EthernetDataTracker;

    invoke-static {p1}, Landroid/net/EthernetDataTracker;->access$500(Landroid/net/EthernetDataTracker;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "ethernet_on"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 2
    iget-object p1, p0, Landroid/net/EthernetDataTracker$1;->this$0:Landroid/net/EthernetDataTracker;

    invoke-static {p1}, Landroid/net/EthernetDataTracker;->access$600(Landroid/net/EthernetDataTracker;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Landroid/net/EthernetDataTracker$1;->this$0:Landroid/net/EthernetDataTracker;

    invoke-static {p1}, Landroid/net/EthernetDataTracker;->access$700(Landroid/net/EthernetDataTracker;)V

    :goto_0
    return-void
.end method
