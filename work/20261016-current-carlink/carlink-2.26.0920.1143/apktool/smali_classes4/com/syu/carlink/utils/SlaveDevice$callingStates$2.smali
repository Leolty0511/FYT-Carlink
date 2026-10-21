.class final Lcom/syu/carlink/utils/SlaveDevice$callingStates$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lz/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lz/a;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/syu/carlink/utils/SlaveDevice$callingStates$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/syu/carlink/utils/SlaveDevice$callingStates$2;

    invoke-direct {v0}, Lcom/syu/carlink/utils/SlaveDevice$callingStates$2;-><init>()V

    sput-object v0, Lcom/syu/carlink/utils/SlaveDevice$callingStates$2;->INSTANCE:Lcom/syu/carlink/utils/SlaveDevice$callingStates$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/syu/carlink/utils/SlaveDevice$callingStates$2;->invoke()[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()[Ljava/lang/Integer;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x6

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method
