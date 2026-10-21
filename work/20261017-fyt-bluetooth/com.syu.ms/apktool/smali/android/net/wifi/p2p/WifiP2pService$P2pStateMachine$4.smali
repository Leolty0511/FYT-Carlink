.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->notifyInvitationReceived()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

.field public final synthetic val$pin:Landroid/widget/EditText;

.field public final synthetic val$wps:Landroid/net/wifi/WpsInfo;


# direct methods
.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/WpsInfo;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$4;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iput-object p2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$4;->val$wps:Landroid/net/wifi/WpsInfo;

    iput-object p3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$4;->val$pin:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$4;->val$wps:Landroid/net/wifi/WpsInfo;

    iget p1, p1, Landroid/net/wifi/WpsInfo;->setup:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$4;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object p1

    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget-object p2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$4;->val$pin:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$4;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const p2, 0x23002

    invoke-virtual {p1, p2}, Lu/m;->sendMessage(I)V

    return-void
.end method
