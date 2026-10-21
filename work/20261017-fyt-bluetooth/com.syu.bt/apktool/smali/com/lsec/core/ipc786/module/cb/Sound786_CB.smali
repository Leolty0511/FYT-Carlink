.class public Lcom/lsec/core/ipc786/module/cb/Sound786_CB;
.super Lcom/syu/ipc/ICallback$Stub;
.source "Sound786_CB.java"


# static fields
.field private static INSTANCE:Lcom/lsec/core/ipc786/module/cb/Sound786_CB;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/lsec/core/ipc786/module/cb/Sound786_CB;

    invoke-direct {v0}, Lcom/lsec/core/ipc786/module/cb/Sound786_CB;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc786/module/cb/Sound786_CB;->INSTANCE:Lcom/lsec/core/ipc786/module/cb/Sound786_CB;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/syu/ipc/ICallback$Stub;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lsec/core/ipc786/module/cb/Sound786_CB;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/lsec/core/ipc786/module/cb/Sound786_CB;->INSTANCE:Lcom/lsec/core/ipc786/module/cb/Sound786_CB;

    return-object v0
.end method


# virtual methods
.method public update(I[I[F[Ljava/lang/String;)V
    .locals 0
    .param p1, "updateCode"    # I
    .param p2, "intData"    # [I
    .param p3, "fltData"    # [F
    .param p4, "strData"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 17
    return-void
.end method
