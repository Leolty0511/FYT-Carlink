.class final Lcom/syu/carlink/carplay/VideoFrame$recycles$2;
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
.field public static final INSTANCE:Lcom/syu/carlink/carplay/VideoFrame$recycles$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/syu/carlink/carplay/VideoFrame$recycles$2;

    invoke-direct {v0}, Lcom/syu/carlink/carplay/VideoFrame$recycles$2;-><init>()V

    sput-object v0, Lcom/syu/carlink/carplay/VideoFrame$recycles$2;->INSTANCE:Lcom/syu/carlink/carplay/VideoFrame$recycles$2;

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

    .line 2
    invoke-virtual {p0}, Lcom/syu/carlink/carplay/VideoFrame$recycles$2;->invoke()[B

    move-result-object v0

    return-object v0
.end method

.method public final invoke()[B
    .locals 1

    .line 1
    const/high16 v0, 0x200000

    new-array v0, v0, [B

    return-object v0
.end method
