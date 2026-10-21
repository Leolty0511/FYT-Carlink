.class public Lcom/lsec/core/ipc786/module/cb/Bt786_CB;
.super Lcom/syu/ipc/ICallback$Stub;
.source "Bt786_CB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/lsec/core/ipc786/module/cb/Bt786_CB;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB;

    invoke-direct {v0}, Lcom/lsec/core/ipc786/module/cb/Bt786_CB;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB;->INSTANCE:Lcom/lsec/core/ipc786/module/cb/Bt786_CB;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/syu/ipc/ICallback$Stub;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lsec/core/ipc786/module/cb/Bt786_CB;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB;->INSTANCE:Lcom/lsec/core/ipc786/module/cb/Bt786_CB;

    return-object v0
.end method


# virtual methods
.method public update(I[I[F[Ljava/lang/String;)V
    .locals 7
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 21
    const/4 v6, 0x0

    new-instance v0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;-><init>(Lcom/lsec/core/ipc786/module/cb/Bt786_CB;I[I[F[Ljava/lang/String;)V

    invoke-static {v6, v0}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 22
    return-void
.end method
