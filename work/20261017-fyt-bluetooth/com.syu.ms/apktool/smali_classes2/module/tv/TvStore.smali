.class public final enum Lmodule/tv/TvStore;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmodule/tv/TvStore;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lmodule/tv/TvStore;

.field public static final synthetic b:[Lmodule/tv/TvStore;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lmodule/tv/TvStore;

    const-string v1, "TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmodule/tv/TvStore;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmodule/tv/TvStore;->a:Lmodule/tv/TvStore;

    .line 2
    invoke-static {}, Lmodule/tv/TvStore;->a()[Lmodule/tv/TvStore;

    move-result-object v0

    sput-object v0, Lmodule/tv/TvStore;->b:[Lmodule/tv/TvStore;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[Lmodule/tv/TvStore;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lmodule/tv/TvStore;

    .line 1
    sget-object v1, Lmodule/tv/TvStore;->a:Lmodule/tv/TvStore;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmodule/tv/TvStore;
    .locals 1

    .line 1
    const-class v0, Lmodule/tv/TvStore;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmodule/tv/TvStore;

    return-object p0
.end method

.method public static values()[Lmodule/tv/TvStore;
    .locals 1

    .line 1
    sget-object v0, Lmodule/tv/TvStore;->b:[Lmodule/tv/TvStore;

    invoke-virtual {v0}, [Lmodule/tv/TvStore;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmodule/tv/TvStore;

    return-object v0
.end method
