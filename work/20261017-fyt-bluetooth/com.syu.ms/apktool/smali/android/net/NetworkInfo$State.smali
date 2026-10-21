.class public final enum Landroid/net/NetworkInfo$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/net/NetworkInfo$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/NetworkInfo$State;

.field public static final enum CONNECTED:Landroid/net/NetworkInfo$State;

.field public static final enum CONNECTING:Landroid/net/NetworkInfo$State;

.field public static final enum DISCONNECTED:Landroid/net/NetworkInfo$State;

.field public static final enum DISCONNECTING:Landroid/net/NetworkInfo$State;

.field public static final enum SUSPENDED:Landroid/net/NetworkInfo$State;

.field public static final enum UNKNOWN:Landroid/net/NetworkInfo$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Landroid/net/NetworkInfo$State;

    const-string v1, "CONNECTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    new-instance v1, Landroid/net/NetworkInfo$State;

    const-string v3, "CONNECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/net/NetworkInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    new-instance v3, Landroid/net/NetworkInfo$State;

    const-string v5, "SUSPENDED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/net/NetworkInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    new-instance v5, Landroid/net/NetworkInfo$State;

    const-string v7, "DISCONNECTING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/net/NetworkInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    new-instance v7, Landroid/net/NetworkInfo$State;

    const-string v9, "DISCONNECTED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroid/net/NetworkInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    new-instance v9, Landroid/net/NetworkInfo$State;

    const-string v11, "UNKNOWN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Landroid/net/NetworkInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    const/4 v11, 0x6

    new-array v11, v11, [Landroid/net/NetworkInfo$State;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 2
    sput-object v11, Landroid/net/NetworkInfo$State;->$VALUES:[Landroid/net/NetworkInfo$State;

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

.method public static valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$State;
    .locals 1

    .line 1
    const-class v0, Landroid/net/NetworkInfo$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkInfo$State;

    return-object p0
.end method

.method public static values()[Landroid/net/NetworkInfo$State;
    .locals 1

    .line 1
    sget-object v0, Landroid/net/NetworkInfo$State;->$VALUES:[Landroid/net/NetworkInfo$State;

    invoke-virtual {v0}, [Landroid/net/NetworkInfo$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkInfo$State;

    return-object v0
.end method
