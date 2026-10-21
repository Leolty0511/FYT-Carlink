.class Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClientInfo"
.end annotation


# instance fields
.field private mMessenger:Landroid/os/Messenger;

.field private mReqList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mServList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Landroid/net/wifi/p2p/WifiP2pService;


# direct methods
.method private constructor <init>(Landroid/net/wifi/p2p/WifiP2pService;Landroid/os/Messenger;)V
    .locals 0

    .line 2
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mMessenger:Landroid/os/Messenger;

    .line 4
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mServList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/wifi/p2p/WifiP2pService;Landroid/os/Messenger;Landroid/net/wifi/p2p/WifiP2pService$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;-><init>(Landroid/net/wifi/p2p/WifiP2pService;Landroid/os/Messenger;)V

    return-void
.end method

.method public static synthetic access$12200(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic access$12300(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mServList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$12400(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/os/Messenger;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mMessenger:Landroid/os/Messenger;

    return-object p0
.end method
