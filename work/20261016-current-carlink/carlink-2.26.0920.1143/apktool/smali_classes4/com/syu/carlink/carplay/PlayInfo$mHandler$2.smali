.class final Lcom/syu/carlink/carplay/PlayInfo$mHandler$2;
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
.field public static final INSTANCE:Lcom/syu/carlink/carplay/PlayInfo$mHandler$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/syu/carlink/carplay/PlayInfo$mHandler$2;

    invoke-direct {v0}, Lcom/syu/carlink/carplay/PlayInfo$mHandler$2;-><init>()V

    sput-object v0, Lcom/syu/carlink/carplay/PlayInfo$mHandler$2;->INSTANCE:Lcom/syu/carlink/carplay/PlayInfo$mHandler$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/os/Handler;
    .locals 2

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "cp-sync-playInfo"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/syu/carlink/carplay/PlayInfo$mHandler$2;->invoke()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method
