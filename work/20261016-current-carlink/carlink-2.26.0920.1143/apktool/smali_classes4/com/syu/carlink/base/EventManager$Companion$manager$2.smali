.class final Lcom/syu/carlink/base/EventManager$Companion$manager$2;
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
.field public static final INSTANCE:Lcom/syu/carlink/base/EventManager$Companion$manager$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/syu/carlink/base/EventManager$Companion$manager$2;

    invoke-direct {v0}, Lcom/syu/carlink/base/EventManager$Companion$manager$2;-><init>()V

    sput-object v0, Lcom/syu/carlink/base/EventManager$Companion$manager$2;->INSTANCE:Lcom/syu/carlink/base/EventManager$Companion$manager$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/syu/carlink/base/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/syu/carlink/base/a;

    invoke-direct {v0}, Lcom/syu/carlink/base/a;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/syu/carlink/base/EventManager$Companion$manager$2;->invoke()Lcom/syu/carlink/base/a;

    move-result-object v0

    return-object v0
.end method
