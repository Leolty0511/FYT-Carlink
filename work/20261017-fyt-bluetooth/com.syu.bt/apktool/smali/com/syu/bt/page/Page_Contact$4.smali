.class Lcom/syu/bt/page/Page_Contact$4;
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
    iput-object p1, p0, Lcom/syu/bt/page/Page_Contact$4;->this$0:Lcom/syu/bt/page/Page_Contact;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 333
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v3, Lcom/syu/bt/db/Bt_Info;->mPinYin:[C

    array-length v3, v3

    if-lt v1, v3, :cond_0

    .line 344
    return-void

    .line 334
    :cond_0
    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v3, Lcom/syu/bt/db/Bt_Info;->mPinYin:[C

    aget-char v2, v3, v1

    .line 335
    .local v2, "pinyin":C
    iget-object v3, p0, Lcom/syu/bt/page/Page_Contact$4;->this$0:Lcom/syu/bt/page/Page_Contact;

    invoke-virtual {v3}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    add-int/lit16 v4, v1, 0x295e

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 336
    .local v0, "btn":Lcom/lsec/core/frame/ctrl/JButton;
    const/16 v3, 0x41

    if-lt v2, v3, :cond_1

    const/16 v3, 0x5a

    if-le v2, v3, :cond_2

    :cond_1
    const/16 v3, 0x23

    if-ne v2, v3, :cond_4

    .line 337
    :cond_2
    if-eqz v0, :cond_3

    .line 338
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    .line 333
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    :cond_4
    if-eqz v0, :cond_3

    .line 341
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    goto :goto_1
.end method
