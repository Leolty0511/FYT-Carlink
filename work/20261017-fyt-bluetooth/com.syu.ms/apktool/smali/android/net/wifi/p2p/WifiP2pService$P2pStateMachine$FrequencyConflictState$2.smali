.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->notifyFrequencyConflict()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;


# direct methods
.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState$2;->this$2:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState$2;->this$2:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;

    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const p2, 0x23005

    invoke-virtual {p1, p2}, Lu/m;->sendMessage(I)V

    return-void
.end method
