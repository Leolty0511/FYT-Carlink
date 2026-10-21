.class final enum Lmodule/sound/C32107$HPF;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/C32107;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HPF"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmodule/sound/C32107$HPF;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lmodule/sound/C32107$HPF;

.field public static final enum c:Lmodule/sound/C32107$HPF;

.field public static final enum d:Lmodule/sound/C32107$HPF;

.field public static final enum e:Lmodule/sound/C32107$HPF;

.field public static final synthetic f:[Lmodule/sound/C32107$HPF;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lmodule/sound/C32107$HPF;

    const-string v1, "FA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lmodule/sound/C32107$HPF;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$HPF;->b:Lmodule/sound/C32107$HPF;

    .line 2
    new-instance v0, Lmodule/sound/C32107$HPF;

    const-string v1, "FB"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lmodule/sound/C32107$HPF;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$HPF;->c:Lmodule/sound/C32107$HPF;

    .line 3
    new-instance v0, Lmodule/sound/C32107$HPF;

    const-string v1, "RA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lmodule/sound/C32107$HPF;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$HPF;->d:Lmodule/sound/C32107$HPF;

    .line 4
    new-instance v0, Lmodule/sound/C32107$HPF;

    const-string v1, "RB"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lmodule/sound/C32107$HPF;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$HPF;->e:Lmodule/sound/C32107$HPF;

    .line 5
    invoke-static {}, Lmodule/sound/C32107$HPF;->a()[Lmodule/sound/C32107$HPF;

    move-result-object v0

    sput-object v0, Lmodule/sound/C32107$HPF;->f:[Lmodule/sound/C32107$HPF;

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
    iput p3, p0, Lmodule/sound/C32107$HPF;->a:I

    return-void
.end method

.method public static synthetic a()[Lmodule/sound/C32107$HPF;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lmodule/sound/C32107$HPF;

    .line 1
    sget-object v1, Lmodule/sound/C32107$HPF;->b:Lmodule/sound/C32107$HPF;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$HPF;->c:Lmodule/sound/C32107$HPF;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$HPF;->d:Lmodule/sound/C32107$HPF;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$HPF;->e:Lmodule/sound/C32107$HPF;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmodule/sound/C32107$HPF;
    .locals 1

    .line 1
    const-class v0, Lmodule/sound/C32107$HPF;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmodule/sound/C32107$HPF;

    return-object p0
.end method

.method public static values()[Lmodule/sound/C32107$HPF;
    .locals 1

    .line 1
    sget-object v0, Lmodule/sound/C32107$HPF;->f:[Lmodule/sound/C32107$HPF;

    invoke-virtual {v0}, [Lmodule/sound/C32107$HPF;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmodule/sound/C32107$HPF;

    return-object v0
.end method
