.class public final enum Lmodule/sound/C2313$REG;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/C2313;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "REG"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmodule/sound/C2313$REG;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lmodule/sound/C2313$REG;

.field public static final enum c:Lmodule/sound/C2313$REG;

.field public static final enum d:Lmodule/sound/C2313$REG;

.field public static final enum e:Lmodule/sound/C2313$REG;

.field public static final enum f:Lmodule/sound/C2313$REG;

.field public static final enum g:Lmodule/sound/C2313$REG;

.field public static final enum h:Lmodule/sound/C2313$REG;

.field public static final enum i:Lmodule/sound/C2313$REG;

.field public static final synthetic j:[Lmodule/sound/C2313$REG;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lmodule/sound/C2313$REG;

    const-string v1, "VOL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lmodule/sound/C2313$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C2313$REG;->b:Lmodule/sound/C2313$REG;

    .line 2
    new-instance v0, Lmodule/sound/C2313$REG;

    const-string v1, "RL"

    const/4 v2, 0x1

    const/16 v3, 0xc0

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/C2313$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C2313$REG;->c:Lmodule/sound/C2313$REG;

    .line 3
    new-instance v0, Lmodule/sound/C2313$REG;

    const-string v1, "RR"

    const/4 v2, 0x2

    const/16 v3, 0xe0

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/C2313$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C2313$REG;->d:Lmodule/sound/C2313$REG;

    .line 4
    new-instance v0, Lmodule/sound/C2313$REG;

    const-string v1, "FL"

    const/4 v2, 0x3

    const/16 v3, 0x80

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/C2313$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C2313$REG;->e:Lmodule/sound/C2313$REG;

    .line 5
    new-instance v0, Lmodule/sound/C2313$REG;

    const-string v1, "FR"

    const/4 v2, 0x4

    const/16 v3, 0xa0

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/C2313$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C2313$REG;->f:Lmodule/sound/C2313$REG;

    .line 6
    new-instance v0, Lmodule/sound/C2313$REG;

    const-string v1, "SW"

    const/4 v2, 0x5

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/C2313$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C2313$REG;->g:Lmodule/sound/C2313$REG;

    .line 7
    new-instance v0, Lmodule/sound/C2313$REG;

    const-string v1, "BASS"

    const/4 v2, 0x6

    const/16 v3, 0x60

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/C2313$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C2313$REG;->h:Lmodule/sound/C2313$REG;

    .line 8
    new-instance v0, Lmodule/sound/C2313$REG;

    const-string v1, "TREBLE"

    const/4 v2, 0x7

    const/16 v3, 0x70

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/C2313$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C2313$REG;->i:Lmodule/sound/C2313$REG;

    .line 9
    invoke-static {}, Lmodule/sound/C2313$REG;->a()[Lmodule/sound/C2313$REG;

    move-result-object v0

    sput-object v0, Lmodule/sound/C2313$REG;->j:[Lmodule/sound/C2313$REG;

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
    iput p3, p0, Lmodule/sound/C2313$REG;->a:I

    return-void
.end method

.method public static synthetic a()[Lmodule/sound/C2313$REG;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lmodule/sound/C2313$REG;

    .line 1
    sget-object v1, Lmodule/sound/C2313$REG;->b:Lmodule/sound/C2313$REG;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C2313$REG;->c:Lmodule/sound/C2313$REG;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C2313$REG;->d:Lmodule/sound/C2313$REG;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C2313$REG;->e:Lmodule/sound/C2313$REG;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C2313$REG;->f:Lmodule/sound/C2313$REG;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C2313$REG;->g:Lmodule/sound/C2313$REG;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C2313$REG;->h:Lmodule/sound/C2313$REG;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C2313$REG;->i:Lmodule/sound/C2313$REG;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmodule/sound/C2313$REG;
    .locals 1

    .line 1
    const-class v0, Lmodule/sound/C2313$REG;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmodule/sound/C2313$REG;

    return-object p0
.end method

.method public static values()[Lmodule/sound/C2313$REG;
    .locals 1

    .line 1
    sget-object v0, Lmodule/sound/C2313$REG;->j:[Lmodule/sound/C2313$REG;

    invoke-virtual {v0}, [Lmodule/sound/C2313$REG;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmodule/sound/C2313$REG;

    return-object v0
.end method
