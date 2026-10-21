.class Lcom/syu/app/ipc/Ipc_NewNotifyPage$3;
.super Ljava/lang/Object;
.source "Ipc_NewNotifyPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/app/ipc/Ipc_NewNotifyPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/app/ipc/Ipc_NewNotifyPage;


# direct methods
.method constructor <init>(Lcom/syu/app/ipc/Ipc_NewNotifyPage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage$3;->this$0:Lcom/syu/app/ipc/Ipc_NewNotifyPage;

    .line 1187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1190
    const-string v0, "his16"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " 000 Ipc Page mRunnable_EndLoad mListHistoryOut.size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    const/16 v0, 0xff

    sput v0, Lcom/syu/bt/App_Bt;->iDownRecordState:I

    .line 1193
    const/4 v0, 0x0

    sput-boolean v0, Lcom/syu/bt/App_Bt;->bDownloadingRecord:Z

    .line 1195
    return-void
.end method
