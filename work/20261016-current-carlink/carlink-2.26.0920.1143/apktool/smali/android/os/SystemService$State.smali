.class public final enum Landroid/os/SystemService$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/os/SystemService$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/os/SystemService$State;

.field public static final enum RESTARTING:Landroid/os/SystemService$State;

.field public static final enum RUNNING:Landroid/os/SystemService$State;

.field public static final enum STOPPED:Landroid/os/SystemService$State;

.field public static final enum STOPPING:Landroid/os/SystemService$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Landroid/os/SystemService$State;

    .line 2
    .line 3
    const-string/jumbo v1, "running"

    .line 4
    .line 5
    .line 6
    const-string v2, "RUNNING"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v0, v2, v3, v1}, Landroid/os/SystemService$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Landroid/os/SystemService$State;->RUNNING:Landroid/os/SystemService$State;

    .line 13
    .line 14
    new-instance v1, Landroid/os/SystemService$State;

    .line 15
    .line 16
    const-string/jumbo v2, "stopping"

    .line 17
    .line 18
    .line 19
    const-string v4, "STOPPING"

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    invoke-direct {v1, v4, v5, v2}, Landroid/os/SystemService$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sput-object v1, Landroid/os/SystemService$State;->STOPPING:Landroid/os/SystemService$State;

    .line 26
    .line 27
    new-instance v2, Landroid/os/SystemService$State;

    .line 28
    .line 29
    const-string/jumbo v4, "stopped"

    .line 30
    .line 31
    .line 32
    const-string v6, "STOPPED"

    .line 33
    .line 34
    const/4 v7, 0x2

    .line 35
    invoke-direct {v2, v6, v7, v4}, Landroid/os/SystemService$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sput-object v2, Landroid/os/SystemService$State;->STOPPED:Landroid/os/SystemService$State;

    .line 39
    .line 40
    new-instance v4, Landroid/os/SystemService$State;

    .line 41
    .line 42
    const-string/jumbo v6, "restarting"

    .line 43
    .line 44
    .line 45
    const-string v8, "RESTARTING"

    .line 46
    .line 47
    const/4 v9, 0x3

    .line 48
    invoke-direct {v4, v8, v9, v6}, Landroid/os/SystemService$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sput-object v4, Landroid/os/SystemService$State;->RESTARTING:Landroid/os/SystemService$State;

    .line 52
    .line 53
    const/4 v6, 0x4

    .line 54
    new-array v6, v6, [Landroid/os/SystemService$State;

    .line 55
    .line 56
    aput-object v0, v6, v3

    .line 57
    .line 58
    aput-object v1, v6, v5

    .line 59
    .line 60
    aput-object v2, v6, v7

    .line 61
    .line 62
    aput-object v4, v6, v9

    .line 63
    .line 64
    sput-object v6, Landroid/os/SystemService$State;->$VALUES:[Landroid/os/SystemService$State;

    .line 65
    .line 66
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/SystemService;->access$000()Ljava/util/HashMap;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1, p3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/os/SystemService$State;
    .locals 1

    const-class v0, Landroid/os/SystemService$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/os/SystemService$State;

    return-object p0
.end method

.method public static values()[Landroid/os/SystemService$State;
    .locals 1

    sget-object v0, Landroid/os/SystemService$State;->$VALUES:[Landroid/os/SystemService$State;

    invoke-virtual {v0}, [Landroid/os/SystemService$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/SystemService$State;

    return-object v0
.end method
