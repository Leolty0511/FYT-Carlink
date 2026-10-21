.class public final enum Lmodule/sound/C3702$CHANNEL;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/C3702;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CHANNEL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmodule/sound/C3702$CHANNEL;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lmodule/sound/C3702$CHANNEL;

.field public static final enum c:Lmodule/sound/C3702$CHANNEL;

.field public static final enum d:Lmodule/sound/C3702$CHANNEL;

.field public static final enum e:Lmodule/sound/C3702$CHANNEL;

.field public static final enum f:Lmodule/sound/C3702$CHANNEL;

.field public static final enum g:Lmodule/sound/C3702$CHANNEL;

.field public static final enum h:Lmodule/sound/C3702$CHANNEL;

.field public static final enum i:Lmodule/sound/C3702$CHANNEL;

.field public static final enum j:Lmodule/sound/C3702$CHANNEL;

.field public static final enum k:Lmodule/sound/C3702$CHANNEL;

.field public static final synthetic l:[Lmodule/sound/C3702$CHANNEL;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lmodule/sound/C3702$CHANNEL;

    const-string v1, "A"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lmodule/sound/C3702$CHANNEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C3702$CHANNEL;->b:Lmodule/sound/C3702$CHANNEL;

    .line 2
    new-instance v0, Lmodule/sound/C3702$CHANNEL;

    const-string v1, "B"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lmodule/sound/C3702$CHANNEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C3702$CHANNEL;->c:Lmodule/sound/C3702$CHANNEL;

    .line 3
    new-instance v0, Lmodule/sound/C3702$CHANNEL;

    const-string v1, "C"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lmodule/sound/C3702$CHANNEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C3702$CHANNEL;->d:Lmodule/sound/C3702$CHANNEL;

    .line 4
    new-instance v0, Lmodule/sound/C3702$CHANNEL;

    const-string v1, "D"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lmodule/sound/C3702$CHANNEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C3702$CHANNEL;->e:Lmodule/sound/C3702$CHANNEL;

    .line 5
    new-instance v0, Lmodule/sound/C3702$CHANNEL;

    const-string v1, "E1"

    const/4 v2, 0x4

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/C3702$CHANNEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C3702$CHANNEL;->f:Lmodule/sound/C3702$CHANNEL;

    .line 6
    new-instance v0, Lmodule/sound/C3702$CHANNEL;

    const-string v1, "E2"

    const/4 v2, 0x5

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/C3702$CHANNEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C3702$CHANNEL;->g:Lmodule/sound/C3702$CHANNEL;

    .line 7
    new-instance v0, Lmodule/sound/C3702$CHANNEL;

    const-string v1, "D_DIFF"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lmodule/sound/C3702$CHANNEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C3702$CHANNEL;->h:Lmodule/sound/C3702$CHANNEL;

    .line 8
    new-instance v0, Lmodule/sound/C3702$CHANNEL;

    const-string v1, "E_FULL"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/C3702$CHANNEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C3702$CHANNEL;->i:Lmodule/sound/C3702$CHANNEL;

    .line 9
    new-instance v0, Lmodule/sound/C3702$CHANNEL;

    const-string v1, "SHORT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v3, v2}, Lmodule/sound/C3702$CHANNEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C3702$CHANNEL;->j:Lmodule/sound/C3702$CHANNEL;

    .line 10
    new-instance v0, Lmodule/sound/C3702$CHANNEL;

    const-string v1, "BIAS"

    const/16 v3, 0x80

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/C3702$CHANNEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C3702$CHANNEL;->k:Lmodule/sound/C3702$CHANNEL;

    .line 11
    invoke-static {}, Lmodule/sound/C3702$CHANNEL;->a()[Lmodule/sound/C3702$CHANNEL;

    move-result-object v0

    sput-object v0, Lmodule/sound/C3702$CHANNEL;->l:[Lmodule/sound/C3702$CHANNEL;

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
    iput p3, p0, Lmodule/sound/C3702$CHANNEL;->a:I

    return-void
.end method

.method public static synthetic a()[Lmodule/sound/C3702$CHANNEL;
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Lmodule/sound/C3702$CHANNEL;

    .line 1
    sget-object v1, Lmodule/sound/C3702$CHANNEL;->b:Lmodule/sound/C3702$CHANNEL;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C3702$CHANNEL;->c:Lmodule/sound/C3702$CHANNEL;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C3702$CHANNEL;->d:Lmodule/sound/C3702$CHANNEL;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C3702$CHANNEL;->e:Lmodule/sound/C3702$CHANNEL;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C3702$CHANNEL;->f:Lmodule/sound/C3702$CHANNEL;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C3702$CHANNEL;->g:Lmodule/sound/C3702$CHANNEL;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C3702$CHANNEL;->h:Lmodule/sound/C3702$CHANNEL;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C3702$CHANNEL;->i:Lmodule/sound/C3702$CHANNEL;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C3702$CHANNEL;->j:Lmodule/sound/C3702$CHANNEL;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C3702$CHANNEL;->k:Lmodule/sound/C3702$CHANNEL;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmodule/sound/C3702$CHANNEL;
    .locals 1

    .line 1
    const-class v0, Lmodule/sound/C3702$CHANNEL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmodule/sound/C3702$CHANNEL;

    return-object p0
.end method

.method public static values()[Lmodule/sound/C3702$CHANNEL;
    .locals 1

    .line 1
    sget-object v0, Lmodule/sound/C3702$CHANNEL;->l:[Lmodule/sound/C3702$CHANNEL;

    invoke-virtual {v0}, [Lmodule/sound/C3702$CHANNEL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmodule/sound/C3702$CHANNEL;

    return-object v0
.end method
