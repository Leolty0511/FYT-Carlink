.class Lcom/syu/app/ipc/Ipc_New$1;
.super Ljava/lang/Object;
.source "Ipc_New.java"

# interfaces
.implements Lcom/lsec/core/util/IUiNotify;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/app/ipc/Ipc_New;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/app/ipc/Ipc_New;


# direct methods
.method constructor <init>(Lcom/syu/app/ipc/Ipc_New;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/app/ipc/Ipc_New$1;->this$0:Lcom/syu/app/ipc/Ipc_New;

    .line 1607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(I[I[F[Ljava/lang/String;)V
    .locals 47
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 1611
    const-string v2, "ldd"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " 00 notify_PopBt Page_PopLDD updateCode = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-boolean v2, v2, Lcom/syu/bt/App_Bt;->bPopBtBook:Z

    if-eqz v2, :cond_0

    .line 1614
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const/4 v7, 0x5

    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v30

    .line 1615
    .local v30, "pagePopBook":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v30, :cond_0

    .line 1616
    packed-switch p1, :pswitch_data_0

    .line 1627
    .end local v30    # "pagePopBook":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const/16 v7, 0xe

    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v32

    .line 1628
    .local v32, "pageSwitchPhone":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v32, :cond_1

    .line 1629
    sparse-switch p1, :sswitch_data_0

    .line 1658
    :cond_1
    :goto_1
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const/16 v7, 0xc

    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v29

    .line 1659
    .local v29, "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v29, :cond_2

    .line 1660
    const-string v2, "popName"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " 00 Page_Pop3rdPhone Page_PopBt updateCode = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    sparse-switch p1, :sswitch_data_1

    .line 1731
    :cond_2
    :goto_2
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const/16 v7, 0xf

    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v29

    .line 1732
    if-eqz v29, :cond_3

    .line 1733
    const-string v2, "ldd"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " 11 notify_PopBt Page_PopLDD U_TALK_TIME updateCode = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    sparse-switch p1, :sswitch_data_2

    .line 1774
    :cond_3
    :goto_3
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v29

    .line 1775
    if-eqz v29, :cond_4

    .line 1776
    const-string v2, "num"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " 11 notify_PopBt Page_PopBt_Num U_TALK_TIME updateCode = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    sparse-switch p1, :sswitch_data_3

    .line 1825
    :cond_4
    :goto_4
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v29

    .line 1826
    if-nez v29, :cond_5

    .line 1827
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const/4 v7, 0x3

    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v29

    .line 1829
    :cond_5
    if-eqz v29, :cond_40

    .line 1831
    const-string v2, "ldd"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " 11 notify_PopBt Page_PopBt updateCode = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    sparse-switch p1, :sswitch_data_4

    .line 2080
    :cond_6
    :goto_5
    return-void

    .line 1618
    .end local v29    # "page":Lcom/lsec/core/frame/ctrl/JPage;
    .end local v32    # "pageSwitchPhone":Lcom/lsec/core/frame/ctrl/JPage;
    .restart local v30    # "pagePopBook":Lcom/lsec/core/frame/ctrl/JPage;
    :pswitch_0
    invoke-virtual/range {v30 .. v30}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v34

    check-cast v34, Lcom/syu/bt/page/pop/Page_PopBt_Book;

    .line 1619
    .local v34, "page_PopBt_Book":Lcom/syu/bt/page/pop/Page_PopBt_Book;
    if-eqz v34, :cond_0

    .line 1620
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Lcom/syu/bt/page/pop/Page_PopBt_Book;->queryContacts(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1633
    .end local v30    # "pagePopBook":Lcom/lsec/core/frame/ctrl/JPage;
    .end local v34    # "page_PopBt_Book":Lcom/syu/bt/page/pop/Page_PopBt_Book;
    .restart local v32    # "pageSwitchPhone":Lcom/lsec/core/frame/ctrl/JPage;
    :sswitch_0
    const-string v2, "pop333"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " 00 Ipc_New Page_PopSwitchPhone notify_PopBt updateCode = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mIdCustomer = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    invoke-virtual/range {v32 .. v32}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v35

    check-cast v35, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;

    .line 1635
    .local v35, "page_PopSwitchPhone":Lcom/syu/bt/page/pop/Page_PopSwitchPhone;
    if-eqz v35, :cond_1

    .line 1636
    invoke-virtual/range {v35 .. v35}, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->updateBtnAccept()V

    .line 1637
    invoke-virtual/range {v35 .. v35}, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->updatePhoneName()V

    goto/16 :goto_1

    .line 1643
    .end local v35    # "page_PopSwitchPhone":Lcom/syu/bt/page/pop/Page_PopSwitchPhone;
    :sswitch_1
    const-string v2, "sfth3"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " 00 Ipc_New notify_PopBt HFP_STATUS mIdCustomer = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    invoke-virtual/range {v32 .. v32}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v35

    check-cast v35, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;

    .line 1645
    .restart local v35    # "page_PopSwitchPhone":Lcom/syu/bt/page/pop/Page_PopSwitchPhone;
    if-eqz v35, :cond_1

    .line 1646
    invoke-virtual/range {v35 .. v35}, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->updateBtnAccept()V

    .line 1647
    invoke-virtual/range {v35 .. v35}, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->updatePhoneName()V

    .line 1649
    sget-object v2, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    const/4 v7, 0x0

    aget v2, v2, v7

    const/4 v7, 0x4

    if-lt v2, v7, :cond_7

    sget-object v2, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    const/4 v7, 0x1

    aget v2, v2, v7

    const/4 v7, 0x4

    if-ge v2, v7, :cond_1

    .line 1650
    :cond_7
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/syu/bt/App_Bt;->popSwitchPhone(Z)V

    goto/16 :goto_1

    .line 1669
    .end local v35    # "page_PopSwitchPhone":Lcom/syu/bt/page/pop/Page_PopSwitchPhone;
    .restart local v29    # "page":Lcom/lsec/core/frame/ctrl/JPage;
    :sswitch_2
    invoke-virtual/range {v29 .. v29}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v33

    check-cast v33, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;

    .line 1670
    .local v33, "page_Pop3rdPhone":Lcom/syu/bt/page/pop/Page_Pop3rdPhone;
    if-eqz v33, :cond_2

    .line 1671
    invoke-virtual/range {v33 .. v33}, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->updatePhoneName()V

    goto/16 :goto_2

    .line 1692
    .end local v33    # "page_Pop3rdPhone":Lcom/syu/bt/page/pop/Page_Pop3rdPhone;
    :sswitch_3
    invoke-virtual/range {v29 .. v29}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v33

    check-cast v33, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;

    .line 1693
    .restart local v33    # "page_Pop3rdPhone":Lcom/syu/bt/page/pop/Page_Pop3rdPhone;
    if-eqz v33, :cond_2

    .line 1694
    invoke-virtual/range {v33 .. v33}, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->updateThirdPhoneView()V

    .line 1695
    invoke-virtual/range {v33 .. v33}, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->updateBtnAccept()V

    .line 1696
    invoke-virtual/range {v33 .. v33}, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->updatePhoneName()V

    .line 1697
    invoke-virtual/range {v33 .. v33}, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->updateMergerPhoneName()V

    goto/16 :goto_2

    .line 1704
    .end local v33    # "page_Pop3rdPhone":Lcom/syu/bt/page/pop/Page_Pop3rdPhone;
    :sswitch_4
    invoke-virtual/range {v29 .. v29}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v33

    check-cast v33, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;

    .line 1705
    .restart local v33    # "page_Pop3rdPhone":Lcom/syu/bt/page/pop/Page_Pop3rdPhone;
    const/16 v46, 0x0

    .line 1706
    .local v46, "value":I
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v2, :cond_a

    .line 1707
    if-eqz p2, :cond_9

    move-object/from16 v0, p2

    array-length v2, v0

    const/4 v7, 0x1

    if-le v2, v7, :cond_9

    .line 1709
    const/4 v2, 0x2

    :try_start_0
    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1710
    const/4 v2, 0x0

    aget-object v2, p4, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 1711
    .local v24, "i":I
    sget v2, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    move/from16 v0, v24

    if-ne v2, v0, :cond_8

    const/4 v2, 0x1

    aget-object v2, p4, v2

    sget-object v7, Lcom/syu/bt/App_Bt;->sPhone2_CALL_NUMBER:[Ljava/lang/String;

    sget v8, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    aget-object v7, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1712
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/app/ipc/Ipc_New$1;->this$0:Lcom/syu/app/ipc/Ipc_New;

    const/4 v7, 0x1

    aget v7, p2, v7

    add-int/lit8 v7, v7, 0x64

    div-int/lit16 v7, v7, 0x3e8

    iput v7, v2, Lcom/syu/app/ipc/Ipc_New;->talktime:I

    .line 1714
    :cond_8
    const-string v2, "talk"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " 22 notify_PopBt Page_Pop3rdPhone U_TALK_TIME sPhone2_talktime = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/syu/bt/App_Bt;->sPhone2_talktime:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1721
    .end local v24    # "i":I
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/app/ipc/Ipc_New$1;->this$0:Lcom/syu/app/ipc/Ipc_New;

    iget v2, v2, Lcom/syu/app/ipc/Ipc_New;->talktime:I

    sput v2, Lcom/syu/bt/App_Bt;->sPhone2_talktime:I

    .line 1722
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/app/ipc/Ipc_New$1;->this$0:Lcom/syu/app/ipc/Ipc_New;

    iget v0, v2, Lcom/syu/app/ipc/Ipc_New;->talktime:I

    move/from16 v46, v0

    .line 1725
    :goto_7
    if-eqz v33, :cond_2

    .line 1726
    move-object/from16 v0, v33

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->updateMergerTime(I)V

    goto/16 :goto_2

    .line 1724
    :cond_a
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v2, v2, p1

    add-int/lit8 v2, v2, 0x64

    div-int/lit16 v0, v2, 0x3e8

    move/from16 v46, v0

    goto :goto_7

    .line 1739
    .end local v33    # "page_Pop3rdPhone":Lcom/syu/bt/page/pop/Page_Pop3rdPhone;
    .end local v46    # "value":I
    :sswitch_5
    const/16 v2, 0x3a

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1740
    .local v26, "mBtnAccept":Lcom/lsec/core/frame/ctrl/JButton;
    const/16 v2, 0x3b

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1741
    .local v27, "mBtnSound":Lcom/lsec/core/frame/ctrl/JButton;
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isTalk()Z

    move-result v25

    .line 1742
    .local v25, "isTalk":Z
    if-eqz v26, :cond_b

    .line 1743
    if-eqz v25, :cond_e

    const/16 v2, 0x8

    :goto_8
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 1744
    :cond_b
    if-eqz v27, :cond_c

    .line 1745
    if-eqz v25, :cond_f

    const/4 v2, 0x0

    :goto_9
    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 1747
    :cond_c
    const/16 v2, 0x3e

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Lcom/lsec/core/frame/ctrl/JText;

    .line 1748
    .local v38, "text":Lcom/lsec/core/frame/ctrl/JText;
    if-nez v25, :cond_d

    if-eqz v38, :cond_d

    .line 1749
    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    .line 1750
    .local v6, "strPhone":Ljava/lang/String;
    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v2, v6}, Lcom/syu/bt/db/Bt_Info;->getNameByNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1751
    .local v37, "strName":Ljava/lang/String;
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 1752
    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1757
    .end local v6    # "strPhone":Ljava/lang/String;
    .end local v37    # "strName":Ljava/lang/String;
    :cond_d
    :goto_a
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isInCall()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1758
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/syu/bt/App_Bt;->popShowLLD(Z)V

    goto/16 :goto_3

    .line 1743
    .end local v38    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :cond_e
    const/4 v2, 0x0

    goto :goto_8

    .line 1745
    :cond_f
    const/16 v2, 0x8

    goto :goto_9

    .line 1754
    .restart local v6    # "strPhone":Ljava/lang/String;
    .restart local v37    # "strName":Ljava/lang/String;
    .restart local v38    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :cond_10
    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 1762
    .end local v6    # "strPhone":Ljava/lang/String;
    .end local v25    # "isTalk":Z
    .end local v26    # "mBtnAccept":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v27    # "mBtnSound":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v37    # "strName":Ljava/lang/String;
    .end local v38    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :sswitch_6
    const v42, 0xffff

    .line 1763
    .local v42, "time":I
    const/16 v2, 0x3e

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Lcom/lsec/core/frame/ctrl/JText;

    .line 1764
    .restart local v38    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v38, :cond_3

    .line 1765
    const/16 v2, 0xc

    move/from16 v0, p1

    if-ne v0, v2, :cond_11

    .line 1766
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v2, v2, p1

    add-int/lit8 v2, v2, 0x64

    div-int/lit16 v0, v2, 0x3e8

    move/from16 v42, v0

    .line 1767
    :cond_11
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%02d:%02d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    div-int/lit8 v10, v42, 0x3c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    rem-int/lit8 v10, v42, 0x3c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v2, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1782
    .end local v38    # "text":Lcom/lsec/core/frame/ctrl/JText;
    .end local v42    # "time":I
    :sswitch_7
    const/16 v2, 0x36

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1783
    .restart local v26    # "mBtnAccept":Lcom/lsec/core/frame/ctrl/JButton;
    const/16 v2, 0x38

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1784
    .restart local v27    # "mBtnSound":Lcom/lsec/core/frame/ctrl/JButton;
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isTalk()Z

    move-result v25

    .line 1785
    .restart local v25    # "isTalk":Z
    if-eqz v26, :cond_12

    .line 1786
    if-eqz v25, :cond_16

    const/16 v2, 0x8

    :goto_b
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 1787
    :cond_12
    if-eqz v27, :cond_13

    .line 1788
    if-eqz v25, :cond_17

    const/4 v2, 0x0

    :goto_c
    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 1790
    :cond_13
    const/16 v2, 0x35

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Lcom/lsec/core/frame/ctrl/JText;

    .line 1791
    .local v39, "textName":Lcom/lsec/core/frame/ctrl/JText;
    const/16 v2, 0x33

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Lcom/lsec/core/frame/ctrl/JText;

    .line 1792
    .local v40, "textNum":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v39, :cond_14

    .line 1793
    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    sget-object v7, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/syu/bt/db/Bt_Info;->getNameByNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1794
    .restart local v37    # "strName":Ljava/lang/String;
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 1795
    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1799
    .end local v37    # "strName":Ljava/lang/String;
    :cond_14
    :goto_d
    if-eqz v39, :cond_15

    .line 1800
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1802
    :cond_15
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isInCall()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1803
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/syu/bt/App_Bt;->popShowLLD(Z)V

    goto/16 :goto_4

    .line 1786
    .end local v39    # "textName":Lcom/lsec/core/frame/ctrl/JText;
    .end local v40    # "textNum":Lcom/lsec/core/frame/ctrl/JText;
    :cond_16
    const/4 v2, 0x0

    goto :goto_b

    .line 1788
    :cond_17
    const/16 v2, 0x8

    goto :goto_c

    .line 1797
    .restart local v37    # "strName":Ljava/lang/String;
    .restart local v39    # "textName":Lcom/lsec/core/frame/ctrl/JText;
    .restart local v40    # "textNum":Lcom/lsec/core/frame/ctrl/JText;
    :cond_18
    const-string v2, ""

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 1807
    .end local v25    # "isTalk":Z
    .end local v26    # "mBtnAccept":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v27    # "mBtnSound":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v37    # "strName":Ljava/lang/String;
    .end local v39    # "textName":Lcom/lsec/core/frame/ctrl/JText;
    .end local v40    # "textNum":Lcom/lsec/core/frame/ctrl/JText;
    :sswitch_8
    const v42, 0xffff

    .line 1808
    .restart local v42    # "time":I
    const/16 v2, 0x34

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Lcom/lsec/core/frame/ctrl/JText;

    .line 1809
    .restart local v38    # "text":Lcom/lsec/core/frame/ctrl/JText;
    const-string v2, "num"

    const-string v7, " 22 notify_PopBt Page_PopBt_Num U_TALK_TIME "

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    if-eqz v38, :cond_4

    .line 1811
    const/16 v2, 0xc

    move/from16 v0, p1

    if-ne v0, v2, :cond_19

    .line 1812
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v2, v2, p1

    add-int/lit8 v2, v2, 0x64

    div-int/lit16 v0, v2, 0x3e8

    move/from16 v42, v0

    .line 1814
    :cond_19
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isTalk()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1815
    const-string v2, ""

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1819
    :goto_e
    const-string v2, "num"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " 33 notify_PopBt Page_PopBt_Num U_TALK_TIME time = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v42

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1817
    :cond_1a
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%02d:%02d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    div-int/lit8 v10, v42, 0x3c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    rem-int/lit8 v10, v42, 0x3c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v2, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 1835
    .end local v38    # "text":Lcom/lsec/core/frame/ctrl/JText;
    .end local v42    # "time":I
    :sswitch_9
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v7, 0x9

    aget v46, v2, v7

    .line 1836
    .restart local v46    # "value":I
    if-ltz v46, :cond_1e

    const/4 v2, 0x6

    move/from16 v0, v46

    if-gt v0, v2, :cond_1e

    .line 1837
    const/16 v2, 0x12

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Lcom/lsec/core/frame/ctrl/JText;

    .line 1838
    .restart local v38    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v38, :cond_1c

    .line 1839
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v2, :cond_22

    sget v2, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    if-eqz v2, :cond_1b

    sget v2, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_22

    .line 1840
    :cond_1b
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    sget-object v7, Lcom/syu/bt/App_Bt;->mStrStates:[Ljava/lang/String;

    sget-object v8, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    sget v9, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    aget v8, v8, v9

    add-int/lit8 v8, v8, -0x1

    aget-object v7, v7, v8

    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1845
    :cond_1c
    :goto_f
    const/16 v2, 0x32

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Lcom/lsec/core/frame/ctrl/JText;

    .line 1846
    .local v41, "text_Num":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v41, :cond_1e

    .line 1847
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v2, :cond_23

    sget v2, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    if-eqz v2, :cond_1d

    sget v2, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_23

    .line 1848
    :cond_1d
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    sget-object v7, Lcom/syu/bt/App_Bt;->mStrStates:[Ljava/lang/String;

    sget-object v8, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    sget v9, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    aget v8, v8, v9

    add-int/lit8 v8, v8, -0x1

    aget-object v7, v7, v8

    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1856
    .end local v38    # "text":Lcom/lsec/core/frame/ctrl/JText;
    .end local v41    # "text_Num":Lcom/lsec/core/frame/ctrl/JText;
    :cond_1e
    :goto_10
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isTalk()Z

    move-result v2

    if-nez v2, :cond_20

    .line 1857
    const/16 v2, 0x16

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Lcom/lsec/core/frame/ctrl/JText;

    .line 1858
    .restart local v38    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v38, :cond_1f

    .line 1859
    const-string v2, ""

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1861
    :cond_1f
    const/16 v2, 0x34

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Lcom/lsec/core/frame/ctrl/JText;

    .line 1862
    .restart local v41    # "text_Num":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v41, :cond_20

    .line 1863
    const-string v2, ""

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1867
    .end local v38    # "text":Lcom/lsec/core/frame/ctrl/JText;
    .end local v41    # "text_Num":Lcom/lsec/core/frame/ctrl/JText;
    :cond_20
    const-string v2, "ldd"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " 00 Ipc_New notify_PopBt  Bt.DATA[FinalBt.U_PHONE_STATE] = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v9, 0x9

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    invoke-virtual/range {v29 .. v29}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v31

    check-cast v31, Lcom/syu/bt/page/pop/Page_PopBt;

    .line 1870
    .local v31, "pagePopBt":Lcom/syu/bt/page/pop/Page_PopBt;
    if-eqz v31, :cond_6

    .line 1871
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/app/ipc/Ipc_New$1;->this$0:Lcom/syu/app/ipc/Ipc_New;

    sget v7, Lcom/lsec/core/ipc/module/main/Bt;->sLastPhoneState:I

    invoke-virtual {v2, v7}, Lcom/syu/app/ipc/Ipc_New;->isCalling(I)Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v2, 0x2

    move/from16 v0, v46

    if-eq v0, v2, :cond_21

    if-nez v46, :cond_24

    .line 1872
    :cond_21
    const-string v2, ""

    const/4 v7, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v7}, Lcom/syu/bt/page/pop/Page_PopBt;->setInputNumber(Ljava/lang/String;Z)V

    .line 1874
    const/4 v2, 0x1

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v7

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->mRunnable_DismissPopBT:Ljava/lang/Runnable;

    const-wide/16 v8, 0x1f4

    invoke-static {v2, v7, v8, v9}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    goto/16 :goto_5

    .line 1843
    .end local v31    # "pagePopBt":Lcom/syu/bt/page/pop/Page_PopBt;
    .restart local v38    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :cond_22
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    sget-object v7, Lcom/syu/bt/App_Bt;->mStrStates:[Ljava/lang/String;

    aget-object v7, v7, v46

    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 1851
    .restart local v41    # "text_Num":Lcom/lsec/core/frame/ctrl/JText;
    :cond_23
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    sget-object v7, Lcom/syu/bt/App_Bt;->mStrStates:[Ljava/lang/String;

    aget-object v7, v7, v46

    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 1875
    .end local v38    # "text":Lcom/lsec/core/frame/ctrl/JText;
    .end local v41    # "text_Num":Lcom/lsec/core/frame/ctrl/JText;
    .restart local v31    # "pagePopBt":Lcom/syu/bt/page/pop/Page_PopBt;
    :cond_24
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1876
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v7, 0x9

    aget v2, v2, v7

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lcom/syu/bt/page/pop/Page_PopBt;->updateView(I)V

    goto/16 :goto_5

    .line 1878
    :cond_25
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isTalk()Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x1

    :goto_11
    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lcom/syu/bt/page/pop/Page_PopBt;->updateBtnMute(Z)V

    goto/16 :goto_5

    :cond_26
    const/4 v2, 0x0

    goto :goto_11

    .line 1886
    .end local v31    # "pagePopBt":Lcom/syu/bt/page/pop/Page_PopBt;
    .end local v46    # "value":I
    :sswitch_a
    const/16 v2, 0x13

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Lcom/lsec/core/frame/ctrl/JText;

    .line 1887
    .local v43, "txtNum":Lcom/lsec/core/frame/ctrl/JText;
    const/16 v2, 0x33

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v45

    check-cast v45, Lcom/lsec/core/frame/ctrl/JText;

    .line 1888
    .local v45, "txtNum_Num":Lcom/lsec/core/frame/ctrl/JText;
    const/16 v2, 0x14

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v44

    check-cast v44, Lcom/lsec/core/frame/ctrl/JText;

    .line 1889
    .local v44, "txtNum2":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v43, :cond_28

    .line 1890
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1891
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumberHoldOn:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2c

    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v7, 0x9

    aget v2, v2, v7

    const/4 v7, 0x4

    if-ne v2, v7, :cond_2c

    .line 1892
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumberHoldOn:Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1899
    :goto_12
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "SYU_DS"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1900
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1901
    const/16 v2, 0x8

    move-object/from16 v0, v43

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 1905
    :cond_27
    :goto_13
    if-eqz v44, :cond_28

    .line 1906
    invoke-virtual/range {v43 .. v43}, Lcom/lsec/core/frame/ctrl/JText;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1908
    :cond_28
    if-eqz v45, :cond_29

    .line 1909
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    move-object/from16 v0, v45

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1911
    :cond_29
    const/16 v2, 0x17

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lsec/core/frame/ctrl/JText;

    .line 1912
    .local v4, "txtContact":Lcom/lsec/core/frame/ctrl/JText;
    const/16 v2, 0x18

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JText;

    .line 1913
    .local v5, "txtContact2":Lcom/lsec/core/frame/ctrl/JText;
    const/16 v2, 0x19

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/lsec/core/frame/ctrl/JView;

    .line 1914
    .local v12, "headView":Lcom/lsec/core/frame/ctrl/JView;
    if-eqz v4, :cond_2b

    .line 1915
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "SYU_DS"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1916
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1917
    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 1922
    :cond_2a
    :goto_14
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1923
    const-string v2, ""

    invoke-virtual {v4, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1924
    if-eqz v5, :cond_2b

    .line 1925
    const-string v2, ""

    invoke-virtual {v5, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1972
    :cond_2b
    :goto_15
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1973
    invoke-virtual/range {v29 .. v29}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v31

    check-cast v31, Lcom/syu/bt/page/pop/Page_PopBt;

    .line 1974
    .restart local v31    # "pagePopBt":Lcom/syu/bt/page/pop/Page_PopBt;
    if-eqz v31, :cond_6

    .line 1975
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v7, 0x9

    aget v2, v2, v7

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lcom/syu/bt/page/pop/Page_PopBt;->updateView(I)V

    goto/16 :goto_5

    .line 1894
    .end local v4    # "txtContact":Lcom/lsec/core/frame/ctrl/JText;
    .end local v5    # "txtContact2":Lcom/lsec/core/frame/ctrl/JText;
    .end local v12    # "headView":Lcom/lsec/core/frame/ctrl/JView;
    .end local v31    # "pagePopBt":Lcom/syu/bt/page/pop/Page_PopBt;
    :cond_2c
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    .line 1896
    :cond_2d
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    .line 1903
    :cond_2e
    const/4 v2, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto/16 :goto_13

    .line 1919
    .restart local v4    # "txtContact":Lcom/lsec/core/frame/ctrl/JText;
    .restart local v5    # "txtContact2":Lcom/lsec/core/frame/ctrl/JText;
    .restart local v12    # "headView":Lcom/lsec/core/frame/ctrl/JView;
    :cond_2f
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto :goto_14

    .line 1928
    :cond_30
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1929
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v2, :cond_33

    .line 1930
    const-string v2, "pop33"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " 00 U_PHONE_NUMBER  sPhone_callin_id = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    sget v2, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    if-nez v2, :cond_32

    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    :goto_16
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1936
    :goto_17
    if-eqz v5, :cond_34

    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1937
    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    .line 1939
    .restart local v6    # "strPhone":Ljava/lang/String;
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isRing()Z

    move-result v2

    if-eqz v2, :cond_31

    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumberHoldOn:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 1940
    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumberHoldOn:Ljava/lang/String;

    .line 1941
    :cond_31
    const-string v2, "pop33"

    const-string v7, " 04 Ipc  Runnable"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    sget-object v9, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v10, "Thread-GetNameByNumber"

    new-instance v2, Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;

    const/4 v8, 0x1

    move-object v7, v6

    invoke-direct/range {v2 .. v8}, Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;-><init>(Ljava/util/List;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-static {v9, v10, v2, v7, v8}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    goto/16 :goto_15

    .line 1931
    .end local v6    # "strPhone":Ljava/lang/String;
    :cond_32
    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    goto :goto_16

    .line 1934
    :cond_33
    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_17

    .line 1944
    :cond_34
    if-eqz v12, :cond_36

    .line 1946
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_OEM"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1947
    sget-object v14, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    .line 1948
    .local v14, "defaultPhone":Ljava/lang/String;
    const-string v2, "pop33"

    const-string v7, " 01 Ipc  Runnable"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v16, "Thread-GetNameByNumber"

    new-instance v7, Lcom/syu/bt/runnable/Runnable_getNameByNumber;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    move-object v8, v3

    move-object v9, v4

    invoke-direct/range {v7 .. v15}, Lcom/syu/bt/runnable/Runnable_getNameByNumber;-><init>(Ljava/util/List;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JView;Lcom/lsec/core/frame/ctrl/JView;Ljava/lang/String;Z)V

    const/4 v8, 0x0

    const/4 v9, 0x5

    move-object/from16 v0, v16

    invoke-static {v2, v0, v7, v8, v9}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    goto/16 :goto_15

    .line 1954
    .end local v14    # "defaultPhone":Ljava/lang/String;
    :cond_35
    const-string v2, "gdy66"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " 02 Ipc_New defaultPhone defaultPhone = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    const-string v2, "pop33"

    const-string v7, " 02 Ipc  Runnable"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v7, "Thread-GetNameByNumber"

    new-instance v15, Lcom/syu/bt/runnable/Runnable_getNameByNumber;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const-string v22, ""

    const/16 v23, 0x0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v20, v12

    invoke-direct/range {v15 .. v23}, Lcom/syu/bt/runnable/Runnable_getNameByNumber;-><init>(Ljava/util/List;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JView;Lcom/lsec/core/frame/ctrl/JView;Ljava/lang/String;Z)V

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-static {v2, v7, v15, v8, v9}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    goto/16 :goto_15

    .line 1964
    :cond_36
    const-string v2, "pop33"

    const-string v7, " 03 Ipc  Runnable"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v7, "Thread-GetNameByNumber"

    new-instance v8, Lcom/syu/bt/runnable/Runnable_getNameByNumber;

    const-string v9, ""

    const/4 v10, 0x0

    invoke-direct {v8, v3, v4, v9, v10}, Lcom/syu/bt/runnable/Runnable_getNameByNumber;-><init>(Ljava/util/List;Lcom/lsec/core/frame/ctrl/JText;Ljava/lang/String;Z)V

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-static {v2, v7, v8, v9, v10}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    goto/16 :goto_15

    .line 1982
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    .end local v4    # "txtContact":Lcom/lsec/core/frame/ctrl/JText;
    .end local v5    # "txtContact2":Lcom/lsec/core/frame/ctrl/JText;
    .end local v12    # "headView":Lcom/lsec/core/frame/ctrl/JView;
    .end local v43    # "txtNum":Lcom/lsec/core/frame/ctrl/JText;
    .end local v44    # "txtNum2":Lcom/lsec/core/frame/ctrl/JText;
    .end local v45    # "txtNum_Num":Lcom/lsec/core/frame/ctrl/JText;
    :sswitch_b
    const-string v2, "num"

    const-string v7, " 11 notify_PopBt U_TALK_TIME  "

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    const/16 v2, 0x16

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Lcom/lsec/core/frame/ctrl/JText;

    .line 1985
    .restart local v38    # "text":Lcom/lsec/core/frame/ctrl/JText;
    const/16 v46, 0x0

    .line 1986
    .restart local v46    # "value":I
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v2, :cond_3a

    .line 1987
    if-eqz p2, :cond_38

    move-object/from16 v0, p2

    array-length v2, v0

    const/4 v7, 0x1

    if-le v2, v7, :cond_38

    .line 1989
    const/4 v2, 0x2

    :try_start_1
    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1990
    const-string v2, "talk"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " Pop notify_Bt U_TALK_TIME strs[1] = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x1

    aget-object v8, p4, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ints[1] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget v8, p2, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sPhone_callin_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sPhone2_CALL_NUMBER = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/syu/bt/App_Bt;->sPhone2_CALL_NUMBER:[Ljava/lang/String;

    sget v9, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    const/4 v2, 0x0

    aget-object v2, p4, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 1992
    .restart local v24    # "i":I
    sget v2, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    move/from16 v0, v24

    if-ne v2, v0, :cond_37

    const/4 v2, 0x1

    aget-object v2, p4, v2

    sget-object v7, Lcom/syu/bt/App_Bt;->sPhone2_CALL_NUMBER:[Ljava/lang/String;

    sget v8, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    aget-object v7, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1993
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/app/ipc/Ipc_New$1;->this$0:Lcom/syu/app/ipc/Ipc_New;

    const/4 v7, 0x1

    aget v7, p2, v7

    add-int/lit8 v7, v7, 0x64

    div-int/lit16 v7, v7, 0x3e8

    iput v7, v2, Lcom/syu/app/ipc/Ipc_New;->talktime:I

    .line 1995
    :cond_37
    const-string v2, "talk"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " 44 notify_Bt U_TALK_TIME sPhone2_talktime = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/syu/bt/App_Bt;->sPhone2_talktime:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2002
    .end local v24    # "i":I
    :cond_38
    :goto_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/app/ipc/Ipc_New$1;->this$0:Lcom/syu/app/ipc/Ipc_New;

    iget v2, v2, Lcom/syu/app/ipc/Ipc_New;->talktime:I

    sput v2, Lcom/syu/bt/App_Bt;->sPhone2_talktime:I

    .line 2003
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/app/ipc/Ipc_New$1;->this$0:Lcom/syu/app/ipc/Ipc_New;

    iget v0, v2, Lcom/syu/app/ipc/Ipc_New;->talktime:I

    move/from16 v46, v0

    .line 2007
    :goto_19
    if-eqz v38, :cond_6

    .line 2008
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "SYU_DS"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 2009
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isTalk()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 2010
    const/16 v2, 0x8

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 2014
    :cond_39
    :goto_1a
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isTalk()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 2015
    const-string v2, ""

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 2016
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_NEW"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 2017
    const/16 v2, 0x17

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Lcom/lsec/core/frame/ctrl/JText;

    .line 2018
    .local v28, "name":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v28, :cond_6

    .line 2019
    invoke-virtual/range {v28 .. v28}, Lcom/lsec/core/frame/ctrl/JText;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_6

    .line 2020
    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto/16 :goto_5

    .line 2005
    .end local v28    # "name":Lcom/lsec/core/frame/ctrl/JText;
    :cond_3a
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v2, v2, p1

    add-int/lit8 v2, v2, 0x64

    div-int/lit16 v0, v2, 0x3e8

    move/from16 v46, v0

    goto :goto_19

    .line 2012
    :cond_3b
    const/4 v2, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto :goto_1a

    .line 2023
    :cond_3c
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_OEM"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2024
    const/16 v2, 0x12

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Lcom/lsec/core/frame/ctrl/JText;

    .line 2025
    .local v36, "state":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v36, :cond_6

    .line 2026
    invoke-virtual/range {v36 .. v36}, Lcom/lsec/core/frame/ctrl/JText;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_6

    .line 2027
    const/4 v2, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto/16 :goto_5

    .line 2032
    .end local v36    # "state":Lcom/lsec/core/frame/ctrl/JText;
    :cond_3d
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%02d:%02d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    div-int/lit8 v10, v46, 0x3c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    rem-int/lit8 v10, v46, 0x3c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v2, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 2033
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_NEW"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 2034
    const/16 v2, 0x17

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Lcom/lsec/core/frame/ctrl/JText;

    .line 2035
    .restart local v28    # "name":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v28, :cond_6

    .line 2036
    invoke-virtual/range {v28 .. v28}, Lcom/lsec/core/frame/ctrl/JText;->getVisibility()I

    move-result v2

    const/16 v7, 0x8

    if-eq v2, v7, :cond_6

    .line 2037
    const/16 v2, 0x8

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto/16 :goto_5

    .line 2040
    .end local v28    # "name":Lcom/lsec/core/frame/ctrl/JText;
    :cond_3e
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_OEM"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2041
    const/16 v2, 0x12

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Lcom/lsec/core/frame/ctrl/JText;

    .line 2042
    .restart local v36    # "state":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v36, :cond_6

    .line 2043
    invoke-virtual/range {v36 .. v36}, Lcom/lsec/core/frame/ctrl/JText;->getVisibility()I

    move-result v2

    const/16 v7, 0x8

    if-eq v2, v7, :cond_6

    .line 2044
    const/16 v2, 0x8

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto/16 :goto_5

    .line 2053
    .end local v36    # "state":Lcom/lsec/core/frame/ctrl/JText;
    .end local v38    # "text":Lcom/lsec/core/frame/ctrl/JText;
    .end local v46    # "value":I
    :sswitch_c
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v2, v2, p1

    const/4 v7, 0x1

    if-ne v2, v7, :cond_3f

    const/4 v2, 0x1

    :goto_1b
    sput-boolean v2, Lcom/syu/bt/App_Bt;->bHFP:Z

    .line 2057
    invoke-virtual/range {v29 .. v29}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v31

    check-cast v31, Lcom/syu/bt/page/pop/Page_PopBt;

    .line 2058
    .restart local v31    # "pagePopBt":Lcom/syu/bt/page/pop/Page_PopBt;
    if-eqz v31, :cond_6

    .line 2059
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bHFP:Z

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lcom/syu/bt/page/pop/Page_PopBt;->updateBtnVoiceSwitch(Z)V

    goto/16 :goto_5

    .line 2053
    .end local v31    # "pagePopBt":Lcom/syu/bt/page/pop/Page_PopBt;
    :cond_3f
    const/4 v2, 0x0

    goto :goto_1b

    .line 2065
    :cond_40
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bShowBtInNaviFloatBtn:Z

    if-eqz v2, :cond_6

    .line 2066
    const/16 v2, 0x9

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 2067
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v7, 0x9

    aget v2, v2, v7

    packed-switch v2, :pswitch_data_1

    :pswitch_1
    goto/16 :goto_5

    .line 2070
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/app/ipc/Ipc_New$1;->this$0:Lcom/syu/app/ipc/Ipc_New;

    sget v7, Lcom/lsec/core/ipc/module/main/Bt;->sLastPhoneState:I

    invoke-virtual {v2, v7}, Lcom/syu/app/ipc/Ipc_New;->isCalling(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2071
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/syu/bt/App_Bt;->showFloatBtn(Z)V

    goto/16 :goto_5

    .line 1997
    .restart local v38    # "text":Lcom/lsec/core/frame/ctrl/JText;
    .restart local v46    # "value":I
    :catch_0
    move-exception v2

    goto/16 :goto_18

    .line 1716
    .end local v38    # "text":Lcom/lsec/core/frame/ctrl/JText;
    .restart local v33    # "page_Pop3rdPhone":Lcom/syu/bt/page/pop/Page_Pop3rdPhone;
    :catch_1
    move-exception v2

    goto/16 :goto_6

    .line 1616
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch

    .line 1629
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0x3d -> :sswitch_1
        0x41 -> :sswitch_0
    .end sparse-switch

    .line 1661
    :sswitch_data_1
    .sparse-switch
        0x8 -> :sswitch_2
        0x9 -> :sswitch_3
        0xc -> :sswitch_4
        0x3d -> :sswitch_3
    .end sparse-switch

    .line 1734
    :sswitch_data_2
    .sparse-switch
        0x8 -> :sswitch_5
        0x9 -> :sswitch_5
        0xc -> :sswitch_6
        0x3d -> :sswitch_5
    .end sparse-switch

    .line 1777
    :sswitch_data_3
    .sparse-switch
        0x8 -> :sswitch_7
        0x9 -> :sswitch_7
        0xc -> :sswitch_8
        0x3d -> :sswitch_7
    .end sparse-switch

    .line 1832
    :sswitch_data_4
    .sparse-switch
        0x8 -> :sswitch_a
        0x9 -> :sswitch_9
        0xc -> :sswitch_b
        0x12 -> :sswitch_c
        0x3d -> :sswitch_9
        0x41 -> :sswitch_a
    .end sparse-switch

    .line 2067
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
