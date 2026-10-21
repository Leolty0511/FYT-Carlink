.class Lcom/syu/app/ipc/Ipc_New$4$1;
.super Ljava/lang/Object;
.source "Ipc_New.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/app/ipc/Ipc_New$4;->onNotify(I[I[F[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/syu/app/ipc/Ipc_New$4;


# direct methods
.method constructor <init>(Lcom/syu/app/ipc/Ipc_New$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/app/ipc/Ipc_New$4$1;->this$1:Lcom/syu/app/ipc/Ipc_New$4;

    .line 2439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2442
    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->values3rd:Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/syu/bt/db/Bt_Info;->insertCallLog(Landroid/content/ContentValues;Z)V

    .line 2443
    return-void
.end method
