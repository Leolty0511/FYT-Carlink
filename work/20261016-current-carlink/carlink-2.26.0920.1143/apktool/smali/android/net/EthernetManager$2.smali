.class Landroid/net/EthernetManager$2;
.super Landroid/net/IEthernetServiceListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/EthernetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/EthernetManager;


# direct methods
.method public constructor <init>(Landroid/net/EthernetManager;)V
    .locals 0

    iput-object p1, p0, Landroid/net/EthernetManager$2;->this$0:Landroid/net/EthernetManager;

    invoke-direct {p0}, Landroid/net/IEthernetServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailabilityChanged(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/net/EthernetManager$2;->this$0:Landroid/net/EthernetManager;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/EthernetManager;->access$100(Landroid/net/EthernetManager;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    const/16 v3, 0x3e8

    .line 10
    .line 11
    invoke-virtual {v0, v3, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
