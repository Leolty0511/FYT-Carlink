.class public final enum Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;
.super Ljava/lang/Enum;
.source "MemoryFileFlag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CAN_READ:Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;

.field public static final enum CAN_WRITE:Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;

.field private static final synthetic ENUM$VALUES:[Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;


# instance fields
.field private flag:B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;

    const-string v1, "CAN_READ"

    invoke-direct {v0, v1, v2, v2}, Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;->CAN_READ:Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;

    new-instance v0, Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;

    const-string v1, "CAN_WRITE"

    invoke-direct {v0, v1, v3, v3}, Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;->CAN_WRITE:Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;

    sget-object v1, Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;->CAN_READ:Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;->CAN_WRITE:Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;

    aput-object v1, v0, v3

    sput-object v0, Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;->ENUM$VALUES:[Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .param p3, "flag"    # B

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput-byte p3, p0, Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;->flag:B

    .line 11
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;->ENUM$VALUES:[Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;

    array-length v1, v0

    new-array v2, v1, [Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getFlag()B
    .locals 1

    .prologue
    .line 14
    iget-byte v0, p0, Lcom/autonavi/amapauto/gdarcameraservice/constant/MemoryFileFlag;->flag:B

    return v0
.end method
