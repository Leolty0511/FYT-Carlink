.class public final enum Landroid/net/NetworkInfo$DetailedState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DetailedState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/net/NetworkInfo$DetailedState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/NetworkInfo$DetailedState;

.field public static final enum AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

.field public static final enum BLOCKED:Landroid/net/NetworkInfo$DetailedState;

.field public static final enum CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

.field public static final enum CONNECTED:Landroid/net/NetworkInfo$DetailedState;

.field public static final enum CONNECTING:Landroid/net/NetworkInfo$DetailedState;

.field public static final enum DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

.field public static final enum DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

.field public static final enum FAILED:Landroid/net/NetworkInfo$DetailedState;

.field public static final enum IDLE:Landroid/net/NetworkInfo$DetailedState;

.field public static final enum OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

.field public static final enum SCANNING:Landroid/net/NetworkInfo$DetailedState;

.field public static final enum SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

.field public static final enum VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    .line 2
    new-instance v1, Landroid/net/NetworkInfo$DetailedState;

    const-string v3, "SCANNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    .line 3
    new-instance v3, Landroid/net/NetworkInfo$DetailedState;

    const-string v5, "CONNECTING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 4
    new-instance v5, Landroid/net/NetworkInfo$DetailedState;

    const-string v7, "AUTHENTICATING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    .line 5
    new-instance v7, Landroid/net/NetworkInfo$DetailedState;

    const-string v9, "OBTAINING_IPADDR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    .line 6
    new-instance v9, Landroid/net/NetworkInfo$DetailedState;

    const-string v11, "CONNECTED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 7
    new-instance v11, Landroid/net/NetworkInfo$DetailedState;

    const-string v13, "SUSPENDED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    .line 8
    new-instance v13, Landroid/net/NetworkInfo$DetailedState;

    const-string v15, "DISCONNECTING"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v13, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 9
    new-instance v15, Landroid/net/NetworkInfo$DetailedState;

    const-string v14, "DISCONNECTED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v15, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 10
    new-instance v14, Landroid/net/NetworkInfo$DetailedState;

    const-string v12, "FAILED"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v14, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    .line 11
    new-instance v12, Landroid/net/NetworkInfo$DetailedState;

    const-string v10, "BLOCKED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v12, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    .line 12
    new-instance v10, Landroid/net/NetworkInfo$DetailedState;

    const-string v8, "VERIFYING_POOR_LINK"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v10, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    .line 13
    new-instance v8, Landroid/net/NetworkInfo$DetailedState;

    const-string v6, "CAPTIVE_PORTAL_CHECK"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v8, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    const/16 v6, 0xd

    new-array v6, v6, [Landroid/net/NetworkInfo$DetailedState;

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
    sput-object v6, Landroid/net/NetworkInfo$DetailedState;->$VALUES:[Landroid/net/NetworkInfo$DetailedState;

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

.method public static valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .line 1
    const-class v0, Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkInfo$DetailedState;

    return-object p0
.end method

.method public static values()[Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .line 1
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->$VALUES:[Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, [Landroid/net/NetworkInfo$DetailedState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method
