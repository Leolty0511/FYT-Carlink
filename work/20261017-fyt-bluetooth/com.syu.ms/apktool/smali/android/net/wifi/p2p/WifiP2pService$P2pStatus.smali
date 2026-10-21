.class public final enum Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "P2pStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

.field public static final enum BOTH_GO_INTENT_15:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

.field public static final enum INCOMPATIBLE_PARAMETERS:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

.field public static final enum INCOMPATIBLE_PROVISIONING_METHOD:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

.field public static final enum INFORMATION_IS_CURRENTLY_UNAVAILABLE:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

.field public static final enum INVALID_PARAMETER:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

.field public static final enum LIMIT_REACHED:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

.field public static final enum NO_COMMON_CHANNEL:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

.field public static final enum PREVIOUS_PROTOCOL_ERROR:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

.field public static final enum REJECTED_BY_USER:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

.field public static final enum SUCCESS:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

.field public static final enum UNABLE_TO_ACCOMMODATE_REQUEST:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

.field public static final enum UNKNOWN:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

.field public static final enum UNKNOWN_P2P_GROUP:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->SUCCESS:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 2
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    const-string v3, "INFORMATION_IS_CURRENTLY_UNAVAILABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->INFORMATION_IS_CURRENTLY_UNAVAILABLE:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 3
    new-instance v3, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    const-string v5, "INCOMPATIBLE_PARAMETERS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->INCOMPATIBLE_PARAMETERS:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 4
    new-instance v5, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    const-string v7, "LIMIT_REACHED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->LIMIT_REACHED:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 5
    new-instance v7, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    const-string v9, "INVALID_PARAMETER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->INVALID_PARAMETER:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 6
    new-instance v9, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    const-string v11, "UNABLE_TO_ACCOMMODATE_REQUEST"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->UNABLE_TO_ACCOMMODATE_REQUEST:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 7
    new-instance v11, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    const-string v13, "PREVIOUS_PROTOCOL_ERROR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v11, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->PREVIOUS_PROTOCOL_ERROR:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 8
    new-instance v13, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    const-string v15, "NO_COMMON_CHANNEL"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v13, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->NO_COMMON_CHANNEL:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 9
    new-instance v15, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    const-string v14, "UNKNOWN_P2P_GROUP"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v15, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->UNKNOWN_P2P_GROUP:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 10
    new-instance v14, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    const-string v12, "BOTH_GO_INTENT_15"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v14, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->BOTH_GO_INTENT_15:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 11
    new-instance v12, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    const-string v10, "INCOMPATIBLE_PROVISIONING_METHOD"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v12, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->INCOMPATIBLE_PROVISIONING_METHOD:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 12
    new-instance v10, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    const-string v8, "REJECTED_BY_USER"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v10, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->REJECTED_BY_USER:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 13
    new-instance v8, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    const-string v6, "UNKNOWN"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v8, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->UNKNOWN:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    const/16 v6, 0xd

    new-array v6, v6, [Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    aput-object v8, v6, v4

    .line 14
    sput-object v6, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->$VALUES:[Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 2
    sget-object p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->UNKNOWN:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    return-object p0

    .line 3
    :pswitch_0
    sget-object p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->REJECTED_BY_USER:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    return-object p0

    .line 4
    :pswitch_1
    sget-object p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->INCOMPATIBLE_PROVISIONING_METHOD:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    return-object p0

    .line 5
    :pswitch_2
    sget-object p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->BOTH_GO_INTENT_15:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    return-object p0

    .line 6
    :pswitch_3
    sget-object p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->UNKNOWN_P2P_GROUP:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    return-object p0

    .line 7
    :pswitch_4
    sget-object p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->NO_COMMON_CHANNEL:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    return-object p0

    .line 8
    :pswitch_5
    sget-object p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->PREVIOUS_PROTOCOL_ERROR:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    return-object p0

    .line 9
    :pswitch_6
    sget-object p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->UNABLE_TO_ACCOMMODATE_REQUEST:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    return-object p0

    .line 10
    :pswitch_7
    sget-object p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->INVALID_PARAMETER:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    return-object p0

    .line 11
    :pswitch_8
    sget-object p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->LIMIT_REACHED:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    return-object p0

    .line 12
    :pswitch_9
    sget-object p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->INCOMPATIBLE_PARAMETERS:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    return-object p0

    .line 13
    :pswitch_a
    sget-object p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->INFORMATION_IS_CURRENTLY_UNAVAILABLE:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    return-object p0

    .line 14
    :pswitch_b
    sget-object p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->SUCCESS:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    .locals 1

    .line 1
    const-class v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    return-object p0
.end method

.method public static values()[Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    .locals 1

    .line 1
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->$VALUES:[Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    invoke-virtual {v0}, [Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    return-object v0
.end method
