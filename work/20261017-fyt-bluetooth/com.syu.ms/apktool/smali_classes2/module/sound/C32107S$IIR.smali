.class final enum Lmodule/sound/C32107S$IIR;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/C32107S;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IIR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmodule/sound/C32107S$IIR;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lmodule/sound/C32107S$IIR;

.field public static final enum c:Lmodule/sound/C32107S$IIR;

.field public static final synthetic d:[Lmodule/sound/C32107S$IIR;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lmodule/sound/C32107S$IIR;

    const-string v1, "A"

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/C32107S$IIR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107S$IIR;->b:Lmodule/sound/C32107S$IIR;

    .line 2
    new-instance v0, Lmodule/sound/C32107S$IIR;

    const-string v1, "B"

    const/4 v2, 0x1

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/C32107S$IIR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107S$IIR;->c:Lmodule/sound/C32107S$IIR;

    .line 3
    invoke-static {}, Lmodule/sound/C32107S$IIR;->a()[Lmodule/sound/C32107S$IIR;

    move-result-object v0

    sput-object v0, Lmodule/sound/C32107S$IIR;->d:[Lmodule/sound/C32107S$IIR;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lmodule/sound/C32107S$IIR;->a:I

    return-void
.end method

.method public static synthetic a()[Lmodule/sound/C32107S$IIR;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lmodule/sound/C32107S$IIR;

    .line 1
    sget-object v1, Lmodule/sound/C32107S$IIR;->b:Lmodule/sound/C32107S$IIR;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107S$IIR;->c:Lmodule/sound/C32107S$IIR;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmodule/sound/C32107S$IIR;
    .locals 1

    .line 1
    const-class v0, Lmodule/sound/C32107S$IIR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmodule/sound/C32107S$IIR;

    return-object p0
.end method

.method public static values()[Lmodule/sound/C32107S$IIR;
    .locals 1

    .line 1
    sget-object v0, Lmodule/sound/C32107S$IIR;->d:[Lmodule/sound/C32107S$IIR;

    invoke-virtual {v0}, [Lmodule/sound/C32107S$IIR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmodule/sound/C32107S$IIR;

    return-object v0
.end method
