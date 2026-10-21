.class Landroid/net/wifi/WifiStateMachine$InterfaceObserver;
.super Lx/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InterfaceObserver"
.end annotation


# instance fields
.field private mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

.field public final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$InterfaceObserver;->this$0:Landroid/net/wifi/WifiStateMachine;

    .line 2
    invoke-direct {p0}, Lx/a;-><init>()V

    .line 3
    iput-object p2, p0, Landroid/net/wifi/WifiStateMachine$InterfaceObserver;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    return-void
.end method


# virtual methods
.method public addressRemoved(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    iget-object p3, p0, Landroid/net/wifi/WifiStateMachine$InterfaceObserver;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p3}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Landroid/net/wifi/WifiStateMachine$InterfaceObserver;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const p3, 0x2008d

    new-instance p4, Landroid/net/LinkAddress;

    invoke-direct {p4, p1}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Lu/m;->sendMessage(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public addressUpdated(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    iget-object p3, p0, Landroid/net/wifi/WifiStateMachine$InterfaceObserver;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p3}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Landroid/net/wifi/WifiStateMachine$InterfaceObserver;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const p3, 0x2008c

    new-instance p4, Landroid/net/LinkAddress;

    invoke-direct {p4, p1}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Lu/m;->sendMessage(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
