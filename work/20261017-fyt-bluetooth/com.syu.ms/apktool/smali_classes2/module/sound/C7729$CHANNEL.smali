.class public final enum Lmodule/sound/C7729$CHANNEL;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/C7729;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CHANNEL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmodule/sound/C7729$CHANNEL;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lmodule/sound/C7729$CHANNEL;

.field public static final enum c:Lmodule/sound/C7729$CHANNEL;

.field public static final enum d:Lmodule/sound/C7729$CHANNEL;

.field public static final enum e:Lmodule/sound/C7729$CHANNEL;

.field public static final enum f:Lmodule/sound/C7729$CHANNEL;

.field public static final enum g:Lmodule/sound/C7729$CHANNEL;

.field public static final enum h:Lmodule/sound/C7729$CHANNEL;

.field public static final enum i:Lmodule/sound/C7729$CHANNEL;

.field public static final synthetic j:[Lmodule/sound/C7729$CHANNEL;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lmodule/sound/C7729$CHANNEL;

    const-string v1, "IN0"

    const/4 v2, 0x0

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/C7729$CHANNEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C7729$CHANNEL;->b:Lmodule/sound/C7729$CHANNEL;

    .line 2
    new-instance v0, Lmodule/sound/C7729$CHANNEL;

    const-string v1, "IN1"

    const/4 v2, 0x1

    const/16 v3, 0x41

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/C7729$CHANNEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C7729$CHANNEL;->c:Lmodule/sound/C7729$CHANNEL;

    .line 3
    new-instance v0, Lmodule/sound/C7729$CHANNEL;

    const-string v1, "IN2"

    const/4 v2, 0x2

    const/16 v3, 0x42

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/C7729$CHANNEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C7729$CHANNEL;->d:Lmodule/sound/C7729$CHANNEL;

    .line 4
    new-instance v0, Lmodule/sound/C7729$CHANNEL;

    const-string v1, "IN3"

    const/4 v2, 0x3

    const/16 v3, 0x43

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/C7729$CHANNEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C7729$CHANNEL;->e:Lmodule/sound/C7729$CHANNEL;

    .line 5
    new-instance v0, Lmodule/sound/C7729$CHANNEL;

    const-string v1, "IN4"

    const/4 v2, 0x4

    const/16 v3, 0x44

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/C7729$CHANNEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C7729$CHANNEL;->f:Lmodule/sound/C7729$CHANNEL;

    .line 6
    new-instance v0, Lmodule/sound/C7729$CHANNEL;

    const-string v1, "IN5"

    const/4 v2, 0x5

    const/16 v3, 0x45

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/C7729$CHANNEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C7729$CHANNEL;->g:Lmodule/sound/C7729$CHANNEL;

    .line 7
    new-instance v0, Lmodule/sound/C7729$CHANNEL;

    const-string v1, "IN6"

    const/4 v2, 0x6

    const/16 v3, 0x46

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/C7729$CHANNEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C7729$CHANNEL;->h:Lmodule/sound/C7729$CHANNEL;

    .line 8
    new-instance v0, Lmodule/sound/C7729$CHANNEL;

    const-string v1, "IN7"

    const/4 v2, 0x7

    const/16 v3, 0x47

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/C7729$CHANNEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C7729$CHANNEL;->i:Lmodule/sound/C7729$CHANNEL;

    .line 9
    invoke-static {}, Lmodule/sound/C7729$CHANNEL;->a()[Lmodule/sound/C7729$CHANNEL;

    move-result-object v0

    sput-object v0, Lmodule/sound/C7729$CHANNEL;->j:[Lmodule/sound/C7729$CHANNEL;

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
    iput p3, p0, Lmodule/sound/C7729$CHANNEL;->a:I

    return-void
.end method

.method public static synthetic a()[Lmodule/sound/C7729$CHANNEL;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lmodule/sound/C7729$CHANNEL;

    .line 1
    sget-object v1, Lmodule/sound/C7729$CHANNEL;->b:Lmodule/sound/C7729$CHANNEL;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C7729$CHANNEL;->c:Lmodule/sound/C7729$CHANNEL;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C7729$CHANNEL;->d:Lmodule/sound/C7729$CHANNEL;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C7729$CHANNEL;->e:Lmodule/sound/C7729$CHANNEL;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C7729$CHANNEL;->f:Lmodule/sound/C7729$CHANNEL;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C7729$CHANNEL;->g:Lmodule/sound/C7729$CHANNEL;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C7729$CHANNEL;->h:Lmodule/sound/C7729$CHANNEL;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C7729$CHANNEL;->i:Lmodule/sound/C7729$CHANNEL;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmodule/sound/C7729$CHANNEL;
    .locals 1

    .line 1
    const-class v0, Lmodule/sound/C7729$CHANNEL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmodule/sound/C7729$CHANNEL;

    return-object p0
.end method

.method public static values()[Lmodule/sound/C7729$CHANNEL;
    .locals 1

    .line 1
    sget-object v0, Lmodule/sound/C7729$CHANNEL;->j:[Lmodule/sound/C7729$CHANNEL;

    invoke-virtual {v0}, [Lmodule/sound/C7729$CHANNEL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmodule/sound/C7729$CHANNEL;

    return-object v0
.end method
