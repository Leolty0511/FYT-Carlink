.class public final enum Lchip/Chip$UEventName;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchip/Chip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UEventName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lchip/Chip$UEventName;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lchip/Chip$UEventName;

.field public static final enum c:Lchip/Chip$UEventName;

.field public static final enum d:Lchip/Chip$UEventName;

.field public static final enum e:Lchip/Chip$UEventName;

.field public static final enum f:Lchip/Chip$UEventName;

.field public static final enum g:Lchip/Chip$UEventName;

.field public static final enum h:Lchip/Chip$UEventName;

.field public static final enum i:Lchip/Chip$UEventName;

.field public static final enum j:Lchip/Chip$UEventName;

.field public static final enum k:Lchip/Chip$UEventName;

.field public static final enum l:Lchip/Chip$UEventName;

.field public static final enum m:Lchip/Chip$UEventName;

.field public static final enum n:Lchip/Chip$UEventName;

.field public static final enum o:Lchip/Chip$UEventName;

.field public static final synthetic p:[Lchip/Chip$UEventName;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lchip/Chip$UEventName;

    const-string v1, "REVERSING"

    const/4 v2, 0x0

    const-string v3, "car-reverse"

    invoke-direct {v0, v1, v2, v3}, Lchip/Chip$UEventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lchip/Chip$UEventName;->b:Lchip/Chip$UEventName;

    .line 2
    new-instance v0, Lchip/Chip$UEventName;

    const-string v1, "DCAMERR"

    const/4 v2, 0x1

    const-string v3, "dcam=err"

    invoke-direct {v0, v1, v2, v3}, Lchip/Chip$UEventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lchip/Chip$UEventName;->c:Lchip/Chip$UEventName;

    .line 3
    new-instance v0, Lchip/Chip$UEventName;

    const-string v1, "TW9992RESET"

    const/4 v2, 0x2

    const-string v3, "FYT_TW9992_RESET=COMPLETE"

    invoke-direct {v0, v1, v2, v3}, Lchip/Chip$UEventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lchip/Chip$UEventName;->d:Lchip/Chip$UEventName;

    .line 4
    new-instance v0, Lchip/Chip$UEventName;

    const-string v1, "TW9992RESET2"

    const/4 v2, 0x3

    const-string v3, "FYT_TW9992_RESET=COMPLETE2"

    invoke-direct {v0, v1, v2, v3}, Lchip/Chip$UEventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lchip/Chip$UEventName;->e:Lchip/Chip$UEventName;

    .line 5
    new-instance v0, Lchip/Chip$UEventName;

    const-string v1, "TW9992RESET0"

    const/4 v2, 0x4

    const-string v3, "FYT_TW9992_RESET=COMPLETE0"

    invoke-direct {v0, v1, v2, v3}, Lchip/Chip$UEventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lchip/Chip$UEventName;->f:Lchip/Chip$UEventName;

    .line 6
    new-instance v0, Lchip/Chip$UEventName;

    const-string v1, "ENTERSLEEP"

    const/4 v2, 0x5

    const-string v3, "Gsensor=wakeup"

    invoke-direct {v0, v1, v2, v3}, Lchip/Chip$UEventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lchip/Chip$UEventName;->g:Lchip/Chip$UEventName;

    .line 7
    new-instance v0, Lchip/Chip$UEventName;

    const-string v1, "ENTERRADIO"

    const/4 v2, 0x6

    const-string v3, "RADIOTAENTER"

    invoke-direct {v0, v1, v2, v3}, Lchip/Chip$UEventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lchip/Chip$UEventName;->h:Lchip/Chip$UEventName;

    .line 8
    new-instance v0, Lchip/Chip$UEventName;

    const-string v1, "EXITRADIO"

    const/4 v2, 0x7

    const-string v3, "RADIOTAEXIT"

    invoke-direct {v0, v1, v2, v3}, Lchip/Chip$UEventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lchip/Chip$UEventName;->i:Lchip/Chip$UEventName;

    .line 9
    new-instance v0, Lchip/Chip$UEventName;

    const-string v1, "ROTATIONANHLE0"

    const/16 v2, 0x8

    const-string v3, "SENSOR_STATE=0"

    invoke-direct {v0, v1, v2, v3}, Lchip/Chip$UEventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lchip/Chip$UEventName;->j:Lchip/Chip$UEventName;

    .line 10
    new-instance v0, Lchip/Chip$UEventName;

    const-string v1, "ROTATIONANHLE1"

    const/16 v2, 0x9

    const-string v3, "SENSOR_STATE=1"

    invoke-direct {v0, v1, v2, v3}, Lchip/Chip$UEventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lchip/Chip$UEventName;->k:Lchip/Chip$UEventName;

    .line 11
    new-instance v0, Lchip/Chip$UEventName;

    const-string v1, "ROTATIONANHLE2"

    const/16 v2, 0xa

    const-string v3, "SENSOR_STATE=2"

    invoke-direct {v0, v1, v2, v3}, Lchip/Chip$UEventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lchip/Chip$UEventName;->l:Lchip/Chip$UEventName;

    .line 12
    new-instance v0, Lchip/Chip$UEventName;

    const-string v1, "ROTATIONANHLE3"

    const/16 v2, 0xb

    const-string v3, "SENSOR_STATE=3"

    invoke-direct {v0, v1, v2, v3}, Lchip/Chip$UEventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lchip/Chip$UEventName;->m:Lchip/Chip$UEventName;

    .line 13
    new-instance v0, Lchip/Chip$UEventName;

    const-string v1, "LT9611C_INTERRUPT"

    const/16 v2, 0xc

    const-string v3, "REPORT_EVENT=lt6911 IIC_STATE=enable"

    invoke-direct {v0, v1, v2, v3}, Lchip/Chip$UEventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lchip/Chip$UEventName;->n:Lchip/Chip$UEventName;

    .line 14
    new-instance v0, Lchip/Chip$UEventName;

    const-string v1, "EV6202RESET"

    const/16 v2, 0xd

    const-string v3, "EV6202_NAME=rst EV6202_STATE=end"

    invoke-direct {v0, v1, v2, v3}, Lchip/Chip$UEventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lchip/Chip$UEventName;->o:Lchip/Chip$UEventName;

    .line 15
    invoke-static {}, Lchip/Chip$UEventName;->a()[Lchip/Chip$UEventName;

    move-result-object v0

    sput-object v0, Lchip/Chip$UEventName;->p:[Lchip/Chip$UEventName;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
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
    iput-object p3, p0, Lchip/Chip$UEventName;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a()[Lchip/Chip$UEventName;
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [Lchip/Chip$UEventName;

    .line 1
    sget-object v1, Lchip/Chip$UEventName;->b:Lchip/Chip$UEventName;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lchip/Chip$UEventName;->c:Lchip/Chip$UEventName;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lchip/Chip$UEventName;->d:Lchip/Chip$UEventName;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lchip/Chip$UEventName;->e:Lchip/Chip$UEventName;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lchip/Chip$UEventName;->f:Lchip/Chip$UEventName;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lchip/Chip$UEventName;->g:Lchip/Chip$UEventName;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lchip/Chip$UEventName;->h:Lchip/Chip$UEventName;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lchip/Chip$UEventName;->i:Lchip/Chip$UEventName;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lchip/Chip$UEventName;->j:Lchip/Chip$UEventName;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lchip/Chip$UEventName;->k:Lchip/Chip$UEventName;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lchip/Chip$UEventName;->l:Lchip/Chip$UEventName;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lchip/Chip$UEventName;->m:Lchip/Chip$UEventName;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lchip/Chip$UEventName;->n:Lchip/Chip$UEventName;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lchip/Chip$UEventName;->o:Lchip/Chip$UEventName;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lchip/Chip$UEventName;
    .locals 1

    .line 1
    const-class v0, Lchip/Chip$UEventName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lchip/Chip$UEventName;

    return-object p0
.end method

.method public static values()[Lchip/Chip$UEventName;
    .locals 1

    .line 1
    sget-object v0, Lchip/Chip$UEventName;->p:[Lchip/Chip$UEventName;

    invoke-virtual {v0}, [Lchip/Chip$UEventName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lchip/Chip$UEventName;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lchip/Chip$UEventName;->a:Ljava/lang/String;

    return-object v0
.end method
