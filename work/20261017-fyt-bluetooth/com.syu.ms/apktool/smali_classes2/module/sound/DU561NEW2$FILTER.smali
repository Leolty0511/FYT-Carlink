.class public final enum Lmodule/sound/DU561NEW2$FILTER;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/DU561NEW2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FILTER"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmodule/sound/DU561NEW2$FILTER;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lmodule/sound/DU561NEW2$FILTER;

.field public static final enum c:Lmodule/sound/DU561NEW2$FILTER;

.field public static final enum d:Lmodule/sound/DU561NEW2$FILTER;

.field public static final enum e:Lmodule/sound/DU561NEW2$FILTER;

.field public static final synthetic f:[Lmodule/sound/DU561NEW2$FILTER;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lmodule/sound/DU561NEW2$FILTER;

    const-string v1, "LPF1"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW2$FILTER;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW2$FILTER;->b:Lmodule/sound/DU561NEW2$FILTER;

    .line 2
    new-instance v0, Lmodule/sound/DU561NEW2$FILTER;

    const-string v1, "HPF1"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lmodule/sound/DU561NEW2$FILTER;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW2$FILTER;->c:Lmodule/sound/DU561NEW2$FILTER;

    .line 3
    new-instance v0, Lmodule/sound/DU561NEW2$FILTER;

    const-string v1, "LPF2"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW2$FILTER;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW2$FILTER;->d:Lmodule/sound/DU561NEW2$FILTER;

    .line 4
    new-instance v0, Lmodule/sound/DU561NEW2$FILTER;

    const-string v1, "HPF2"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lmodule/sound/DU561NEW2$FILTER;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW2$FILTER;->e:Lmodule/sound/DU561NEW2$FILTER;

    .line 5
    invoke-static {}, Lmodule/sound/DU561NEW2$FILTER;->a()[Lmodule/sound/DU561NEW2$FILTER;

    move-result-object v0

    sput-object v0, Lmodule/sound/DU561NEW2$FILTER;->f:[Lmodule/sound/DU561NEW2$FILTER;

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
    iput p3, p0, Lmodule/sound/DU561NEW2$FILTER;->a:I

    return-void
.end method

.method public static synthetic a()[Lmodule/sound/DU561NEW2$FILTER;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lmodule/sound/DU561NEW2$FILTER;

    .line 1
    sget-object v1, Lmodule/sound/DU561NEW2$FILTER;->b:Lmodule/sound/DU561NEW2$FILTER;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW2$FILTER;->c:Lmodule/sound/DU561NEW2$FILTER;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW2$FILTER;->d:Lmodule/sound/DU561NEW2$FILTER;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW2$FILTER;->e:Lmodule/sound/DU561NEW2$FILTER;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmodule/sound/DU561NEW2$FILTER;
    .locals 1

    .line 1
    const-class v0, Lmodule/sound/DU561NEW2$FILTER;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmodule/sound/DU561NEW2$FILTER;

    return-object p0
.end method

.method public static values()[Lmodule/sound/DU561NEW2$FILTER;
    .locals 1

    .line 1
    sget-object v0, Lmodule/sound/DU561NEW2$FILTER;->f:[Lmodule/sound/DU561NEW2$FILTER;

    invoke-virtual {v0}, [Lmodule/sound/DU561NEW2$FILTER;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmodule/sound/DU561NEW2$FILTER;

    return-object v0
.end method
