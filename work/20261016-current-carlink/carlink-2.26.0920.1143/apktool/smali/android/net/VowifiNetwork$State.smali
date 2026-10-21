.class public final enum Landroid/net/VowifiNetwork$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/VowifiNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/net/VowifiNetwork$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/VowifiNetwork$State;

.field public static final enum CONNECTED:Landroid/net/VowifiNetwork$State;

.field public static final enum CONNECTING:Landroid/net/VowifiNetwork$State;

.field public static final enum DISCONNECTED:Landroid/net/VowifiNetwork$State;

.field public static final enum UNKNOWN:Landroid/net/VowifiNetwork$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Landroid/net/VowifiNetwork$State;

    .line 2
    .line 3
    const-string v1, "CONNECTING"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Landroid/net/VowifiNetwork$State;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroid/net/VowifiNetwork$State;->CONNECTING:Landroid/net/VowifiNetwork$State;

    .line 10
    .line 11
    new-instance v1, Landroid/net/VowifiNetwork$State;

    .line 12
    .line 13
    const-string v3, "CONNECTED"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Landroid/net/VowifiNetwork$State;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Landroid/net/VowifiNetwork$State;->CONNECTED:Landroid/net/VowifiNetwork$State;

    .line 20
    .line 21
    new-instance v3, Landroid/net/VowifiNetwork$State;

    .line 22
    .line 23
    const-string v5, "DISCONNECTED"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Landroid/net/VowifiNetwork$State;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Landroid/net/VowifiNetwork$State;->DISCONNECTED:Landroid/net/VowifiNetwork$State;

    .line 30
    .line 31
    new-instance v5, Landroid/net/VowifiNetwork$State;

    .line 32
    .line 33
    const-string v7, "UNKNOWN"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Landroid/net/VowifiNetwork$State;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Landroid/net/VowifiNetwork$State;->UNKNOWN:Landroid/net/VowifiNetwork$State;

    .line 40
    .line 41
    const/4 v7, 0x4

    .line 42
    new-array v7, v7, [Landroid/net/VowifiNetwork$State;

    .line 43
    .line 44
    aput-object v0, v7, v2

    .line 45
    .line 46
    aput-object v1, v7, v4

    .line 47
    .line 48
    aput-object v3, v7, v6

    .line 49
    .line 50
    aput-object v5, v7, v8

    .line 51
    .line 52
    sput-object v7, Landroid/net/VowifiNetwork$State;->$VALUES:[Landroid/net/VowifiNetwork$State;

    .line 53
    .line 54
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/VowifiNetwork$State;
    .locals 1

    const-class v0, Landroid/net/VowifiNetwork$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/net/VowifiNetwork$State;

    return-object p0
.end method

.method public static values()[Landroid/net/VowifiNetwork$State;
    .locals 1

    sget-object v0, Landroid/net/VowifiNetwork$State;->$VALUES:[Landroid/net/VowifiNetwork$State;

    invoke-virtual {v0}, [Landroid/net/VowifiNetwork$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/VowifiNetwork$State;

    return-object v0
.end method
