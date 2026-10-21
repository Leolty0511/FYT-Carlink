.class public Lcom/lsec/core/util/HandlerUI;
.super Landroid/os/Handler;
.source "HandlerUI.java"


# static fields
.field private static final INSTANCE:Lcom/lsec/core/util/HandlerUI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/lsec/core/util/HandlerUI;

    invoke-direct {v0}, Lcom/lsec/core/util/HandlerUI;-><init>()V

    sput-object v0, Lcom/lsec/core/util/HandlerUI;->INSTANCE:Lcom/lsec/core/util/HandlerUI;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 16
    return-void
.end method

.method public static getInstance()Lcom/lsec/core/util/HandlerUI;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/lsec/core/util/HandlerUI;->INSTANCE:Lcom/lsec/core/util/HandlerUI;

    return-object v0
.end method
