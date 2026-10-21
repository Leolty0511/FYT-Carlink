.class Lcom/syu/bt/page/Page_Contact$14;
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
    iput-object p1, p0, Lcom/syu/bt/page/Page_Contact$14;->this$0:Lcom/syu/bt/page/Page_Contact;

    .line 705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 708
    const/4 v5, 0x0

    .line 709
    .local v5, "y":F
    const/4 v4, 0x0

    .line 710
    .local v4, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 738
    :goto_0
    iget-object v6, p0, Lcom/syu/bt/page/Page_Contact$14;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v6, v6, Lcom/syu/bt/page/Page_Contact;->vContact_View_move1920:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v6}, Lcom/lsec/core/frame/ctrl/JButton;->getHeight()I

    move-result v1

    .line 740
    .local v1, "iHeight":I
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-lez v6, :cond_3

    int-to-float v6, v1

    cmpg-float v6, v5, v6

    if-gez v6, :cond_3

    .line 741
    const/high16 v6, 0x423c0000    # 47.0f

    cmpg-float v6, v4, v6

    if-gez v6, :cond_4

    .line 742
    iget-object v6, p0, Lcom/syu/bt/page/Page_Contact$14;->this$0:Lcom/syu/bt/page/Page_Contact;

    float-to-int v7, v5

    mul-int/lit8 v7, v7, 0xe

    div-int/2addr v7, v1

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/syu/bt/page/Page_Contact;->key_id:I

    .line 745
    :goto_1
    iget-object v6, p0, Lcom/syu/bt/page/Page_Contact$14;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget v6, v6, Lcom/syu/bt/page/Page_Contact;->key_id:I

    const/16 v7, 0x1a

    if-le v6, v7, :cond_0

    .line 746
    iget-object v6, p0, Lcom/syu/bt/page/Page_Contact$14;->this$0:Lcom/syu/bt/page/Page_Contact;

    iput v10, v6, Lcom/syu/bt/page/Page_Contact;->key_id:I

    .line 747
    :cond_0
    iget-object v6, p0, Lcom/syu/bt/page/Page_Contact$14;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget v6, v6, Lcom/syu/bt/page/Page_Contact;->key_id:I

    iget-object v7, p0, Lcom/syu/bt/page/Page_Contact$14;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget v7, v7, Lcom/syu/bt/page/Page_Contact;->key_id_p:I

    if-eq v6, v7, :cond_3

    iget-object v6, p0, Lcom/syu/bt/page/Page_Contact$14;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget v6, v6, Lcom/syu/bt/page/Page_Contact;->key_id:I

    if-ltz v6, :cond_3

    .line 748
    iget-object v6, p0, Lcom/syu/bt/page/Page_Contact$14;->this$0:Lcom/syu/bt/page/Page_Contact;

    invoke-virtual {v6}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    iget-object v7, p0, Lcom/syu/bt/page/Page_Contact$14;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget v7, v7, Lcom/syu/bt/page/Page_Contact;->key_id:I

    add-int/lit16 v7, v7, 0x295e

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 749
    .local v0, "Btn_key":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v0, :cond_1

    .line 750
    invoke-virtual {v0, v11}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 752
    :cond_1
    iget-object v6, p0, Lcom/syu/bt/page/Page_Contact$14;->this$0:Lcom/syu/bt/page/Page_Contact;

    invoke-virtual {v6}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    iget-object v7, p0, Lcom/syu/bt/page/Page_Contact$14;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget v7, v7, Lcom/syu/bt/page/Page_Contact;->key_id_p:I

    add-int/lit16 v7, v7, 0x295e

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "Btn_key":Lcom/lsec/core/frame/ctrl/JButton;
    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 753
    .restart local v0    # "Btn_key":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v0, :cond_2

    .line 754
    invoke-virtual {v0, v10}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 755
    :cond_2
    iget-object v6, p0, Lcom/syu/bt/page/Page_Contact$14;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v7, p0, Lcom/syu/bt/page/Page_Contact$14;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget v7, v7, Lcom/syu/bt/page/Page_Contact;->key_id:I

    iput v7, v6, Lcom/syu/bt/page/Page_Contact;->key_id_p:I

    .line 756
    sget-object v6, Lcom/syu/bt/db/Bt_Info;->b:[Ljava/lang/String;

    iget-object v7, p0, Lcom/syu/bt/page/Page_Contact$14;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget v7, v7, Lcom/syu/bt/page/Page_Contact;->key_id:I

    aget-object v3, v6, v7

    .line 760
    .local v3, "s":Ljava/lang/String;
    const-string v6, "gdy4"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " *** 00 vContact_View_move setFocus  s = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget-object v6, p0, Lcom/syu/bt/page/Page_Contact$14;->this$0:Lcom/syu/bt/page/Page_Contact;

    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Lcom/syu/bt/page/Page_Contact;->getPositionForSection(I)I

    move-result v2

    .line 762
    .local v2, "position":I
    const-string v6, "gdy4"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " *** 22 vContact_View_move setFocus  s = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " position = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iget-object v6, p0, Lcom/syu/bt/page/Page_Contact$14;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v6, v6, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v6, :cond_3

    .line 765
    iget-object v6, p0, Lcom/syu/bt/page/Page_Contact$14;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v6, v6, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v6, v6, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    if-eqz v6, :cond_3

    .line 766
    const-string v6, "#"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 767
    iget-object v6, p0, Lcom/syu/bt/page/Page_Contact$14;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v6, v6, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v6, v10}, Lcom/lsec/core/frame/ctrl/JGridView;->scrollToPosition(I)V

    .line 781
    .end local v0    # "Btn_key":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v2    # "position":I
    .end local v3    # "s":Ljava/lang/String;
    :cond_3
    :goto_2
    return v10

    .line 712
    .end local v1    # "iHeight":I
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 713
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 714
    const-string v6, "gdy4"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " *** ACTION_DOWN setFocus  key_id = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/syu/bt/page/Page_Contact$14;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget v8, v8, Lcom/syu/bt/page/Page_Contact;->key_id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -- x = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " y = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 717
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 718
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 719
    const-string v6, "gdy4"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " *** ACTION_MOVE setFocus  key_id = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/syu/bt/page/Page_Contact$14;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget v8, v8, Lcom/syu/bt/page/Page_Contact;->key_id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -- x = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " y = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 722
    :pswitch_2
    const-string v6, "gdy4"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " *** ACTION_UP setFocus  key_id = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/syu/bt/page/Page_Contact$14;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget v8, v8, Lcom/syu/bt/page/Page_Contact;->key_id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -- x = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " y = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 744
    .restart local v1    # "iHeight":I
    :cond_4
    iget-object v6, p0, Lcom/syu/bt/page/Page_Contact$14;->this$0:Lcom/syu/bt/page/Page_Contact;

    const/high16 v7, 0x41a00000    # 20.0f

    sub-float v7, v5, v7

    float-to-int v7, v7

    mul-int/lit8 v7, v7, 0xe

    div-int/2addr v7, v1

    add-int/lit8 v7, v7, 0x1

    mul-int/lit8 v7, v7, 0x2

    iput v7, v6, Lcom/syu/bt/page/Page_Contact;->key_id:I

    goto/16 :goto_1

    .line 769
    .restart local v0    # "Btn_key":Lcom/lsec/core/frame/ctrl/JButton;
    .restart local v2    # "position":I
    .restart local v3    # "s":Ljava/lang/String;
    :cond_5
    const/4 v6, -0x1

    if-eq v2, v6, :cond_3

    .line 770
    iget-object v6, p0, Lcom/syu/bt/page/Page_Contact$14;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v6, v6, Lcom/syu/bt/page/Page_Contact;->mRun_NotifyDataSetChanged:Ljava/lang/Runnable;

    invoke-static {v6}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 771
    iget-object v6, p0, Lcom/syu/bt/page/Page_Contact$14;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v6, v6, Lcom/syu/bt/page/Page_Contact;->mRun_NotifyDataSetChanged:Ljava/lang/Runnable;

    const-wide/16 v8, 0x1f4

    invoke-static {v11, v6, v8, v9}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 773
    iget-object v6, p0, Lcom/syu/bt/page/Page_Contact$14;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v6, v6, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v6, v6, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    if-eqz v6, :cond_3

    .line 774
    iget-object v6, p0, Lcom/syu/bt/page/Page_Contact$14;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v6, v6, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v6, v2}, Lcom/lsec/core/frame/ctrl/JGridView;->scrollToPosition(I)V

    goto/16 :goto_2

    .line 710
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
