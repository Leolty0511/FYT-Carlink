.class Lcom/lsec/core/ipc/module/main/CallServer$Runnable_Update;
.super Ljava/lang/Object;
.source "CallServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/ipc/module/main/CallServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Runnable_Update"
.end annotation


# instance fields
.field public flts:[F

.field public ints:[I

.field public strs:[Ljava/lang/String;

.field final synthetic this$0:Lcom/lsec/core/ipc/module/main/CallServer;

.field public updateCode:I


# direct methods
.method public constructor <init>(Lcom/lsec/core/ipc/module/main/CallServer;I[I[F[Ljava/lang/String;)V
    .locals 0
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/lsec/core/ipc/module/main/CallServer$Runnable_Update;->this$0:Lcom/lsec/core/ipc/module/main/CallServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p2, p0, Lcom/lsec/core/ipc/module/main/CallServer$Runnable_Update;->updateCode:I

    .line 75
    iput-object p3, p0, Lcom/lsec/core/ipc/module/main/CallServer$Runnable_Update;->ints:[I

    .line 76
    iput-object p4, p0, Lcom/lsec/core/ipc/module/main/CallServer$Runnable_Update;->flts:[F

    .line 77
    iput-object p5, p0, Lcom/lsec/core/ipc/module/main/CallServer$Runnable_Update;->strs:[Ljava/lang/String;

    .line 78
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 82
    iget v0, p0, Lcom/lsec/core/ipc/module/main/CallServer$Runnable_Update;->updateCode:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/lsec/core/ipc/module/main/CallServer$Runnable_Update;->updateCode:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 83
    iget v0, p0, Lcom/lsec/core/ipc/module/main/CallServer$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/CallServer$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/CallServer$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/CallServer$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/CallServer;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 84
    :cond_0
    return-void
.end method
