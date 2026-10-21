.class Lcom/syu/bt/page/Page_Contact$2;
.super Ljava/lang/Object;
.source "Page_Contact.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/page/Page_Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/Page_Contact;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/Page_Contact;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/Page_Contact$2;->this$0:Lcom/syu/bt/page/Page_Contact;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 241
    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v0}, Lcom/syu/bt/db/Bt_Info;->queryContacts()V

    .line 242
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bDownloading:Z

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact$2;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/syu/bt/Act_Bt;->disPostLoading(I)V

    .line 245
    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/syu/bt/page/Page_Contact$2;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Contact;->mRunnable_resetList:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 246
    return-void
.end method
