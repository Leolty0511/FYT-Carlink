.class public final enum Lcom/syu/carlink/utils/ScreenDensityCalculator$DeviceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/syu/carlink/utils/ScreenDensityCalculator$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LANDSCAPE:Lcom/syu/carlink/utils/ScreenDensityCalculator$DeviceType;

.field public static final enum PORTRAIT:Lcom/syu/carlink/utils/ScreenDensityCalculator$DeviceType;

.field public static final synthetic c:[Lcom/syu/carlink/utils/ScreenDensityCalculator$DeviceType;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/syu/carlink/utils/ScreenDensityCalculator$DeviceType;

    const-string v1, "landscape"

    const-string v2, "LANDSCAPE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/syu/carlink/utils/ScreenDensityCalculator$DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/syu/carlink/utils/ScreenDensityCalculator$DeviceType;->LANDSCAPE:Lcom/syu/carlink/utils/ScreenDensityCalculator$DeviceType;

    new-instance v1, Lcom/syu/carlink/utils/ScreenDensityCalculator$DeviceType;

    const-string v2, "portrait"

    const-string v4, "PORTRAIT"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/syu/carlink/utils/ScreenDensityCalculator$DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/syu/carlink/utils/ScreenDensityCalculator$DeviceType;->PORTRAIT:Lcom/syu/carlink/utils/ScreenDensityCalculator$DeviceType;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/syu/carlink/utils/ScreenDensityCalculator$DeviceType;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    sput-object v2, Lcom/syu/carlink/utils/ScreenDensityCalculator$DeviceType;->c:[Lcom/syu/carlink/utils/ScreenDensityCalculator$DeviceType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/syu/carlink/utils/ScreenDensityCalculator$DeviceType;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/syu/carlink/utils/ScreenDensityCalculator$DeviceType;
    .locals 1

    const-class v0, Lcom/syu/carlink/utils/ScreenDensityCalculator$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/syu/carlink/utils/ScreenDensityCalculator$DeviceType;

    return-object p0
.end method

.method public static values()[Lcom/syu/carlink/utils/ScreenDensityCalculator$DeviceType;
    .locals 1

    sget-object v0, Lcom/syu/carlink/utils/ScreenDensityCalculator$DeviceType;->c:[Lcom/syu/carlink/utils/ScreenDensityCalculator$DeviceType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/syu/carlink/utils/ScreenDensityCalculator$DeviceType;

    return-object v0
.end method


# virtual methods
.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/syu/carlink/utils/ScreenDensityCalculator$DeviceType;->b:Ljava/lang/String;

    return-object v0
.end method
