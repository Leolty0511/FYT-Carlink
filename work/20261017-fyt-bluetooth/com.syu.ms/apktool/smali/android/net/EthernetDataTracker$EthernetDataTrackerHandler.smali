.class Landroid/net/EthernetDataTracker$EthernetDataTrackerHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/EthernetDataTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EthernetDataTrackerHandler"
.end annotation


# instance fields
.field private mDataTracker:Landroid/net/EthernetDataTracker;

.field public final synthetic this$0:Landroid/net/EthernetDataTracker;


# direct methods
.method public constructor <init>(Landroid/net/EthernetDataTracker;Landroid/os/Looper;Landroid/net/EthernetDataTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/EthernetDataTracker$EthernetDataTrackerHandler;->this$0:Landroid/net/EthernetDataTracker;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    iput-object p3, p0, Landroid/net/EthernetDataTracker$EthernetDataTrackerHandler;->mDataTracker:Landroid/net/EthernetDataTracker;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Landroid/net/EthernetDataTracker$EthernetDataTrackerHandler;->this$0:Landroid/net/EthernetDataTracker;

    invoke-static {p1}, Landroid/net/EthernetDataTracker;->access$800(Landroid/net/EthernetDataTracker;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Landroid/net/EthernetDataTracker$EthernetDataTrackerHandler;->mDataTracker:Landroid/net/EthernetDataTracker;

    invoke-virtual {p1}, Landroid/net/EthernetDataTracker;->connect()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Landroid/net/EthernetDataTracker$EthernetDataTrackerHandler;->mDataTracker:Landroid/net/EthernetDataTracker;

    invoke-virtual {p1}, Landroid/net/EthernetDataTracker;->disconnect()V

    :cond_2
    :goto_0
    return-void
.end method
