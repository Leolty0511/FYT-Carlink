.class Lcom/syu/bt/page/Page_Contact$13;
.super Ljava/lang/Object;
.source "Page_Contact.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/page/Page_Contact;->init()V
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
    iput-object p1, p0, Lcom/syu/bt/page/Page_Contact$13;->this$0:Lcom/syu/bt/page/Page_Contact;

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 633
    const/4 v4, 0x0

    .line 634
    .local v4, "y":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 659
    :goto_0
    :pswitch_0
    iget-object v5, p0, Lcom/syu/bt/page/Page_Contact$13;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v5, v5, Lcom/syu/bt/page/Page_Contact;->vContact_View_move:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JButton;->getHeight()I

    move-result v1

    .line 661
    .local v1, "iHeight":I
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_3

    int-to-float v5, v1

    cmpg-float v5, v4, v5

    if-gez v5, :cond_3

    .line 662
    iget-object v5, p0, Lcom/syu/bt/page/Page_Contact$13;->this$0:Lcom/syu/bt/page/Page_Contact;

    float-to-int v6, v4

    mul-int/lit8 v6, v6, 0x1b

    div-int/2addr v6, v1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/syu/bt/page/Page_Contact;->key_id:I

    .line 663
    iget-object v5, p0, Lcom/syu/bt/page/Page_Contact$13;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget v5, v5, Lcom/syu/bt/page/Page_Contact;->key_id:I

    const/16 v6, 0x1a

    if-le v5, v6, :cond_0

    .line 664
    iget-object v5, p0, Lcom/syu/bt/page/Page_Contact$13;->this$0:Lcom/syu/bt/page/Page_Contact;

    iput v8, v5, Lcom/syu/bt/page/Page_Contact;->key_id:I

    .line 665
    :cond_0
    iget-object v5, p0, Lcom/syu/bt/page/Page_Contact$13;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget v5, v5, Lcom/syu/bt/page/Page_Contact;->key_id:I

    iget-object v6, p0, Lcom/syu/bt/page/Page_Contact$13;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget v6, v6, Lcom/syu/bt/page/Page_Contact;->key_id_p:I

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Lcom/syu/bt/page/Page_Contact$13;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget v5, v5, Lcom/syu/bt/page/Page_Contact;->key_id:I

    if-ltz v5, :cond_3

    .line 666
    iget-object v5, p0, Lcom/syu/bt/page/Page_Contact$13;->this$0:Lcom/syu/bt/page/Page_Contact;

    invoke-virtual {v5}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    iget-object v6, p0, Lcom/syu/bt/page/Page_Contact$13;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget v6, v6, Lcom/syu/bt/page/Page_Contact;->key_id:I

    add-int/lit16 v6, v6, 0x295e

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 667
    .local v0, "Btn_key":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v0, :cond_1

    .line 668
    invoke-virtual {v0, v9}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 670
    :cond_1
    iget-object v5, p0, Lcom/syu/bt/page/Page_Contact$13;->this$0:Lcom/syu/bt/page/Page_Contact;

    invoke-virtual {v5}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    iget-object v6, p0, Lcom/syu/bt/page/Page_Contact$13;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget v6, v6, Lcom/syu/bt/page/Page_Contact;->key_id_p:I

    add-int/lit16 v6, v6, 0x295e

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "Btn_key":Lcom/lsec/core/frame/ctrl/JButton;
    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 671
    .restart local v0    # "Btn_key":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v0, :cond_2

    .line 672
    invoke-virtual {v0, v8}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 673
    :cond_2
    iget-object v5, p0, Lcom/syu/bt/page/Page_Contact$13;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v6, p0, Lcom/syu/bt/page/Page_Contact$13;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget v6, v6, Lcom/syu/bt/page/Page_Contact;->key_id:I

    iput v6, v5, Lcom/syu/bt/page/Page_Contact;->key_id_p:I

    .line 674
    sget-object v5, Lcom/syu/bt/db/Bt_Info;->b:[Ljava/lang/String;

    iget-object v6, p0, Lcom/syu/bt/page/Page_Contact$13;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget v6, v6, Lcom/syu/bt/page/Page_Contact;->key_id:I

    aget-object v3, v5, v6

    .line 678
    .local v3, "s":Ljava/lang/String;
    const-string v5, "gdy4"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " *** 00 vContact_View_move setFocus  s = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-object v5, p0, Lcom/syu/bt/page/Page_Contact$13;->this$0:Lcom/syu/bt/page/Page_Contact;

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/syu/bt/page/Page_Contact;->getPositionForSection(I)I

    move-result v2

    .line 680
    .local v2, "position":I
    const-string v5, "gdy4"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " *** 22 vContact_View_move setFocus  s = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " position = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v5, p0, Lcom/syu/bt/page/Page_Contact$13;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v5, v5, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v5, :cond_3

    .line 683
    iget-object v5, p0, Lcom/syu/bt/page/Page_Contact$13;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v5, v5, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    if-eqz v5, :cond_3

    .line 684
    const-string v5, "#"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 685
    iget-object v5, p0, Lcom/syu/bt/page/Page_Contact$13;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v5, v5, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v5, v8}, Lcom/lsec/core/frame/ctrl/JGridView;->scrollToPosition(I)V

    .line 699
    .end local v0    # "Btn_key":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v2    # "position":I
    .end local v3    # "s":Ljava/lang/String;
    :cond_3
    :goto_1
    return v8

    .line 636
    .end local v1    # "iHeight":I
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 637
    const-string v5, "gdy4"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " *** vContact_View_move setFocus  key_id = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/syu/bt/page/Page_Contact$13;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget v7, v7, Lcom/syu/bt/page/Page_Contact;->key_id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 640
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 642
    goto/16 :goto_0

    .line 687
    .restart local v0    # "Btn_key":Lcom/lsec/core/frame/ctrl/JButton;
    .restart local v1    # "iHeight":I
    .restart local v2    # "position":I
    .restart local v3    # "s":Ljava/lang/String;
    :cond_4
    const/4 v5, -0x1

    if-eq v2, v5, :cond_3

    .line 688
    iget-object v5, p0, Lcom/syu/bt/page/Page_Contact$13;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v5, v5, Lcom/syu/bt/page/Page_Contact;->mRun_NotifyDataSetChanged:Ljava/lang/Runnable;

    invoke-static {v5}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 689
    iget-object v5, p0, Lcom/syu/bt/page/Page_Contact$13;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v5, v5, Lcom/syu/bt/page/Page_Contact;->mRun_NotifyDataSetChanged:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1f4

    invoke-static {v9, v5, v6, v7}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 691
    iget-object v5, p0, Lcom/syu/bt/page/Page_Contact$13;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v5, v5, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    if-eqz v5, :cond_3

    .line 692
    iget-object v5, p0, Lcom/syu/bt/page/Page_Contact$13;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v5, v5, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v5, v2}, Lcom/lsec/core/frame/ctrl/JGridView;->scrollToPosition(I)V

    goto :goto_1

    .line 634
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
