.class public final enum Landroid/net/wifi/WifiConfiguration$IpAssignment;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IpAssignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/net/wifi/WifiConfiguration$IpAssignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/wifi/WifiConfiguration$IpAssignment;

.field public static final enum DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

.field public static final enum STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

.field public static final enum UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;

    const-string v1, "STATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration$IpAssignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 2
    new-instance v1, Landroid/net/wifi/WifiConfiguration$IpAssignment;

    const-string v3, "DHCP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/net/wifi/WifiConfiguration$IpAssignment;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 3
    new-instance v3, Landroid/net/wifi/WifiConfiguration$IpAssignment;

    const-string v5, "UNASSIGNED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/net/wifi/WifiConfiguration$IpAssignment;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/net/wifi/WifiConfiguration$IpAssignment;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Landroid/net/wifi/WifiConfiguration$IpAssignment;->$VALUES:[Landroid/net/wifi/WifiConfiguration$IpAssignment;

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

.method public static valueOf(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .locals 1

    .line 1
    const-class v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiConfiguration$IpAssignment;

    return-object p0
.end method

.method public static values()[Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .locals 1

    .line 1
    sget-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->$VALUES:[Landroid/net/wifi/WifiConfiguration$IpAssignment;

    invoke-virtual {v0}, [Landroid/net/wifi/WifiConfiguration$IpAssignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/wifi/WifiConfiguration$IpAssignment;

    return-object v0
.end method
