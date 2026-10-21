.class public Lcom/lsec/core/util/MyHandlerThread;
.super Landroid/os/Handler;
.source "MyHandlerThread.java"


# static fields
.field private static final INSTANCE:Lcom/lsec/core/util/MyHandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HandlerMyThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 11
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 12
    new-instance v1, Lcom/lsec/core/util/MyHandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lsec/core/util/MyHandlerThread;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/lsec/core/util/MyHandlerThread;->INSTANCE:Lcom/lsec/core/util/MyHandlerThread;

    .line 13
    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 21
    return-void
.end method

.method public static getInstance()Lcom/lsec/core/util/MyHandlerThread;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/lsec/core/util/MyHandlerThread;->INSTANCE:Lcom/lsec/core/util/MyHandlerThread;

    return-object v0
.end method
