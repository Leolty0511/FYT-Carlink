.class public final enum Lmodule/video/V8288$CHANNEL;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmodule/video/V8288$CHANNEL;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lmodule/video/V8288$CHANNEL;

.field public static final enum c:Lmodule/video/V8288$CHANNEL;

.field public static final enum d:Lmodule/video/V8288$CHANNEL;

.field public static final enum e:Lmodule/video/V8288$CHANNEL;

.field public static final synthetic f:[Lmodule/video/V8288$CHANNEL;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lmodule/video/V8288$CHANNEL;

    const-string v1, "CVNULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lmodule/video/V8288$CHANNEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/video/V8288$CHANNEL;->b:Lmodule/video/V8288$CHANNEL;

    .line 2
    new-instance v0, Lmodule/video/V8288$CHANNEL;

    const-string v1, "CVBS0"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lmodule/video/V8288$CHANNEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/video/V8288$CHANNEL;->c:Lmodule/video/V8288$CHANNEL;

    .line 3
    new-instance v0, Lmodule/video/V8288$CHANNEL;

    const-string v1, "CVBS1"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lmodule/video/V8288$CHANNEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/video/V8288$CHANNEL;->d:Lmodule/video/V8288$CHANNEL;

    .line 4
    new-instance v0, Lmodule/video/V8288$CHANNEL;

    const-string v1, "CVBS2"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lmodule/video/V8288$CHANNEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/video/V8288$CHANNEL;->e:Lmodule/video/V8288$CHANNEL;

    .line 5
    invoke-static {}, Lmodule/video/V8288$CHANNEL;->a()[Lmodule/video/V8288$CHANNEL;

    move-result-object v0

    sput-object v0, Lmodule/video/V8288$CHANNEL;->f:[Lmodule/video/V8288$CHANNEL;

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
    iput p3, p0, Lmodule/video/V8288$CHANNEL;->a:I

    return-void
.end method

.method public static synthetic a()[Lmodule/video/V8288$CHANNEL;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lmodule/video/V8288$CHANNEL;

    .line 1
    sget-object v1, Lmodule/video/V8288$CHANNEL;->b:Lmodule/video/V8288$CHANNEL;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lmodule/video/V8288$CHANNEL;->c:Lmodule/video/V8288$CHANNEL;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lmodule/video/V8288$CHANNEL;->d:Lmodule/video/V8288$CHANNEL;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lmodule/video/V8288$CHANNEL;->e:Lmodule/video/V8288$CHANNEL;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmodule/video/V8288$CHANNEL;
    .locals 1

    .line 1
    const-class v0, Lmodule/video/V8288$CHANNEL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmodule/video/V8288$CHANNEL;

    return-object p0
.end method

.method public static values()[Lmodule/video/V8288$CHANNEL;
    .locals 1

    .line 1
    sget-object v0, Lmodule/video/V8288$CHANNEL;->f:[Lmodule/video/V8288$CHANNEL;

    invoke-virtual {v0}, [Lmodule/video/V8288$CHANNEL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmodule/video/V8288$CHANNEL;

    return-object v0
.end method
