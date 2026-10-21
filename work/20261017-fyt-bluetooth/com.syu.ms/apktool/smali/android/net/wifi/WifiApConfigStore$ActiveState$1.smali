.class Landroid/net/wifi/WifiApConfigStore$ActiveState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiApConfigStore$ActiveState;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Landroid/net/wifi/WifiApConfigStore$ActiveState;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiApConfigStore$ActiveState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiApConfigStore$ActiveState$1;->this$1:Landroid/net/wifi/WifiApConfigStore$ActiveState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore$ActiveState$1;->this$1:Landroid/net/wifi/WifiApConfigStore$ActiveState;

    iget-object v0, v0, Landroid/net/wifi/WifiApConfigStore$ActiveState;->this$0:Landroid/net/wifi/WifiApConfigStore;

    invoke-static {v0}, Landroid/net/wifi/WifiApConfigStore;->access$000(Landroid/net/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiApConfigStore;->access$400(Landroid/net/wifi/WifiApConfigStore;Landroid/net/wifi/WifiConfiguration;)V

    .line 2
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore$ActiveState$1;->this$1:Landroid/net/wifi/WifiApConfigStore$ActiveState;

    iget-object v0, v0, Landroid/net/wifi/WifiApConfigStore$ActiveState;->this$0:Landroid/net/wifi/WifiApConfigStore;

    const v1, 0x2001a

    invoke-virtual {v0, v1}, Lu/m;->sendMessage(I)V

    return-void
.end method
