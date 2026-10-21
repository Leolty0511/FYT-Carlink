.class final enum Lchip/Chip$UEventKey;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchip/Chip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UEventKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lchip/Chip$UEventKey;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lchip/Chip$UEventKey;

.field public static final synthetic c:[Lchip/Chip$UEventKey;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lchip/Chip$UEventKey;

    const-string v1, "REVERSING"

    const/4 v2, 0x0

    const-string v3, "GPIO_STATE"

    invoke-direct {v0, v1, v2, v3}, Lchip/Chip$UEventKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lchip/Chip$UEventKey;->b:Lchip/Chip$UEventKey;

    .line 2
    invoke-static {}, Lchip/Chip$UEventKey;->a()[Lchip/Chip$UEventKey;

    move-result-object v0

    sput-object v0, Lchip/Chip$UEventKey;->c:[Lchip/Chip$UEventKey;

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
    iput-object p3, p0, Lchip/Chip$UEventKey;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a()[Lchip/Chip$UEventKey;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lchip/Chip$UEventKey;

    .line 1
    sget-object v1, Lchip/Chip$UEventKey;->b:Lchip/Chip$UEventKey;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lchip/Chip$UEventKey;
    .locals 1

    .line 1
    const-class v0, Lchip/Chip$UEventKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lchip/Chip$UEventKey;

    return-object p0
.end method

.method public static values()[Lchip/Chip$UEventKey;
    .locals 1

    .line 1
    sget-object v0, Lchip/Chip$UEventKey;->c:[Lchip/Chip$UEventKey;

    invoke-virtual {v0}, [Lchip/Chip$UEventKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lchip/Chip$UEventKey;

    return-object v0
.end method
