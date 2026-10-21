.class public final enum Lmodule/sound/C7739_QC$CHANNEL;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/C7739_QC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CHANNEL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmodule/sound/C7739_QC$CHANNEL;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lmodule/sound/C7739_QC$CHANNEL;

.field public static final enum c:Lmodule/sound/C7739_QC$CHANNEL;

.field public static final enum d:Lmodule/sound/C7739_QC$CHANNEL;

.field public static final enum e:Lmodule/sound/C7739_QC$CHANNEL;

.field public static final enum f:Lmodule/sound/C7739_QC$CHANNEL;

.field public static final synthetic g:[Lmodule/sound/C7739_QC$CHANNEL;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lmodule/sound/C7739_QC$CHANNEL;

    const-string v1, "IN1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lmodule/sound/C7739_QC$CHANNEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C7739_QC$CHANNEL;->b:Lmodule/sound/C7739_QC$CHANNEL;

    .line 2
    new-instance v0, Lmodule/sound/C7739_QC$CHANNEL;

    const-string v1, "IN2"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lmodule/sound/C7739_QC$CHANNEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C7739_QC$CHANNEL;->c:Lmodule/sound/C7739_QC$CHANNEL;

    .line 3
    new-instance v0, Lmodule/sound/C7739_QC$CHANNEL;

    const-string v1, "IN3"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lmodule/sound/C7739_QC$CHANNEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C7739_QC$CHANNEL;->d:Lmodule/sound/C7739_QC$CHANNEL;

    .line 4
    new-instance v0, Lmodule/sound/C7739_QC$CHANNEL;

    const-string v1, "IN4"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lmodule/sound/C7739_QC$CHANNEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C7739_QC$CHANNEL;->e:Lmodule/sound/C7739_QC$CHANNEL;

    .line 5
    new-instance v0, Lmodule/sound/C7739_QC$CHANNEL;

    const-string v1, "IN5"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lmodule/sound/C7739_QC$CHANNEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C7739_QC$CHANNEL;->f:Lmodule/sound/C7739_QC$CHANNEL;

    .line 6
    invoke-static {}, Lmodule/sound/C7739_QC$CHANNEL;->a()[Lmodule/sound/C7739_QC$CHANNEL;

    move-result-object v0

    sput-object v0, Lmodule/sound/C7739_QC$CHANNEL;->g:[Lmodule/sound/C7739_QC$CHANNEL;

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
    iput p3, p0, Lmodule/sound/C7739_QC$CHANNEL;->a:I

    return-void
.end method

.method public static synthetic a()[Lmodule/sound/C7739_QC$CHANNEL;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lmodule/sound/C7739_QC$CHANNEL;

    .line 1
    sget-object v1, Lmodule/sound/C7739_QC$CHANNEL;->b:Lmodule/sound/C7739_QC$CHANNEL;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C7739_QC$CHANNEL;->c:Lmodule/sound/C7739_QC$CHANNEL;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C7739_QC$CHANNEL;->d:Lmodule/sound/C7739_QC$CHANNEL;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C7739_QC$CHANNEL;->e:Lmodule/sound/C7739_QC$CHANNEL;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C7739_QC$CHANNEL;->f:Lmodule/sound/C7739_QC$CHANNEL;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmodule/sound/C7739_QC$CHANNEL;
    .locals 1

    .line 1
    const-class v0, Lmodule/sound/C7739_QC$CHANNEL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmodule/sound/C7739_QC$CHANNEL;

    return-object p0
.end method

.method public static values()[Lmodule/sound/C7739_QC$CHANNEL;
    .locals 1

    .line 1
    sget-object v0, Lmodule/sound/C7739_QC$CHANNEL;->g:[Lmodule/sound/C7739_QC$CHANNEL;

    invoke-virtual {v0}, [Lmodule/sound/C7739_QC$CHANNEL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmodule/sound/C7739_QC$CHANNEL;

    return-object v0
.end method
