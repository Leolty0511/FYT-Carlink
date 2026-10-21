.class Lcom/syu/bt/page/pop/Page_PopBt_Book$2;
.super Ljava/lang/Object;
.source "Page_PopBt_Book.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/page/pop/Page_PopBt_Book;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/pop/Page_PopBt_Book;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/pop/Page_PopBt_Book;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/pop/Page_PopBt_Book$2;->this$0:Lcom/syu/bt/page/pop/Page_PopBt_Book;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBt_Book$2;->this$0:Lcom/syu/bt/page/pop/Page_PopBt_Book;

    sget-object v1, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v1}, Lcom/syu/bt/db/Bt_Info;->queryCallLogAll()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/syu/bt/page/pop/Page_PopBt_Book;->mListHistory:Ljava/util/List;

    .line 339
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopBt_Book$2;->this$0:Lcom/syu/bt/page/pop/Page_PopBt_Book;

    iget-object v1, v1, Lcom/syu/bt/page/pop/Page_PopBt_Book;->mRunnableResetListHistory:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 340
    return-void
.end method
