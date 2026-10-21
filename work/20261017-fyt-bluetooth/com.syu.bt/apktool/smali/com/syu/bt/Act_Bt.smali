.class public Lcom/syu/bt/Act_Bt;
.super Lcom/lsec/core/frame/app/MyAct;
.source "Act_Bt.java"

# interfaces
.implements Lcom/syu/bt/InterfaceBt;
.implements Lcom/lsec/core/frame/app/InterfaceUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/bt/Act_Bt$MyAnimatorListener;,
        Lcom/syu/bt/Act_Bt$RunnableShowLoading;
    }
.end annotation


# static fields
.field public static final BACK_FLAG_ACTIVITY_BIT:I = 0x2

.field public static final BACK_FLAG_FULL_APP_BIT:I = 0x10

.field public static final BACK_FLAG_FULL_NAVI2_BIT:I = 0x20

.field public static final BACK_FLAG_FULL_NAVI_BIT:I = 0x4

.field public static final BACK_FLAG_HALF_NAVI_BIT:I = 0x8

.field public static final BACK_FLAG_PAGE_BIT:I = 0x1

.field public static final FLAG_HOMEKEY_DISPATCHED:I = -0x80000000

.field public static final FocusBtn_BtAv:I = 0x4

.field public static final FocusBtn_Cnt:I = 0x8

.field public static final FocusBtn_Contact:I = 0x6

.field public static final FocusBtn_Dial:I = 0x2

.field public static final FocusBtn_History:I = 0x5

.field public static final FocusBtn_Main:I = 0x1

.field public static final FocusBtn_Menu:I = 0x0

.field public static final FocusBtn_Pair:I = 0x7

.field public static final FocusBtn_Set:I = 0x3

.field public static LauncherToobar:Z

.field public static Sel_Id:I


# instance fields
.field isGrid:Z

.field public mBtnFocusLast:[Lcom/lsec/core/frame/ctrl/JButton;

.field public mDrawables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public mPageMain:Landroid/view/ViewGroup;

.field public mPageMenu:Lcom/lsec/core/frame/ctrl/JPage;

.field public mProgressIpPhoneDlg:Landroid/app/ProgressDialog;

.field public mRecSound:Lcom/syu/bt/recsound/RecSound;

.field public mRunnableDisLoading:Ljava/lang/Runnable;

.field public mScrollPageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public uiUtil:Lcom/syu/bt/util/UIUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    sput-boolean v0, Lcom/syu/bt/Act_Bt;->LauncherToobar:Z

    .line 1388
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/lsec/core/frame/app/MyAct;-><init>()V

    .line 145
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v0, p0, Lcom/syu/bt/Act_Bt;->mBtnFocusLast:[Lcom/lsec/core/frame/ctrl/JButton;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/Act_Bt;->mScrollPageList:Ljava/util/List;

    .line 149
    new-instance v0, Lcom/syu/bt/recsound/RecSound;

    invoke-direct {v0}, Lcom/syu/bt/recsound/RecSound;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/Act_Bt;->mRecSound:Lcom/syu/bt/recsound/RecSound;

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syu/bt/Act_Bt;->mProgressIpPhoneDlg:Landroid/app/ProgressDialog;

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/Act_Bt;->mDrawables:Ljava/util/HashMap;

    .line 1838
    new-instance v0, Lcom/syu/bt/Act_Bt$1;

    invoke-direct {v0, p0}, Lcom/syu/bt/Act_Bt$1;-><init>(Lcom/syu/bt/Act_Bt;)V

    iput-object v0, p0, Lcom/syu/bt/Act_Bt;->mRunnableDisLoading:Ljava/lang/Runnable;

    .line 2084
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/syu/bt/Act_Bt;->isGrid:Z

    .line 124
    return-void
.end method

.method public static checkCustomerId()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method private showOrHideScreenButton(Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 356
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 359
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.fyt.screenbutton"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    sget-object v1, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/app/MyApplication;->startServiceSafely(Landroid/content/Intent;)V

    .line 361
    return-void
.end method


# virtual methods
.method public ClearAllContact(Z)V
    .locals 8
    .param p1, "bClearUrl"    # Z

    .prologue
    const/16 v7, 0x27e6

    .line 1538
    const-string v4, "gdy13"

    const-string v5, " 11 DEL_CONTACT_ALL   "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    iget-object v4, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v5, 0x2715

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    .line 1540
    .local v3, "pageContact":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v3, :cond_1

    .line 1541
    const/16 v4, 0x2811

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JGridView;

    .line 1542
    .local v1, "gridView":Lcom/lsec/core/frame/ctrl/JGridView;
    if-eqz v1, :cond_1

    .line 1543
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v4, :cond_4

    .line 1544
    if-eqz p1, :cond_0

    .line 1545
    iget-object v4, p0, Lcom/syu/bt/Act_Bt;->uiUtil:Lcom/syu/bt/util/UIUtil;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v6, "bt_deling"

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/syu/bt/util/UIUtil;->showLoading(Ljava/lang/String;)V

    .line 1546
    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    sget v6, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/syu/bt/db/Bt_Info;->clearAllContacts(Ljava/lang/String;)V

    .line 1548
    :cond_0
    sget v4, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    if-nez v4, :cond_2

    .line 1549
    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v4, v4, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1555
    :goto_0
    sget-object v4, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1559
    invoke-virtual {v3, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1560
    .local v0, "editSearch":Landroid/widget/EditText;
    if-eqz v0, :cond_1

    .line 1561
    const-string v4, ""

    sput-object v4, Lcom/syu/bt/page/Page_Contact;->strSearch:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1562
    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1587
    .end local v0    # "editSearch":Landroid/widget/EditText;
    .end local v1    # "gridView":Lcom/lsec/core/frame/ctrl/JGridView;
    :cond_1
    :goto_2
    return-void

    .line 1551
    .restart local v1    # "gridView":Lcom/lsec/core/frame/ctrl/JGridView;
    :cond_2
    const-string v4, "save11"

    const-string v5, " 33  mListContact2.clear "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v4, v4, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 1555
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/syu/bt/InterfaceBt;

    .line 1556
    .local v2, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v2}, Lcom/syu/bt/InterfaceBt;->resetList()V

    goto :goto_1

    .line 1565
    .end local v2    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    :cond_4
    if-eqz p1, :cond_5

    .line 1566
    iget-object v4, p0, Lcom/syu/bt/Act_Bt;->uiUtil:Lcom/syu/bt/util/UIUtil;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v6, "bt_deling"

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/syu/bt/util/UIUtil;->showLoading(Ljava/lang/String;)V

    .line 1567
    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/syu/bt/db/Bt_Info;->clearAllContacts(Ljava/lang/String;)V

    .line 1571
    :cond_5
    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v4, v4, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1572
    const-string v4, "fav"

    const-string v5, " 00  mListFavContact.clear"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v4, v4, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1575
    sget-object v4, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1579
    invoke-virtual {v3, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1580
    .restart local v0    # "editSearch":Landroid/widget/EditText;
    if-eqz v0, :cond_1

    .line 1581
    const-string v4, ""

    sput-object v4, Lcom/syu/bt/page/Page_Contact;->strSearch:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1582
    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_2

    .line 1575
    .end local v0    # "editSearch":Landroid/widget/EditText;
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/syu/bt/InterfaceBt;

    .line 1576
    .restart local v2    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v2}, Lcom/syu/bt/InterfaceBt;->resetList()V

    goto :goto_3
.end method

.method public DialByKey()V
    .locals 3

    .prologue
    .line 2023
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-boolean v1, v1, Lcom/lsec/core/frame/app/MyActivity;->bTop:Z

    if-eqz v1, :cond_0

    .line 2024
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v1, v1, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v1, :cond_0

    .line 2025
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v1, v1, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    .line 2026
    .local v0, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    instance-of v1, v0, Lcom/syu/bt/page/Page_Av;

    if-eqz v1, :cond_1

    .line 2028
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    const/16 v2, 0x2713

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    .line 2042
    .end local v0    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    :cond_0
    :goto_0
    return-void

    .line 2032
    .restart local v0    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    :cond_1
    instance-of v1, v0, Lcom/syu/bt/page/Page_Contact;

    if-eqz v1, :cond_2

    .line 2033
    check-cast v0, Lcom/syu/bt/page/Page_Contact;

    .end local v0    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Contact;->scrollOk(Z)Z

    goto :goto_0

    .line 2034
    .restart local v0    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    :cond_2
    instance-of v1, v0, Lcom/syu/bt/page/Page_Dial;

    if-eqz v1, :cond_3

    .line 2035
    check-cast v0, Lcom/syu/bt/page/Page_Dial;

    .end local v0    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    invoke-virtual {v0}, Lcom/syu/bt/page/Page_Dial;->dialByKey()Z

    goto :goto_0

    .line 2036
    .restart local v0    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    :cond_3
    instance-of v1, v0, Lcom/syu/bt/page/Page_History;

    if-eqz v1, :cond_4

    .line 2037
    check-cast v0, Lcom/syu/bt/page/Page_History;

    .end local v0    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    invoke-virtual {v0}, Lcom/syu/bt/page/Page_History;->scrollOk()Z

    goto :goto_0

    .line 2038
    .restart local v0    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    :cond_4
    instance-of v1, v0, Lcom/syu/bt/page/Page_Pair;

    if-eqz v1, :cond_0

    .line 2039
    check-cast v0, Lcom/syu/bt/page/Page_Pair;

    .end local v0    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    invoke-virtual {v0}, Lcom/syu/bt/page/Page_Pair;->scrollOk()Z

    goto :goto_0
.end method

.method public DismissPopAIQR()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 1472
    iget-object v2, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v3, 0x2726

    const-string v4, ""

    invoke-virtual {v2, v3, v4, v1}, Lcom/lsec/core/frame/app/MyUi;->getPopDlg(ILjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    .line 1473
    .local v0, "popDlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 1474
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1475
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1479
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public DismissPopAIQR2()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 1492
    iget-object v2, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v3, 0x2727

    const-string v4, ""

    invoke-virtual {v2, v3, v4, v1}, Lcom/lsec/core/frame/app/MyUi;->getPopDlg(ILjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    .line 1493
    .local v0, "popDlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 1494
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1495
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1499
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public DismissPopContacts()V
    .locals 5

    .prologue
    .line 1382
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x2722

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getPopDlg(ILjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    .line 1383
    .local v0, "popDlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 1384
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1385
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1387
    :cond_0
    return-void
.end method

.method public DismissPopContacts2()V
    .locals 5

    .prologue
    .line 1422
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x2723

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getPopDlg(ILjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    .line 1423
    .local v0, "popDlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 1424
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1425
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1427
    :cond_0
    return-void
.end method

.method public DismissPopHead()V
    .locals 6

    .prologue
    .line 1521
    invoke-virtual {p0}, Lcom/syu/bt/Act_Bt;->getPageDial()Lcom/syu/bt/page/Page_Dial;

    move-result-object v1

    .line 1522
    .local v1, "page_Dial":Lcom/syu/bt/page/Page_Dial;
    if-eqz v1, :cond_0

    .line 1523
    invoke-virtual {v1}, Lcom/syu/bt/page/Page_Dial;->dismissPopBtHead()V

    .line 1526
    :cond_0
    iget-object v3, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v4, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v5, 0x2716

    invoke-virtual {v3, v4, v5}, Lcom/lsec/core/frame/app/MyActivity;->getPageNotify(Lcom/lsec/core/frame/app/MyUi;I)Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/page/Page_ContactItem;

    .line 1527
    .local v0, "page_ContactItem":Lcom/syu/bt/page/Page_ContactItem;
    if-eqz v0, :cond_1

    .line 1528
    invoke-virtual {v0}, Lcom/syu/bt/page/Page_ContactItem;->dismissPopBtHead()V

    .line 1531
    :cond_1
    iget-object v3, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v4, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v5, 0x2721

    invoke-virtual {v3, v4, v5}, Lcom/lsec/core/frame/app/MyActivity;->getPageNotify(Lcom/lsec/core/frame/app/MyUi;I)Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v2

    check-cast v2, Lcom/syu/bt/page/Page_FavoriteItem;

    .line 1532
    .local v2, "page_FavoriteItem":Lcom/syu/bt/page/Page_FavoriteItem;
    if-eqz v2, :cond_2

    .line 1533
    invoke-virtual {v2}, Lcom/syu/bt/page/Page_FavoriteItem;->dismissPopBtHead()V

    .line 1535
    :cond_2
    return-void
.end method

.method public DismissPopHySet()V
    .locals 5

    .prologue
    .line 1439
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x2724

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getPopDlg(ILjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    .line 1440
    .local v0, "popDlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 1441
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1442
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1444
    :cond_0
    return-void
.end method

.method public DismissPopHySetAI()V
    .locals 5

    .prologue
    .line 1456
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x2725

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getPopDlg(ILjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    .line 1457
    .local v0, "popDlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 1458
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1459
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1461
    :cond_0
    return-void
.end method

.method public Func_Back()Z
    .locals 5

    .prologue
    const/16 v3, 0x2713

    const/4 v4, 0x1

    .line 1013
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/syu/bt/util/BTUtil;->IsConnectCarplay()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1042
    :cond_0
    :goto_0
    return v4

    .line 1016
    :cond_1
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v2}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1019
    const/4 v0, 0x0

    .line 1020
    .local v0, "bJumpDial":Z
    const/4 v1, -0x1

    .line 1021
    .local v1, "idCurrent":I
    iget-object v2, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v2, v2, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v2, :cond_2

    .line 1022
    iget-object v2, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v2, v2, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JPage;->getId()I

    move-result v1

    .line 1025
    :cond_2
    const/16 v2, 0x271a

    if-ne v1, v2, :cond_4

    .line 1026
    const/4 v0, 0x0

    .line 1030
    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    .line 1031
    iget-object v2, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    goto :goto_0

    .line 1027
    :cond_4
    if-eq v1, v3, :cond_3

    .line 1028
    const/4 v0, 0x1

    goto :goto_1

    .line 1033
    :cond_5
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bChangeAppIdWhenTalking:Z

    if-eqz v2, :cond_6

    .line 1034
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v2, v1}, Lcom/syu/app/ipc/Bt_IpcObj;->requestAppIdNull(I)V

    .line 1038
    :goto_2
    const-string v2, "pv"

    const-string v3, " ** 22 moveTaskToBack "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    iget-object v2, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/app/MyActivity;->moveTaskToBack(Z)Z

    goto :goto_0

    .line 1036
    :cond_6
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v2}, Lcom/syu/app/ipc/Bt_IpcObj;->requestAppIdNull()V

    goto :goto_2
.end method

.method public InitMapPage(Lcom/lsec/core/frame/app/MyUi;)V
    .locals 8
    .param p1, "ui"    # Lcom/lsec/core/frame/app/MyUi;

    .prologue
    const/16 v7, 0x2718

    const/16 v6, 0x2715

    const/16 v5, 0x2713

    const/16 v4, 0x2712

    const/16 v3, 0x2711

    .line 366
    sget-boolean v0, Lcom/syu/bt/App_Bt;->isAiuvoice:Z

    if-nez v0, :cond_0

    sget v0, Lcom/syu/bt/App_Bt;->isAIType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 370
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_ai6"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    .line 372
    :cond_0
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const-string v1, "bt_main"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 373
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const-string v1, "bt_menu"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 374
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const-string v1, "bt_dial"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 375
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const-string v1, "bt_contact"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 376
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const-string v1, "bt_history"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 377
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x271a

    const-string v2, "bt_av"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 378
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x271b

    const-string v2, "bt_set"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 379
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x271c

    const-string v2, "bt_pair"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 380
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x2720

    const-string v2, "bt_favorite"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 381
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x2721

    const-string v2, "bt_favoriteitem"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 382
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x271d

    const-string v2, "bt_pairitem"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 383
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x271e

    const-string v2, "bt_paireditem"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 384
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x271f

    const-string v2, "bt_setpairitem"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 385
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x2714

    const-string v2, "bt_dialitem"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 386
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x2716

    const-string v2, "bt_contactitem"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 387
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x2719

    const-string v2, "bt_historyitem"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 389
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x2722

    const-string v2, "bt_popdel"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 390
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x2723

    const-string v2, "bt_popdel2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 391
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x2724

    const-string v2, "bt_pophyset"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 392
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x2725

    const-string v2, "bt_pophyset_ai"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 393
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x2726

    const-string v2, "bt_popaiqr"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 394
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x2727

    const-string v2, "bt_popaiqr2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 395
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x272e

    const-string v2, "bt_popmsbc"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 396
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x272f

    const-string v2, "bt_popcodec"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 397
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x2728

    const-string v2, "bt_poppwd"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 398
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x2729

    const-string v2, "bt_poppinpwd"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 399
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x272a

    const-string v2, "bt_poprecsound"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 400
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x272b

    const-string v2, "bt_popbtring"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 401
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x272c

    const-string v2, "bt_popbtringitem"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 402
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x272d

    const-string v2, "bt_popbthead"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 403
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x2730

    const-string v2, "bt_callin"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 404
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x2734

    const-string v2, "bt_callin_showdial"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 405
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x2735

    const-string v2, "bt_callin_showcall"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 406
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x2736

    const-string v2, "bt_callin_showkey"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 407
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x2737

    const-string v2, "bt_callin_hidekey"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 408
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x2731

    const-string v2, "bt_callin_halfscreen"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 409
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x2738

    const-string v2, "bt_callin_showdial_halfscreen"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 410
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x2739

    const-string v2, "bt_callin_showcall_halfscreen"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 411
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x273a

    const-string v2, "bt_callin_showkey_halfscreen"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 412
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x2732

    const-string v2, "bt_dial_halfscreen"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 413
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x2733

    const-string v2, "bt_av_halfscreen"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 415
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->is7731()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v1, "TZY_UI5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const-string v1, "bt_main2"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 417
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const-string v1, "bt_menu2"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 418
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const-string v1, "bt_dial2"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 419
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const-string v1, "bt_contact2"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 420
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const-string v1, "bt_history2"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 421
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x271a

    const-string v2, "bt_av2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 422
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x271b

    const-string v2, "bt_set2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 423
    iget-object v0, p1, Lcom/lsec/core/frame/app/MyUi;->mMapPage:Landroid/util/SparseArray;

    const/16 v1, 0x271c

    const-string v2, "bt_pair2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 425
    :cond_1
    return-void
.end method

.method public InitPage(Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 4
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    const/4 v1, 0x1

    .line 484
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    const-string v3, "colorshow"

    invoke-virtual {v2, v3, v1}, Lcom/lsec/core/util/MySharePreference2;->getIntValue(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    sput-boolean v1, Lcom/syu/bt/App_Bt;->color_show:Z

    .line 486
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JPage;->getId()I

    move-result v0

    .line 487
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 628
    :goto_1
    :pswitch_0
    return-void

    .line 484
    .end local v0    # "id":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 489
    .restart local v0    # "id":I
    :pswitch_1
    new-instance v1, Lcom/syu/bt/page/Page_Main;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/Page_Main;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto :goto_1

    .line 492
    :pswitch_2
    new-instance v1, Lcom/syu/bt/page/Page_Menu;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/Page_Menu;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    .line 493
    invoke-virtual {p0}, Lcom/syu/bt/Act_Bt;->setBgColor()V

    goto :goto_1

    .line 505
    :pswitch_3
    new-instance v1, Lcom/syu/bt/page/Page_Dial;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/Page_Dial;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto :goto_1

    .line 508
    :pswitch_4
    new-instance v1, Lcom/syu/bt/page/Page_DialItem;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/Page_DialItem;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto :goto_1

    .line 511
    :pswitch_5
    new-instance v1, Lcom/syu/bt/page/Page_Contact;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/Page_Contact;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto :goto_1

    .line 514
    :pswitch_6
    new-instance v1, Lcom/syu/bt/page/Page_ContactItem;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/Page_ContactItem;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto :goto_1

    .line 517
    :pswitch_7
    new-instance v1, Lcom/syu/bt/page/Page_History;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/Page_History;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto :goto_1

    .line 520
    :pswitch_8
    new-instance v1, Lcom/syu/bt/page/Page_HistoryItem;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/Page_HistoryItem;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto :goto_1

    .line 523
    :pswitch_9
    new-instance v1, Lcom/syu/bt/page/Page_Av;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/Page_Av;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto :goto_1

    .line 526
    :pswitch_a
    new-instance v1, Lcom/syu/bt/page/Page_Set;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/Page_Set;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto :goto_1

    .line 535
    :pswitch_b
    new-instance v1, Lcom/syu/bt/page/Page_Pair;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/Page_Pair;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto :goto_1

    .line 538
    :pswitch_c
    new-instance v1, Lcom/syu/bt/page/Page_PairItem;

    invoke-direct {v1, p1}, Lcom/syu/bt/page/Page_PairItem;-><init>(Lcom/lsec/core/frame/ctrl/JPage;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto :goto_1

    .line 541
    :pswitch_d
    new-instance v1, Lcom/syu/bt/page/Page_PairedItem;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/Page_PairedItem;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto :goto_1

    .line 544
    :pswitch_e
    new-instance v1, Lcom/syu/bt/page/Page_SetPairItem;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/Page_SetPairItem;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto/16 :goto_1

    .line 547
    :pswitch_f
    new-instance v1, Lcom/syu/bt/page/Page_Favorite;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/Page_Favorite;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto/16 :goto_1

    .line 550
    :pswitch_10
    new-instance v1, Lcom/syu/bt/page/Page_FavoriteItem;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/Page_FavoriteItem;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto/16 :goto_1

    .line 553
    :pswitch_11
    new-instance v1, Lcom/syu/bt/page/pop/Page_PopDel;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/pop/Page_PopDel;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto/16 :goto_1

    .line 556
    :pswitch_12
    new-instance v1, Lcom/syu/bt/page/pop/Page_PopDel2;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/pop/Page_PopDel2;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto/16 :goto_1

    .line 559
    :pswitch_13
    new-instance v1, Lcom/syu/bt/page/pop/Page_PopHySet;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/pop/Page_PopHySet;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto/16 :goto_1

    .line 562
    :pswitch_14
    new-instance v1, Lcom/syu/bt/page/pop/Page_PopHySetAI;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/pop/Page_PopHySetAI;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto/16 :goto_1

    .line 565
    :pswitch_15
    new-instance v1, Lcom/syu/bt/page/pop/Page_PopAIQR;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/pop/Page_PopAIQR;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto/16 :goto_1

    .line 568
    :pswitch_16
    new-instance v1, Lcom/syu/bt/page/pop/Page_PopAIQR2;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/pop/Page_PopAIQR2;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto/16 :goto_1

    .line 571
    :pswitch_17
    new-instance v1, Lcom/syu/bt/page/pop/Page_PopMSBC;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/pop/Page_PopMSBC;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto/16 :goto_1

    .line 574
    :pswitch_18
    new-instance v1, Lcom/syu/bt/page/pop/Page_PopCODEC;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/pop/Page_PopCODEC;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto/16 :goto_1

    .line 577
    :pswitch_19
    new-instance v1, Lcom/syu/bt/page/pop/Page_PopPwd;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/pop/Page_PopPwd;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto/16 :goto_1

    .line 580
    :pswitch_1a
    new-instance v1, Lcom/syu/bt/page/pop/Page_PopPinPwd;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/pop/Page_PopPinPwd;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto/16 :goto_1

    .line 583
    :pswitch_1b
    new-instance v1, Lcom/syu/bt/page/pop/Page_PopRecSound;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/pop/Page_PopRecSound;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto/16 :goto_1

    .line 586
    :pswitch_1c
    new-instance v1, Lcom/syu/bt/page/pop/Page_PopBtRing;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/pop/Page_PopBtRing;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto/16 :goto_1

    .line 589
    :pswitch_1d
    new-instance v1, Lcom/syu/bt/page/pop/Page_PopBtRingItem;

    invoke-direct {v1, p1}, Lcom/syu/bt/page/pop/Page_PopBtRingItem;-><init>(Lcom/lsec/core/frame/ctrl/JPage;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto/16 :goto_1

    .line 592
    :pswitch_1e
    new-instance v1, Lcom/syu/bt/page/pop/Page_PopBtHead;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/pop/Page_PopBtHead;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto/16 :goto_1

    .line 595
    :pswitch_1f
    new-instance v1, Lcom/syu/bt/page/Page_Callin;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/Page_Callin;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto/16 :goto_1

    .line 598
    :pswitch_20
    new-instance v1, Lcom/syu/bt/page/Page_Callin_ShowDial;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/Page_Callin_ShowDial;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto/16 :goto_1

    .line 601
    :pswitch_21
    new-instance v1, Lcom/syu/bt/page/Page_Callin_ShowCall;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/Page_Callin_ShowCall;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto/16 :goto_1

    .line 604
    :pswitch_22
    new-instance v1, Lcom/syu/bt/page/Page_Callin_ShowKey;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/Page_Callin_ShowKey;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto/16 :goto_1

    .line 607
    :pswitch_23
    new-instance v1, Lcom/syu/bt/page/Page_Callin_HideKey;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/Page_Callin_HideKey;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto/16 :goto_1

    .line 610
    :pswitch_24
    new-instance v1, Lcom/syu/bt/page/Page_Callin_HalfScreen;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/Page_Callin_HalfScreen;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto/16 :goto_1

    .line 613
    :pswitch_25
    new-instance v1, Lcom/syu/bt/page/Page_Callin_ShowDial_HalfScreen;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/Page_Callin_ShowDial_HalfScreen;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto/16 :goto_1

    .line 616
    :pswitch_26
    new-instance v1, Lcom/syu/bt/page/Page_Callin_ShowCall_HalfScreen;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/Page_Callin_ShowCall_HalfScreen;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto/16 :goto_1

    .line 619
    :pswitch_27
    new-instance v1, Lcom/syu/bt/page/Page_Callin_ShowKey_HalfScreen;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/Page_Callin_ShowKey_HalfScreen;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto/16 :goto_1

    .line 622
    :pswitch_28
    new-instance v1, Lcom/syu/bt/page/Page_Av_HalfScreen;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/Page_Av_HalfScreen;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto/16 :goto_1

    .line 625
    :pswitch_29
    new-instance v1, Lcom/syu/bt/page/Page_Dial_HalfScreen;

    invoke-direct {v1, p1, p0}, Lcom/syu/bt/page/Page_Dial_HalfScreen;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    goto/16 :goto_1

    .line 487
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_17
        :pswitch_18
        :pswitch_1f
        :pswitch_24
        :pswitch_29
        :pswitch_28
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_25
        :pswitch_26
        :pswitch_27
    .end packed-switch
.end method

.method public MainClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1342
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1344
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/syu/bt/Act_Bt;->getFixPageMain(I)I

    move-result v1

    .line 1345
    .local v1, "idPageTo":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1346
    const-string v2, "HJT"

    const-string v3, "D"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    iget-object v2, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v2, v1}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    .line 1348
    const/4 v2, 0x1

    .line 1351
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public MenuClick(Landroid/view/View;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1318
    sget-boolean v5, Lcom/syu/bt/App_Bt;->bDownloading:Z

    if-eqz v5, :cond_0

    .line 1319
    iget-object v4, p0, Lcom/syu/bt/Act_Bt;->uiUtil:Lcom/syu/bt/util/UIUtil;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v6, "bt_download"

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/syu/bt/util/UIUtil;->showLoading(Ljava/lang/String;)V

    .line 1335
    :goto_0
    return v3

    .line 1322
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1323
    .local v0, "id":I
    const-string v5, "gdy9"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " 00 MenuClick id = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    invoke-virtual {p0, v0}, Lcom/syu/bt/Act_Bt;->getFixPage(I)I

    move-result v1

    .line 1325
    .local v1, "idPageTo":I
    if-eq v1, v8, :cond_2

    move v2, v3

    .line 1326
    .local v2, "jumpPage":Z
    :goto_1
    iget-object v5, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v5, v5, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v5, :cond_1

    .line 1327
    if-eq v1, v8, :cond_3

    iget-object v5, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v5, v5, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JPage;->getId()I

    move-result v5

    if-eq v1, v5, :cond_3

    move v2, v3

    .line 1330
    :cond_1
    :goto_2
    if-eqz v2, :cond_4

    .line 1332
    iget-object v4, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v4, v1}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    goto :goto_0

    .end local v2    # "jumpPage":Z
    :cond_2
    move v2, v4

    .line 1325
    goto :goto_1

    .restart local v2    # "jumpPage":Z
    :cond_3
    move v2, v4

    .line 1327
    goto :goto_2

    :cond_4
    move v3, v4

    .line 1335
    goto :goto_0
.end method

.method public ReadScrollSet()V
    .locals 6

    .prologue
    .line 239
    :try_start_0
    iget-object v4, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const-string v5, "bt_scroll"

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getRaw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "strXml":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 241
    new-instance v3, Lcom/lsec/core/util/Markup;

    invoke-direct {v3}, Lcom/lsec/core/util/Markup;-><init>()V

    .line 242
    .local v3, "xml":Lcom/lsec/core/util/Markup;
    invoke-virtual {v3, v2}, Lcom/lsec/core/util/Markup;->ReadXML(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v3}, Lcom/lsec/core/util/Markup;->IntoItem()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 246
    :cond_0
    const-string v4, "id"

    invoke-virtual {v3, v4}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 247
    iget-object v4, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v4, v4, Lcom/lsec/core/frame/app/MyUi;->mCtrlId:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    .line 248
    iget-object v4, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v4, v4, Lcom/lsec/core/frame/app/MyUi;->mCtrlId:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 249
    iget-object v5, p0, Lcom/syu/bt/Act_Bt;->mScrollPageList:Ljava/util/List;

    iget-object v4, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v4, v4, Lcom/lsec/core/frame/app/MyUi;->mCtrlId:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_1
    invoke-virtual {v3}, Lcom/lsec/core/util/Markup;->NextItem()Z

    move-result v4

    if-nez v4, :cond_0

    .line 253
    invoke-virtual {v3}, Lcom/lsec/core/util/Markup;->ExitItem()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v1    # "str":Ljava/lang/String;
    .end local v2    # "strXml":Ljava/lang/String;
    .end local v3    # "xml":Lcom/lsec/core/util/Markup;
    :cond_2
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addChild2Parent(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "viewParent"    # Landroid/view/ViewGroup;

    .prologue
    .line 876
    const/16 v0, 0x2711

    invoke-virtual {p0, p1, v0}, Lcom/syu/bt/Act_Bt;->addPage2Parent(Landroid/view/ViewGroup;I)V

    .line 877
    const/16 v0, 0x2712

    invoke-virtual {p0, p1, v0}, Lcom/syu/bt/Act_Bt;->addPage2Parent(Landroid/view/ViewGroup;I)V

    .line 878
    return-void
.end method

.method public addPage2Parent(Landroid/view/ViewGroup;I)V
    .locals 5
    .param p1, "viewParent"    # Landroid/view/ViewGroup;
    .param p2, "idPage"    # I

    .prologue
    const/16 v4, 0x2712

    const/4 v3, 0x1

    .line 850
    if-eqz p1, :cond_1

    .line 851
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 852
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v1, v3, p2}, Lcom/lsec/core/frame/app/MyUi;->loadPage(ZI)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 853
    .local v0, "pageMain":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v0, :cond_0

    .line 854
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 856
    :cond_0
    if-ne p2, v4, :cond_1

    .line 857
    sget v1, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    const/4 v2, 0x0

    invoke-virtual {p0, v4, v1, v2, v3}, Lcom/syu/bt/Act_Bt;->updateMenuSelected(IIIZ)V

    .line 861
    .end local v0    # "pageMain":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_1
    return-void
.end method

.method public checkAppIdIsRight(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 2283
    const/4 v0, 0x1

    new-instance v1, Lcom/syu/bt/Act_Bt$2;

    invoke-direct {v1, p0}, Lcom/syu/bt/Act_Bt$2;-><init>(Lcom/syu/bt/Act_Bt;)V

    .line 2292
    int-to-long v2, p1

    .line 2283
    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 2293
    return-void
.end method

.method public checkFocusOnGridView(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 2197
    sparse-switch p1, :sswitch_data_0

    .line 2204
    :goto_0
    return-void

    .line 2201
    :sswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/syu/bt/Act_Bt;->isGrid:Z

    goto :goto_0

    .line 2197
    :sswitch_data_0
    .sparse-switch
        0x2811 -> :sswitch_0
        0x2831 -> :sswitch_0
        0x28d3 -> :sswitch_0
    .end sparse-switch
.end method

.method public createUiItemOtherWay(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUiItem;)Landroid/view/View;
    .locals 21
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "item"    # Lcom/lsec/core/frame/app/MyUiItem;

    .prologue
    .line 1086
    const/4 v12, 0x0

    .line 1087
    .local v12, "child":Landroid/view/View;
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getType()I

    move-result v20

    .line 1089
    .local v20, "type":I
    packed-switch v20, :pswitch_data_0

    .line 1182
    :cond_0
    :goto_0
    return-object v12

    .line 1091
    :pswitch_0
    new-instance v2, Lcom/syu/bt/ctrl/JPinBar;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/syu/bt/ctrl/JPinBar;-><init>(Lcom/lsec/core/frame/ctrl/JPage;)V

    .line 1092
    .local v2, "view":Lcom/syu/bt/ctrl/JPinBar;
    move-object v12, v2

    .line 1094
    goto :goto_0

    .line 1096
    .end local v2    # "view":Lcom/syu/bt/ctrl/JPinBar;
    :pswitch_1
    new-instance v2, Lcom/syu/bt/ctrl/JRotView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/syu/bt/ctrl/JRotView;-><init>(Lcom/lsec/core/frame/ctrl/JPage;)V

    .line 1097
    .local v2, "view":Lcom/syu/bt/ctrl/JRotView;
    move-object v12, v2

    .line 1099
    goto :goto_0

    .line 1102
    .end local v2    # "view":Lcom/syu/bt/ctrl/JRotView;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getRect()[Landroid/graphics/Rect;

    move-result-object v18

    .line 1103
    .local v18, "rec":[Landroid/graphics/Rect;
    const/16 v9, 0x40

    .line 1104
    .local v9, "iCnt":I
    const/4 v10, 0x0

    .line 1105
    .local v10, "iStyle":I
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getPara()[I

    move-result-object v16

    .line 1106
    .local v16, "para":[I
    if-eqz v16, :cond_1

    .line 1107
    const/4 v3, 0x0

    aget v9, v16, v3

    .line 1108
    move-object/from16 v0, v16

    array-length v3, v0

    const/4 v5, 0x2

    if-lt v3, v5, :cond_1

    .line 1109
    const/4 v3, 0x1

    aget v10, v16, v3

    .line 1113
    :cond_1
    if-eqz v18, :cond_0

    .line 1114
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    .line 1115
    .local v15, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v3, v3

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v3, v5

    int-to-float v5, v9

    div-float/2addr v3, v5

    const/4 v5, 0x0

    aget-object v5, v18, v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float v4, v3, v5

    .line 1117
    .local v4, "barwidth":F
    new-instance v2, Lcom/syu/bt/ctrl/JSpecView;

    const/4 v3, 0x0

    aget-object v3, v18, v3

    iget v5, v3, Landroid/graphics/Rect;->top:I

    .line 1118
    const/4 v3, 0x0

    aget-object v3, v18, v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    const/4 v6, 0x0

    aget-object v6, v18, v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int v6, v3, v6

    const/4 v3, 0x0

    aget-object v3, v18, v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    const/4 v7, 0x0

    aget-object v7, v18, v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int v7, v3, v7

    move-object/from16 v3, p1

    move-object/from16 v8, p2

    .line 1117
    invoke-direct/range {v2 .. v10}, Lcom/syu/bt/ctrl/JSpecView;-><init>(Lcom/lsec/core/frame/ctrl/JPage;FIIILcom/lsec/core/frame/app/MyUiItem;II)V

    .line 1121
    .local v2, "view":Lcom/syu/bt/ctrl/JSpecView;
    move-object v12, v2

    .line 1124
    goto :goto_0

    .line 1127
    .end local v2    # "view":Lcom/syu/bt/ctrl/JSpecView;
    .end local v4    # "barwidth":F
    .end local v9    # "iCnt":I
    .end local v10    # "iStyle":I
    .end local v15    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v16    # "para":[I
    .end local v18    # "rec":[Landroid/graphics/Rect;
    :pswitch_3
    new-instance v2, Lcom/syu/bt/ctrl/JSwitchButon2;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v1}, Lcom/syu/bt/ctrl/JSwitchButon2;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUiItem;)V

    .line 1128
    .local v2, "view":Lcom/syu/bt/ctrl/JSwitchButon2;
    move-object v12, v2

    .line 1130
    goto :goto_0

    .line 1132
    .end local v2    # "view":Lcom/syu/bt/ctrl/JSwitchButon2;
    :pswitch_4
    new-instance v2, Lcom/syu/bt/ctrl/SlideBarView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/syu/bt/ctrl/SlideBarView;-><init>(Lcom/lsec/core/frame/ctrl/JPage;)V

    .line 1133
    .local v2, "view":Lcom/syu/bt/ctrl/SlideBarView;
    move-object v12, v2

    .line 1135
    goto :goto_0

    .line 1137
    .end local v2    # "view":Lcom/syu/bt/ctrl/SlideBarView;
    :pswitch_5
    new-instance v2, Lcom/syu/bt/ctrl/SwipeCallingView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/syu/bt/ctrl/SwipeCallingView;-><init>(Lcom/lsec/core/frame/ctrl/JPage;)V

    .line 1138
    .local v2, "view":Lcom/syu/bt/ctrl/SwipeCallingView;
    move-object v12, v2

    .line 1140
    goto/16 :goto_0

    .line 1142
    .end local v2    # "view":Lcom/syu/bt/ctrl/SwipeCallingView;
    :pswitch_6
    const/4 v11, 0x0

    .line 1143
    .local v11, "bk":Landroid/graphics/drawable/Drawable;
    const/16 v17, 0x0

    .line 1145
    .local v17, "point":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawableExtra()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1146
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    .line 1147
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawableExtra()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/syu/bt/Act_Bt;->mDrawables:Ljava/util/HashMap;

    const/4 v7, 0x0

    .line 1146
    invoke-virtual {v3, v5, v6, v7}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 1149
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawableExtra()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_2

    .line 1152
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    .line 1153
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawableExtra()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/syu/bt/Act_Bt;->mDrawables:Ljava/util/HashMap;

    const/4 v7, 0x0

    .line 1152
    invoke-virtual {v3, v5, v6, v7}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 1157
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v16

    .line 1158
    .local v16, "para":[Ljava/lang/String;
    if-eqz v16, :cond_0

    .line 1159
    new-instance v2, Lcom/syu/bt/ctrl/CircleMenuLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v3, v3, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v2, v3, v11, v0, v1}, Lcom/syu/bt/ctrl/CircleMenuLayout;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;[Ljava/lang/String;)V

    .line 1161
    .local v2, "view":Lcom/syu/bt/ctrl/CircleMenuLayout;
    move-object v12, v2

    .line 1165
    goto/16 :goto_0

    .line 1167
    .end local v2    # "view":Lcom/syu/bt/ctrl/CircleMenuLayout;
    .end local v11    # "bk":Landroid/graphics/drawable/Drawable;
    .end local v16    # "para":[Ljava/lang/String;
    .end local v17    # "point":Landroid/graphics/drawable/Drawable;
    :pswitch_7
    const/4 v3, 0x2

    new-array v13, v3, [I

    fill-array-data v13, :array_0

    .line 1168
    .local v13, "colorFocus":[I
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getColor()[I

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1169
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getColor()[I

    move-result-object v13

    .line 1171
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getText()Ljava/lang/String;

    move-result-object v19

    .line 1172
    .local v19, "str":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v14

    .line 1174
    .local v14, "h":I
    new-instance v2, Lcom/syu/bt/ctrl/BorderTextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v3, v3, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-direct {v2, v3, v13, v0, v14}, Lcom/syu/bt/ctrl/BorderTextView;-><init>(Landroid/content/Context;[ILjava/lang/String;I)V

    .line 1176
    .local v2, "view":Lcom/syu/bt/ctrl/BorderTextView;
    move-object v12, v2

    goto/16 :goto_0

    .line 1089
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 1167
    :array_0
    .array-data 4
        0xffffff
        0xffffff
    .end array-data
.end method

.method public disPostLoading(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 1868
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->mRunnableDisLoading:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 1869
    return-void
.end method

.method public dismissProgressIpPhoneDlg()V
    .locals 1

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->mProgressIpPhoneDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->mProgressIpPhoneDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1604
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->mProgressIpPhoneDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1605
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syu/bt/Act_Bt;->mProgressIpPhoneDlg:Landroid/app/ProgressDialog;

    .line 1607
    :cond_0
    return-void
.end method

.method public dismissRecordDlg()V
    .locals 5

    .prologue
    .line 1679
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x272a

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getPopDlg(ILjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    .line 1680
    .local v0, "popDlg":Landroid/app/Dialog;
    const-string v1, "ai11"

    const-string v2, "  *** 00 Act_Bt dismissRecordDlg() popDlg  "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    if-eqz v0, :cond_0

    .line 1682
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1683
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1685
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1056
    const-string v0, "key"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " BT dispatchKeyEvent keyCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1066
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1059
    :pswitch_0
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isAppIdBtAv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1060
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->avPause()V

    .line 1061
    const/4 v0, 0x1

    goto :goto_0

    .line 1057
    :pswitch_data_0
    .packed-switch 0x7f
        :pswitch_0
    .end packed-switch
.end method

.method public doActionWhenGoPage(I)V
    .locals 4
    .param p1, "idPageTo"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v1, 0x271a

    const/4 v3, 0x1

    .line 888
    invoke-static {p1}, Lcom/syu/bt/App_Bt;->includePage(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 893
    if-ne p1, v1, :cond_0

    sget-boolean v0, Lcom/syu/bt/App_Bt;->bIsLauncher_2Ico:Z

    if-nez v0, :cond_0

    .line 894
    sget v0, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    if-eq v0, v1, :cond_0

    .line 895
    sget v0, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    sput v0, Lcom/syu/bt/App_Bt;->idPageBeforeAv:I

    .line 898
    :cond_0
    const/16 v0, 0x2715

    if-eq p1, v0, :cond_1

    .line 899
    sget v0, Lcom/syu/bt/App_Bt;->mSelectContact:I

    if-lez v0, :cond_1

    .line 900
    const/4 v0, -0x1

    sput v0, Lcom/syu/bt/App_Bt;->mSelectContact:I

    .line 903
    :cond_1
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/bt/App_Bt;->requestAppIdRight()V

    .line 904
    sget v0, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    invoke-virtual {p0, v0, v3}, Lcom/syu/bt/Act_Bt;->updateMainSelected(IZ)V

    .line 905
    const/16 v0, 0x2712

    sget v1, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/syu/bt/Act_Bt;->updateMenuSelected(IIIZ)V

    .line 907
    sget-boolean v0, Lcom/syu/bt/App_Bt;->hideBtnWhenDisconnect:Z

    if-eqz v0, :cond_3

    .line 908
    sget v0, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/syu/bt/Act_Bt;->setMenuBtnEnable(II)V

    .line 914
    :goto_0
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isDZSJMIB4Config()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 915
    sget v0, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    const/16 v1, 0x2713

    if-eq v0, v1, :cond_4

    .line 916
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyActivity;->hideSystemUi()V

    .line 924
    :cond_2
    :goto_1
    return-void

    .line 910
    :cond_3
    sget v0, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    sget v1, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/syu/bt/Act_Bt;->updateMenuSelected(IIIZ)V

    goto :goto_0

    .line 918
    :cond_4
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyActivity;->showSystemUi()V

    goto :goto_1
.end method

.method public drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    .line 475
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 476
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 475
    :goto_0
    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 477
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 478
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p1, v6, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 479
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 480
    return-object v0

    .line 476
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public getBtnMenuFocus(Lcom/lsec/core/frame/ctrl/JPage;I)Lcom/lsec/core/frame/ctrl/JButton;
    .locals 4
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "idPageSel"    # I

    .prologue
    .line 637
    const/4 v0, 0x0

    .line 639
    .local v0, "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    const-string v1, "gdy9"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 11 Act_Bt mRunnableGoPage idPageSel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    if-eqz p1, :cond_0

    .line 641
    packed-switch p2, :pswitch_data_0

    .line 668
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 643
    :pswitch_1
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isDZSJMIB4Config()Z

    move-result v1

    if-nez v1, :cond_0

    .line 644
    const/16 v1, 0x2744

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 646
    .restart local v0    # "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    goto :goto_0

    .line 648
    :pswitch_2
    const/16 v1, 0x274d

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 649
    .restart local v0    # "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    goto :goto_0

    .line 651
    :pswitch_3
    const/16 v1, 0x2745

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 652
    .restart local v0    # "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    goto :goto_0

    .line 654
    :pswitch_4
    const/16 v1, 0x2746

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 655
    .restart local v0    # "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    goto :goto_0

    .line 657
    :pswitch_5
    const/16 v1, 0x274c

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 658
    .restart local v0    # "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    goto :goto_0

    .line 660
    :pswitch_6
    const/16 v1, 0x274e

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 661
    .restart local v0    # "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    goto :goto_0

    .line 663
    :pswitch_7
    const/16 v1, 0x274f

    invoke-virtual {p1, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .restart local v0    # "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    goto :goto_0

    .line 641
    :pswitch_data_0
    .packed-switch 0x2713
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public getFixPage(I)I
    .locals 6
    .param p1, "idMenu"    # I

    .prologue
    .line 1274
    const/4 v0, -0x1

    .line 1275
    .local v0, "idPageTo":I
    packed-switch p1, :pswitch_data_0

    .line 1314
    :goto_0
    :pswitch_0
    return v0

    .line 1277
    :pswitch_1
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isDZSJMIB4Config()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1278
    const/16 v0, 0x2718

    goto :goto_0

    .line 1280
    :cond_0
    const/16 v0, 0x2713

    .line 1282
    goto :goto_0

    .line 1284
    :pswitch_2
    const/16 v0, 0x2715

    .line 1285
    goto :goto_0

    .line 1287
    :pswitch_3
    const/16 v0, 0x2718

    .line 1288
    goto :goto_0

    .line 1290
    :pswitch_4
    const/16 v0, 0x271a

    .line 1291
    goto :goto_0

    .line 1293
    :pswitch_5
    const/16 v0, 0x271b

    .line 1294
    goto :goto_0

    .line 1296
    :pswitch_6
    const/16 v0, 0x271c

    .line 1297
    goto :goto_0

    .line 1299
    :pswitch_7
    const/16 v0, 0x2720

    .line 1300
    goto :goto_0

    .line 1302
    :pswitch_8
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1303
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1304
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1305
    iget-object v2, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v2, v1}, Lcom/lsec/core/frame/app/MyActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1309
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_9
    const-string v2, "gdy"

    const-string v3, " *** getFixPage Menu_Back "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    iget-object v2, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/app/MyActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0

    .line 1275
    :pswitch_data_0
    .packed-switch 0x2744
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public getFixPageMain(I)I
    .locals 1
    .param p1, "idMenu"    # I

    .prologue
    .line 1260
    const/4 v0, -0x1

    .line 1261
    .local v0, "idPageTo":I
    packed-switch p1, :pswitch_data_0

    .line 1270
    :goto_0
    return v0

    .line 1263
    :pswitch_0
    sget v0, Lcom/syu/bt/App_Bt;->idPageBeforeAv:I

    .line 1264
    goto :goto_0

    .line 1266
    :pswitch_1
    const/16 v0, 0x271a

    goto :goto_0

    .line 1261
    nop

    :pswitch_data_0
    .packed-switch 0x273b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getFocus(Lcom/lsec/core/frame/ctrl/JPage;)Landroid/view/View;
    .locals 2
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    .line 2300
    const/4 v0, 0x0

    .line 2301
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-boolean v1, v1, Lcom/lsec/core/frame/app/MyActivity;->bTop:Z

    if-eqz v1, :cond_0

    .line 2302
    if-eqz p1, :cond_0

    .line 2303
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JPage;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2304
    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    .line 2309
    :cond_0
    return-object v0

    .line 2305
    :cond_1
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "v":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .restart local v0    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method public getMenuViewFocus(Lcom/lsec/core/frame/ctrl/JPage;I)V
    .locals 9
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "idPageSel"    # I

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 672
    if-eqz p1, :cond_6

    .line 674
    const/16 v6, 0x2956

    invoke-virtual {p1, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    .line 673
    check-cast v2, Lcom/lsec/core/frame/ctrl/JView;

    .line 676
    .local v2, "viewDial":Lcom/lsec/core/frame/ctrl/JView;
    const/16 v6, 0x2957

    invoke-virtual {p1, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    .line 675
    check-cast v3, Lcom/lsec/core/frame/ctrl/JView;

    .line 678
    .local v3, "viewHistory":Lcom/lsec/core/frame/ctrl/JView;
    const/16 v6, 0x2958

    invoke-virtual {p1, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    .line 677
    check-cast v1, Lcom/lsec/core/frame/ctrl/JView;

    .line 680
    .local v1, "viewContact":Lcom/lsec/core/frame/ctrl/JView;
    const/16 v6, 0x2959

    invoke-virtual {p1, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .line 679
    check-cast v0, Lcom/lsec/core/frame/ctrl/JView;

    .line 682
    .local v0, "viewBtav":Lcom/lsec/core/frame/ctrl/JView;
    const/16 v6, 0x295a

    invoke-virtual {p1, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    .line 681
    check-cast v4, Lcom/lsec/core/frame/ctrl/JView;

    .line 683
    .local v4, "viewPair":Lcom/lsec/core/frame/ctrl/JView;
    const/16 v6, 0x295b

    invoke-virtual {p1, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JView;

    .line 685
    .local v5, "viewSet":Lcom/lsec/core/frame/ctrl/JView;
    if-eqz v2, :cond_0

    .line 686
    invoke-virtual {v2, v8}, Lcom/lsec/core/frame/ctrl/JView;->setVisibility(I)V

    .line 687
    :cond_0
    if-eqz v3, :cond_1

    .line 688
    invoke-virtual {v3, v8}, Lcom/lsec/core/frame/ctrl/JView;->setVisibility(I)V

    .line 689
    :cond_1
    if-eqz v1, :cond_2

    .line 690
    invoke-virtual {v1, v8}, Lcom/lsec/core/frame/ctrl/JView;->setVisibility(I)V

    .line 691
    :cond_2
    if-eqz v0, :cond_3

    .line 692
    invoke-virtual {v0, v8}, Lcom/lsec/core/frame/ctrl/JView;->setVisibility(I)V

    .line 693
    :cond_3
    if-eqz v4, :cond_4

    .line 694
    invoke-virtual {v4, v8}, Lcom/lsec/core/frame/ctrl/JView;->setVisibility(I)V

    .line 695
    :cond_4
    if-eqz v5, :cond_5

    .line 696
    invoke-virtual {v5, v8}, Lcom/lsec/core/frame/ctrl/JView;->setVisibility(I)V

    .line 698
    :cond_5
    packed-switch p2, :pswitch_data_0

    .line 726
    .end local v0    # "viewBtav":Lcom/lsec/core/frame/ctrl/JView;
    .end local v1    # "viewContact":Lcom/lsec/core/frame/ctrl/JView;
    .end local v2    # "viewDial":Lcom/lsec/core/frame/ctrl/JView;
    .end local v3    # "viewHistory":Lcom/lsec/core/frame/ctrl/JView;
    .end local v4    # "viewPair":Lcom/lsec/core/frame/ctrl/JView;
    .end local v5    # "viewSet":Lcom/lsec/core/frame/ctrl/JView;
    :cond_6
    :goto_0
    :pswitch_0
    return-void

    .line 700
    .restart local v0    # "viewBtav":Lcom/lsec/core/frame/ctrl/JView;
    .restart local v1    # "viewContact":Lcom/lsec/core/frame/ctrl/JView;
    .restart local v2    # "viewDial":Lcom/lsec/core/frame/ctrl/JView;
    .restart local v3    # "viewHistory":Lcom/lsec/core/frame/ctrl/JView;
    .restart local v4    # "viewPair":Lcom/lsec/core/frame/ctrl/JView;
    .restart local v5    # "viewSet":Lcom/lsec/core/frame/ctrl/JView;
    :pswitch_1
    if-eqz v2, :cond_6

    .line 701
    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/ctrl/JView;->setVisibility(I)V

    goto :goto_0

    .line 704
    :pswitch_2
    if-eqz v5, :cond_6

    .line 705
    invoke-virtual {v5, v7}, Lcom/lsec/core/frame/ctrl/JView;->setVisibility(I)V

    goto :goto_0

    .line 708
    :pswitch_3
    if-eqz v1, :cond_6

    .line 709
    invoke-virtual {v1, v7}, Lcom/lsec/core/frame/ctrl/JView;->setVisibility(I)V

    goto :goto_0

    .line 712
    :pswitch_4
    if-eqz v3, :cond_6

    .line 713
    invoke-virtual {v3, v7}, Lcom/lsec/core/frame/ctrl/JView;->setVisibility(I)V

    goto :goto_0

    .line 716
    :pswitch_5
    if-eqz v0, :cond_6

    .line 717
    invoke-virtual {v0, v7}, Lcom/lsec/core/frame/ctrl/JView;->setVisibility(I)V

    goto :goto_0

    .line 720
    :pswitch_6
    if-eqz v4, :cond_6

    .line 721
    invoke-virtual {v4, v7}, Lcom/lsec/core/frame/ctrl/JView;->setVisibility(I)V

    goto :goto_0

    .line 698
    nop

    :pswitch_data_0
    .packed-switch 0x2713
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method

.method public getMyApp()Lcom/lsec/core/frame/app/MyApp;
    .locals 1

    .prologue
    .line 2319
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    return-object v0
.end method

.method public getPageAv_HalfScreen()Lcom/syu/bt/page/Page_Av_HalfScreen;
    .locals 3

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x2733

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/app/MyActivity;->getPageNotify(Lcom/lsec/core/frame/app/MyUi;I)Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/page/Page_Av_HalfScreen;

    return-object v0
.end method

.method public getPageCallin()Lcom/syu/bt/page/Page_Callin;
    .locals 3

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x2730

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/app/MyActivity;->getPageNotify(Lcom/lsec/core/frame/app/MyUi;I)Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/page/Page_Callin;

    return-object v0
.end method

.method public getPageCallin_HalfScreen()Lcom/syu/bt/page/Page_Callin_HalfScreen;
    .locals 3

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x2731

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/app/MyActivity;->getPageNotify(Lcom/lsec/core/frame/app/MyUi;I)Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/page/Page_Callin_HalfScreen;

    return-object v0
.end method

.method public getPageCallin_HideKey()Lcom/syu/bt/page/Page_Callin_HideKey;
    .locals 3

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x2737

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/app/MyActivity;->getPageNotify(Lcom/lsec/core/frame/app/MyUi;I)Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/page/Page_Callin_HideKey;

    return-object v0
.end method

.method public getPageCallin_ShowCall()Lcom/syu/bt/page/Page_Callin_ShowCall;
    .locals 3

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x2735

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/app/MyActivity;->getPageNotify(Lcom/lsec/core/frame/app/MyUi;I)Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/page/Page_Callin_ShowCall;

    return-object v0
.end method

.method public getPageCallin_ShowCall_HalfScreen()Lcom/syu/bt/page/Page_Callin_ShowCall_HalfScreen;
    .locals 3

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    .line 1207
    const/16 v2, 0x2739

    .line 1206
    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/app/MyActivity;->getPageNotify(Lcom/lsec/core/frame/app/MyUi;I)Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/page/Page_Callin_ShowCall_HalfScreen;

    return-object v0
.end method

.method public getPageCallin_ShowDial()Lcom/syu/bt/page/Page_Callin_ShowDial;
    .locals 3

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x2734

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/app/MyActivity;->getPageNotify(Lcom/lsec/core/frame/app/MyUi;I)Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/page/Page_Callin_ShowDial;

    return-object v0
.end method

.method public getPageCallin_ShowDial_HalfScreen()Lcom/syu/bt/page/Page_Callin_ShowDial_HalfScreen;
    .locals 3

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    .line 1202
    const/16 v2, 0x2738

    .line 1201
    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/app/MyActivity;->getPageNotify(Lcom/lsec/core/frame/app/MyUi;I)Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/page/Page_Callin_ShowDial_HalfScreen;

    return-object v0
.end method

.method public getPageCallin_ShowKey()Lcom/syu/bt/page/Page_Callin_ShowKey;
    .locals 3

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x2736

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/app/MyActivity;->getPageNotify(Lcom/lsec/core/frame/app/MyUi;I)Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/page/Page_Callin_ShowKey;

    return-object v0
.end method

.method public getPageCallin_ShowKey_HalfScreen()Lcom/syu/bt/page/Page_Callin_ShowKey_HalfScreen;
    .locals 3

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    .line 1212
    const/16 v2, 0x273a

    .line 1211
    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/app/MyActivity;->getPageNotify(Lcom/lsec/core/frame/app/MyUi;I)Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/page/Page_Callin_ShowKey_HalfScreen;

    return-object v0
.end method

.method public getPageContact()Lcom/syu/bt/page/Page_Contact;
    .locals 3

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x2715

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/app/MyActivity;->getPageNotify(Lcom/lsec/core/frame/app/MyUi;I)Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/page/Page_Contact;

    return-object v0
.end method

.method public getPageDial()Lcom/syu/bt/page/Page_Dial;
    .locals 3

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x2713

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/app/MyActivity;->getPageNotify(Lcom/lsec/core/frame/app/MyUi;I)Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/page/Page_Dial;

    return-object v0
.end method

.method public getPageDial_HalfScreen()Lcom/syu/bt/page/Page_Dial_HalfScreen;
    .locals 3

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x2732

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/app/MyActivity;->getPageNotify(Lcom/lsec/core/frame/app/MyUi;I)Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/page/Page_Dial_HalfScreen;

    return-object v0
.end method

.method public getPageFavorite()Lcom/syu/bt/page/Page_Favorite;
    .locals 3

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x2720

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/app/MyActivity;->getPageNotify(Lcom/lsec/core/frame/app/MyUi;I)Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/page/Page_Favorite;

    return-object v0
.end method

.method public getPageHistory()Lcom/syu/bt/page/Page_History;
    .locals 3

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x2718

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/app/MyActivity;->getPageNotify(Lcom/lsec/core/frame/app/MyUi;I)Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/page/Page_History;

    return-object v0
.end method

.method public getPageMenu()Lcom/syu/bt/page/Page_Menu;
    .locals 3

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x2712

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/app/MyActivity;->getPageNotify(Lcom/lsec/core/frame/app/MyUi;I)Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/page/Page_Menu;

    return-object v0
.end method

.method public getPagePair()Lcom/syu/bt/page/Page_Pair;
    .locals 3

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x271c

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/app/MyActivity;->getPageNotify(Lcom/lsec/core/frame/app/MyUi;I)Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/page/Page_Pair;

    return-object v0
.end method

.method public getPageSet()Lcom/syu/bt/page/Page_Set;
    .locals 3

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x271b

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/app/MyActivity;->getPageNotify(Lcom/lsec/core/frame/app/MyUi;I)Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/page/Page_Set;

    return-object v0
.end method

.method public getRightPage(I)I
    .locals 1
    .param p1, "idPageTo"    # I

    .prologue
    .line 834
    const/16 v0, 0x2713

    if-ne p1, v0, :cond_1

    .line 835
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 836
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    sget-boolean v0, Lcom/syu/bt/App_Bt;->bEnableHalfScreen:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/syu/bt/App_Bt;->bCallinPageFlag:Z

    if-eqz v0, :cond_1

    .line 837
    :cond_0
    const/16 p1, 0x2730

    .line 841
    :cond_1
    const/16 v0, 0x2730

    if-ne p1, v0, :cond_2

    .line 842
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v0

    if-nez v0, :cond_2

    .line 843
    const/16 p1, 0x2713

    .line 846
    :cond_2
    return p1
.end method

.method public handleIntent(Landroid/content/Intent;Lcom/lsec/core/frame/app/MyActivity;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "act"    # Lcom/lsec/core/frame/app/MyActivity;

    .prologue
    const/16 v6, 0x2718

    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "bNeedHandle":Z
    if-eqz p1, :cond_2

    .line 182
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "strAction":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 184
    const-string v3, "com.syu.bt"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bShowFloatBtn:Z

    if-eqz v3, :cond_3

    const-string v3, "com.syu.bt"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 186
    const-string v3, "gdy666"

    const-string v4, " 004 Act_bt handleIntent "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/syu/bt/App_Bt;->popBt(ZZ)V

    .line 188
    const-string v3, "handleIntent"

    invoke-static {v3}, Lcom/syu/bt/util/BTUtil;->writeLogToFile(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyActivity;->finish()V

    .line 202
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 203
    iget-object v3, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    if-nez v3, :cond_1

    .line 204
    invoke-virtual {p0, p2}, Lcom/syu/bt/Act_Bt;->onCreate(Lcom/lsec/core/frame/app/MyActivity;)V

    .line 206
    :cond_1
    const-string v3, "btav"

    const-string v4, "launcher"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 207
    sget-object v3, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    const-string v4, "com.syu.btav"

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/app/MyApplication;->startAct(Ljava/lang/String;)V

    .line 208
    iget-object v3, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v3}, Lcom/lsec/core/frame/app/MyActivity;->finish()V

    .line 226
    .end local v1    # "strAction":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 190
    .restart local v1    # "strAction":Ljava/lang/String;
    :cond_3
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bShowFloatBtn:Z

    if-eqz v3, :cond_5

    const-string v3, "com.syu.bt.showFloatBtn"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 191
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isDisConnect()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 192
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    const-string v4, "bt_disconnect"

    invoke-virtual {v3, v4}, Lcom/syu/bt/App_Bt;->sendCmd2AmapAssist(Ljava/lang/String;)V

    .line 196
    :goto_2
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    const-string v4, "ShowFloatBt"

    invoke-virtual {v3, v4}, Lcom/syu/bt/App_Bt;->sendCmd2AmapAssist(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyActivity;->finish()V

    goto :goto_0

    .line 194
    :cond_4
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    const-string v4, "bt_connect"

    invoke-virtual {v3, v4}, Lcom/syu/bt/App_Bt;->sendCmd2AmapAssist(Ljava/lang/String;)V

    goto :goto_2

    .line 199
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    .line 212
    :cond_6
    const-string v3, "com.syu.bt"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "strExtra":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 214
    const-string v3, "contact"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 215
    iget-object v3, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    const/16 v4, 0x2715

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    goto :goto_1

    .line 216
    :cond_7
    const-string v3, "history"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 217
    iget-object v3, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    goto :goto_1

    .line 218
    :cond_8
    const-string v3, "historyAccept"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 219
    iget-object v3, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    goto :goto_1

    .line 220
    :cond_9
    const-string v3, "historyDismiss"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 221
    iget-object v3, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    goto :goto_1
.end method

.method public hideSystemUI()V
    .locals 2

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    if-eqz v0, :cond_0

    .line 1361
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1362
    :cond_0
    return-void
.end method

.method public includePage(I)Z
    .locals 1
    .param p1, "idPage"    # I

    .prologue
    .line 2324
    invoke-static {p1}, Lcom/syu/bt/App_Bt;->includePage(I)Z

    move-result v0

    return v0
.end method

.method public invilatePlayList()V
    .locals 1

    .prologue
    .line 2501
    invoke-virtual {p0}, Lcom/syu/bt/Act_Bt;->getPageContact()Lcom/syu/bt/page/Page_Contact;

    move-result-object v0

    .line 2502
    .local v0, "page_Contact":Lcom/syu/bt/page/Page_Contact;
    if-eqz v0, :cond_0

    .line 2503
    invoke-virtual {v0}, Lcom/syu/bt/page/Page_Contact;->invilatePlayList()V

    .line 2505
    :cond_0
    return-void
.end method

.method public isFocus(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2296
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusOnGridView()Z
    .locals 1

    .prologue
    .line 2193
    iget-boolean v0, p0, Lcom/syu/bt/Act_Bt;->isGrid:Z

    return v0
.end method

.method public isHalf()Z
    .locals 1

    .prologue
    .line 2314
    sget-object v0, Lcom/lsec/core/frame/app/MyUi;->mStrHeadXml:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public moveTaskToBack()V
    .locals 2

    .prologue
    .line 1819
    const-string v0, "pv"

    const-string v1, " ** moveTaskToBack "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/MyActivity;->moveTaskToBack(Z)Z

    .line 1821
    return-void
.end method

.method public onCreate(Lcom/lsec/core/frame/app/MyActivity;)V
    .locals 3
    .param p1, "act"    # Lcom/lsec/core/frame/app/MyActivity;

    .prologue
    .line 154
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->myApplication:Lcom/lsec/core/frame/app/MyApplication;

    if-nez v0, :cond_0

    .line 155
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    sget-object v1, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    invoke-virtual {v0, v1}, Lcom/syu/bt/App_Bt;->onCreate(Lcom/lsec/core/frame/app/MyApplication;)V

    .line 157
    :cond_0
    iput-object p1, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    .line 158
    new-instance v0, Lcom/syu/bt/util/UIUtil;

    invoke-direct {v0, p1}, Lcom/syu/bt/util/UIUtil;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/syu/bt/Act_Bt;->uiUtil:Lcom/syu/bt/util/UIUtil;

    .line 159
    new-instance v0, Lcom/lsec/core/frame/app/MyUi;

    const-class v1, Lcom/syu/bt/data/FinalBtType;

    const-class v2, Lcom/syu/bt/data/FinalBtCtrl;

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/lsec/core/frame/app/MyUi;-><init>(Landroid/content/Context;Lcom/lsec/core/frame/app/InterfaceUi;Ljava/lang/Class;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    .line 160
    sget-object v0, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v0, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v1, "YL_3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-static {}, Lcom/syu/bt/Act_Bt;->checkCustomerId()V

    .line 164
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 232
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->releaseTone()V

    .line 233
    sget-object v0, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 234
    return-void
.end method

.method public onKeyDown()V
    .locals 3

    .prologue
    .line 2071
    const/4 v0, 0x0

    .line 2072
    .local v0, "bHandled":Z
    iget-object v2, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v2, v2, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v2, :cond_0

    .line 2073
    iget-object v2, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v2, v2, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v1

    .line 2074
    .local v1, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    instance-of v2, v1, Lcom/syu/bt/page/Page_Contact;

    if-eqz v2, :cond_0

    .line 2075
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isZhangConfig()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2076
    check-cast v1, Lcom/syu/bt/page/Page_Contact;

    .end local v1    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/syu/bt/page/Page_Contact;->scrollToNext(Z)Z

    move-result v0

    .line 2080
    :cond_0
    if-nez v0, :cond_1

    .line 2081
    const/16 v2, 0x82

    invoke-virtual {p0, v2}, Lcom/syu/bt/Act_Bt;->onKeyHandle(I)V

    .line 2082
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v8, 0x271a

    const/4 v4, 0x0

    const/16 v7, 0x2713

    const/4 v3, 0x1

    .line 927
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/syu/bt/util/BTUtil;->IsConnectCarplay()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1009
    :cond_0
    :goto_0
    return v3

    .line 930
    :cond_1
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v5}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v5

    if-nez v5, :cond_0

    .line 933
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    sget-boolean v5, Lcom/syu/bt/App_Bt;->bEnableHalfScreen:Z

    if-eqz v5, :cond_2

    move v3, v4

    .line 934
    goto :goto_0

    .line 936
    :cond_2
    packed-switch p1, :pswitch_data_0

    move v3, v4

    .line 1009
    goto :goto_0

    .line 938
    :pswitch_0
    const-string v5, "key"

    const-string v6, " Act_Bt  KEYCODE_BACK "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iget-object v5, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v6, 0x2712

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    .line 941
    .local v2, "pageMenu":Lcom/lsec/core/frame/ctrl/JPage;
    sput-boolean v4, Lcom/syu/bt/App_Bt;->bJumpFavorite:Z

    .line 942
    const/4 v0, 0x0

    .line 943
    .local v0, "bJumpDial":Z
    const/4 v1, -0x1

    .line 944
    .local v1, "idCurrent":I
    iget-object v4, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v4, v4, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v4, :cond_3

    .line 945
    iget-object v4, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v4, v4, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v4}, Lcom/lsec/core/frame/ctrl/JPage;->getId()I

    move-result v1

    .line 948
    :cond_3
    sget v4, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v5, 0x15

    if-ne v4, v5, :cond_5

    .line 949
    if-nez v2, :cond_4

    if-eq v1, v7, :cond_4

    .line 950
    const/4 v0, 0x1

    .line 991
    :cond_4
    :goto_1
    if-eqz v0, :cond_b

    .line 992
    iget-object v4, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v4, v7}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    goto :goto_0

    .line 951
    :cond_5
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isDZSJMIB4Config()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 952
    if-ne v1, v8, :cond_6

    sget-boolean v4, Lcom/syu/bt/App_Bt;->bIsLauncher_2Ico:Z

    if-nez v4, :cond_6

    .line 953
    sget v4, Lcom/syu/bt/App_Bt;->idPageBeforeAv:I

    sput v4, Lcom/syu/bt/App_Bt;->sPage:I

    goto :goto_1

    .line 954
    :cond_6
    if-eq v1, v7, :cond_4

    .line 955
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bFirstPairPage:Z

    if-nez v4, :cond_4

    sget-boolean v4, Lcom/syu/bt/App_Bt;->bFirstBtAvPage:Z

    if-nez v4, :cond_4

    .line 956
    const/4 v0, 0x1

    .line 958
    goto :goto_1

    .line 959
    :cond_7
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isTZYConfig()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 960
    if-ne v1, v7, :cond_8

    .line 961
    invoke-virtual {p0}, Lcom/syu/bt/Act_Bt;->getPageDial()Lcom/syu/bt/page/Page_Dial;

    move-result-object v4

    invoke-virtual {v4}, Lcom/syu/bt/page/Page_Dial;->getSaveViewState()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 962
    invoke-virtual {p0}, Lcom/syu/bt/Act_Bt;->getPageDial()Lcom/syu/bt/page/Page_Dial;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/syu/bt/page/Page_Dial;->disableSaveView(Z)V

    goto/16 :goto_0

    .line 968
    :cond_8
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bIsLauncher_2Ico:Z

    if-eqz v4, :cond_9

    .line 969
    if-eq v1, v7, :cond_4

    if-eq v1, v8, :cond_4

    .line 970
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bFirstPairPage:Z

    if-nez v4, :cond_4

    sget-boolean v4, Lcom/syu/bt/App_Bt;->bFirstBtAvPage:Z

    if-nez v4, :cond_4

    .line 971
    if-nez v2, :cond_4

    .line 972
    const/4 v0, 0x1

    .line 976
    goto :goto_1

    .line 977
    :cond_9
    if-ne v1, v8, :cond_a

    .line 978
    sget v4, Lcom/syu/bt/App_Bt;->idPageBeforeAv:I

    sput v4, Lcom/syu/bt/App_Bt;->sPage:I

    goto :goto_1

    .line 980
    :cond_a
    if-eq v1, v7, :cond_4

    .line 981
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bFirstPairPage:Z

    if-nez v4, :cond_4

    sget-boolean v4, Lcom/syu/bt/App_Bt;->bFirstBtAvPage:Z

    if-nez v4, :cond_4

    .line 982
    if-nez v2, :cond_4

    .line 983
    const/4 v0, 0x1

    goto :goto_1

    .line 994
    :cond_b
    sget v4, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v5, 0x8b

    if-eq v4, v5, :cond_c

    .line 995
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bChangeAppIdWhenTalking:Z

    if-eqz v4, :cond_d

    .line 996
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v4, v1}, Lcom/syu/app/ipc/Bt_IpcObj;->requestAppIdNull(I)V

    .line 1000
    :cond_c
    :goto_2
    const-string v4, "pv"

    const-string v5, " ** 11 moveTaskToBack "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget-object v4, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v4, v3}, Lcom/lsec/core/frame/app/MyActivity;->moveTaskToBack(Z)Z

    goto/16 :goto_0

    .line 998
    :cond_d
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v4}, Lcom/syu/app/ipc/Bt_IpcObj;->requestAppIdNull()V

    goto :goto_2

    .line 936
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyHandle(I)V
    .locals 16
    .param p1, "direction"    # I

    .prologue
    .line 2087
    const-string v12, "key"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, " 00 onKeyHandle direction = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-boolean v12, v12, Lcom/lsec/core/frame/app/MyActivity;->bTop:Z

    if-eqz v12, :cond_5

    .line 2089
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v12, v12, Lcom/lsec/core/frame/app/MyActivity;->mPage:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v12, :cond_5

    .line 2090
    const-string v12, "key"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, " 01 onKeyHandle mStrCustomer = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " isGrid = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/syu/bt/Act_Bt;->isGrid:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v12, v12, Lcom/lsec/core/frame/app/MyActivity;->mPage:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v12}, Lcom/lsec/core/frame/ctrl/JPage;->getFocusedChild()Landroid/view/View;

    move-result-object v10

    .line 2092
    .local v10, "v":Landroid/view/View;
    :goto_0
    instance-of v12, v10, Landroid/view/ViewGroup;

    if-nez v12, :cond_6

    .line 2095
    const/4 v11, 0x0

    .line 2096
    .local v11, "vFocus":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v12, v12, Lcom/lsec/core/frame/app/MyUi;->mPages:Landroid/util/SparseArray;

    const/16 v13, 0x2712

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JPage;

    .line 2097
    .local v5, "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v10, :cond_9

    .line 2099
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    move/from16 v0, p1

    invoke-virtual {v12, v10, v0, v13, v5}, Lcom/syu/bt/util/BTUtil;->getZHTDScroll(Landroid/view/View;ILcom/lsec/core/frame/app/MyActivity;Lcom/lsec/core/frame/ctrl/JPage;)Landroid/view/View;

    move-result-object v11

    .line 2105
    if-eqz v11, :cond_7

    .line 2106
    invoke-virtual {v11}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 2107
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v14, 0x2713

    invoke-virtual {v12, v13, v14}, Lcom/lsec/core/frame/app/MyActivity;->getPageNotify(Lcom/lsec/core/frame/app/MyUi;I)Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v7

    check-cast v7, Lcom/syu/bt/page/Page_Dial;

    .line 2109
    .local v7, "pageDial":Lcom/syu/bt/page/Page_Dial;
    if-eqz v7, :cond_0

    .line 2110
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v12

    invoke-virtual {v7, v12}, Lcom/syu/bt/page/Page_Dial;->resetMenuLayoutAngle(I)V

    .line 2119
    .end local v7    # "pageDial":Lcom/syu/bt/page/Page_Dial;
    :cond_0
    :goto_1
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v10, v0}, Lcom/syu/bt/util/BTUtil;->getZHTDScroll_AODI(Landroid/view/View;I)I

    move-result p1

    .line 2121
    sget-object v12, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v13, "changecolor"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    if-nez v11, :cond_1

    .line 2123
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v12, v12, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v12}, Lcom/lsec/core/frame/ctrl/JPage;->getId()I

    move-result v2

    .line 2124
    .local v2, "idPage":I
    const-string v12, "key"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, " 32 getZHTDScroll_AODI direction = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " v.getId() = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " idPage = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    const/4 v12, 0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_1

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v12

    const/16 v13, 0x2744

    if-ne v12, v13, :cond_1

    const/16 v12, 0x2715

    if-ne v2, v12, :cond_1

    .line 2126
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v12, v12, Lcom/lsec/core/frame/app/MyUi;->mPages:Landroid/util/SparseArray;

    const/16 v13, 0x2715

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lsec/core/frame/ctrl/JPage;

    .line 2127
    .local v6, "pageContact":Lcom/lsec/core/frame/ctrl/JPage;
    const/16 v12, 0x2811

    invoke-virtual {v6, v12}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 2130
    .end local v2    # "idPage":I
    .end local v6    # "pageContact":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_1
    if-nez v11, :cond_2

    .line 2131
    move/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v11

    .line 2132
    if-eqz v11, :cond_8

    .line 2133
    const-string v12, "key"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, " 33 getZHTDScroll_AODI vFocus.getId() = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "vFocus.getRight = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    :cond_2
    :goto_2
    if-nez v11, :cond_3

    .line 2155
    const-string v12, "key"

    const-string v13, " 55 vFocus==null "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v12, v12, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v12, :cond_3

    .line 2157
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v12, v12, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v12}, Lcom/lsec/core/frame/ctrl/JPage;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 2158
    .local v4, "obj":Ljava/lang/Object;
    instance-of v12, v4, Lcom/lsec/core/frame/app/MyUiItem;

    if-eqz v12, :cond_3

    move-object v9, v4

    .line 2159
    check-cast v9, Lcom/lsec/core/frame/app/MyUiItem;

    .line 2160
    .local v9, "uiItemTmp":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual {v9}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v8

    .line 2161
    .local v8, "strs":[Ljava/lang/String;
    const-string v12, "key"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, " 55 getParaStr  mIntPrevNext1 = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v9, Lcom/lsec/core/frame/app/MyUiItem;->mIntPrevNext:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " getId = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Lcom/lsec/core/frame/app/MyUiItem;->getId()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    if-eqz v8, :cond_3

    array-length v12, v8

    if-lez v12, :cond_3

    .line 2163
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v12, v12, Lcom/lsec/core/frame/app/MyUi;->mCtrlId:Ljava/util/HashMap;

    const/4 v13, 0x0

    aget-object v13, v8, v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 2164
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v12, v12, Lcom/lsec/core/frame/app/MyUi;->mCtrlId:Ljava/util/HashMap;

    const/4 v13, 0x0

    aget-object v13, v8, v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2165
    .local v1, "idCtrl":I
    const-string v12, "key"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, " 55 getParaStr strs[0] = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x0

    aget-object v14, v8, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " strs.length = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v12, v12, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v12, v1}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 2168
    if-eqz v11, :cond_c

    .line 2169
    const-string v12, "key"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, " 55 getParaStr vFocus.getId() = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    .end local v1    # "idCtrl":I
    .end local v4    # "obj":Ljava/lang/Object;
    .end local v8    # "strs":[Ljava/lang/String;
    .end local v9    # "uiItemTmp":Lcom/lsec/core/frame/app/MyUiItem;
    :cond_3
    :goto_3
    if-eqz v11, :cond_4

    .line 2178
    const-string v12, "key"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, " 66 onKeyHandle vFocus.getId() = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/syu/bt/Act_Bt;->checkFocusOnGridView(I)V

    .line 2180
    invoke-virtual {v11}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 2183
    :cond_4
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isZHTDConfig()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 2184
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v14, 0x2712

    invoke-virtual {v12, v13, v14}, Lcom/lsec/core/frame/app/MyActivity;->getPageNotify(Lcom/lsec/core/frame/app/MyUi;I)Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v3

    check-cast v3, Lcom/syu/bt/page/Page_Menu;

    .line 2185
    .local v3, "menu":Lcom/syu/bt/page/Page_Menu;
    if-eqz v3, :cond_5

    .line 2186
    invoke-virtual {v3}, Lcom/syu/bt/page/Page_Menu;->resetMenuButton()V

    .line 2190
    .end local v3    # "menu":Lcom/syu/bt/page/Page_Menu;
    .end local v5    # "page":Lcom/lsec/core/frame/ctrl/JPage;
    .end local v10    # "v":Landroid/view/View;
    .end local v11    # "vFocus":Landroid/view/View;
    :cond_5
    return-void

    .line 2093
    .restart local v10    # "v":Landroid/view/View;
    :cond_6
    check-cast v10, Landroid/view/ViewGroup;

    .end local v10    # "v":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v10

    .restart local v10    # "v":Landroid/view/View;
    goto/16 :goto_0

    .line 2112
    .restart local v5    # "page":Lcom/lsec/core/frame/ctrl/JPage;
    .restart local v11    # "vFocus":Landroid/view/View;
    :cond_7
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    move/from16 v0, p1

    invoke-virtual {v12, v10, v0, v13, v5}, Lcom/syu/bt/util/BTUtil;->getZHTDScroll_AODI_8541(Landroid/view/View;ILcom/lsec/core/frame/app/MyActivity;Lcom/lsec/core/frame/ctrl/JPage;)Landroid/view/View;

    move-result-object v11

    goto/16 :goto_1

    .line 2135
    :cond_8
    const-string v12, "key"

    const-string v13, " 33 getZHTDScroll_AODI vFocus==null "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2137
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/syu/bt/Act_Bt;->isGrid:Z

    if-eqz v12, :cond_2

    .line 2138
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/syu/bt/Act_Bt;->isGrid:Z

    .line 2139
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    move/from16 v0, p1

    invoke-virtual {v12, v0, v13, v5}, Lcom/syu/bt/util/BTUtil;->getZHTDGridViewScroll_AODI_8541(ILcom/lsec/core/frame/app/MyActivity;Lcom/lsec/core/frame/ctrl/JPage;)Landroid/view/View;

    move-result-object v11

    .line 2141
    sget-object v12, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v13, "changecolor"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 2142
    const-string v12, "key"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, " 23 BT_VWColor   Menu_Dial direction = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    const/4 v12, 0x2

    move/from16 v0, p1

    if-ne v0, v12, :cond_a

    .line 2144
    const/16 v12, 0x2744

    invoke-virtual {v5, v12}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 2147
    :cond_a
    if-eqz v11, :cond_b

    .line 2148
    const-string v12, "key"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, " 44 getZHTDScroll_AODI vFocus.getId() = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2150
    :cond_b
    const-string v12, "key"

    const-string v13, " 44 getZHTDScroll_AODI vFocus==null "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2171
    .restart local v1    # "idCtrl":I
    .restart local v4    # "obj":Ljava/lang/Object;
    .restart local v8    # "strs":[Ljava/lang/String;
    .restart local v9    # "uiItemTmp":Lcom/lsec/core/frame/app/MyUiItem;
    :cond_c
    const-string v12, "key"

    const-string v13, " 55 getParaStr vFocus==null "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public onKeyLeft()V
    .locals 1

    .prologue
    .line 2045
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/syu/bt/Act_Bt;->onKeyHandle(I)V

    .line 2046
    return-void
.end method

.method public onKeyRight()V
    .locals 2

    .prologue
    .line 2065
    const-string v0, "key"

    const-string v1, " 00 onKeyRight  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Lcom/syu/bt/Act_Bt;->onKeyHandle(I)V

    .line 2067
    return-void
.end method

.method public onKeyUp()V
    .locals 3

    .prologue
    .line 2050
    const/4 v0, 0x0

    .line 2051
    .local v0, "bHandled":Z
    iget-object v2, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v2, v2, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v2, :cond_0

    .line 2052
    iget-object v2, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v2, v2, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v1

    .line 2053
    .local v1, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    instance-of v2, v1, Lcom/syu/bt/page/Page_Contact;

    if-eqz v2, :cond_0

    .line 2054
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isZhangConfig()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2055
    check-cast v1, Lcom/syu/bt/page/Page_Contact;

    .end local v1    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/syu/bt/page/Page_Contact;->scrollToPrev(Z)Z

    move-result v0

    .line 2059
    :cond_0
    if-nez v0, :cond_1

    .line 2060
    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Lcom/syu/bt/Act_Bt;->onKeyHandle(I)V

    .line 2061
    :cond_1
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1046
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/syu/bt/util/BTUtil;->IsConnectCarplay()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1052
    :cond_0
    :goto_0
    return v0

    .line 1049
    :cond_1
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v1}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1052
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;Lcom/lsec/core/frame/app/MyActivity;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "act"    # Lcom/lsec/core/frame/app/MyActivity;

    .prologue
    .line 176
    invoke-virtual {p0, p1, p2}, Lcom/syu/bt/Act_Bt;->handleIntent(Landroid/content/Intent;Lcom/lsec/core/frame/app/MyActivity;)V

    .line 177
    return-void
.end method

.method public onNotify(I[I[F[Ljava/lang/String;)V
    .locals 23
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 1725
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v5, v5, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v5, :cond_0

    .line 1726
    const/4 v11, 0x1

    .line 1727
    .local v11, "bSync":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v5, v5, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v12

    .line 1728
    .local v12, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    instance-of v5, v12, Lcom/syu/bt/page/Page_Av;

    if-eqz v5, :cond_3

    .line 1729
    const/4 v11, 0x0

    .line 1730
    check-cast v12, Lcom/syu/bt/page/Page_Av;

    .end local v12    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/syu/bt/page/Page_Av;->onNotify(I[I[F[Ljava/lang/String;)V

    .line 1731
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/Act_Bt;->getPageAv_HalfScreen()Lcom/syu/bt/page/Page_Av_HalfScreen;

    move-result-object v13

    .line 1732
    .local v13, "page_Av_HalfScreen":Lcom/syu/bt/page/Page_Av_HalfScreen;
    if-eqz v13, :cond_0

    .line 1733
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/syu/bt/page/Page_Av_HalfScreen;->onNotify(I[I[F[Ljava/lang/String;)V

    .line 1783
    .end local v11    # "bSync":Z
    .end local v13    # "page_Av_HalfScreen":Lcom/syu/bt/page/Page_Av_HalfScreen;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/Act_Bt;->getPageContact()Lcom/syu/bt/page/Page_Contact;

    move-result-object v6

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v5 .. v10}, Lcom/syu/app/ipc/Bt_IpcObj;->onNotify(Lcom/syu/bt/page/Page_Contact;I[I[F[Ljava/lang/String;)V

    .line 1784
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/Act_Bt;->getPagePair()Lcom/syu/bt/page/Page_Pair;

    move-result-object v6

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v5 .. v10}, Lcom/syu/app/ipc/Bt_IpcObj;->onNotify(Lcom/syu/bt/page/Page_Pair;I[I[F[Ljava/lang/String;)V

    .line 1785
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/Act_Bt;->getPageHistory()Lcom/syu/bt/page/Page_History;

    move-result-object v6

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v5 .. v10}, Lcom/syu/app/ipc/Bt_IpcObj;->onNotify(Lcom/syu/bt/page/Page_History;I[I[F[Ljava/lang/String;)V

    .line 1787
    sget v5, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v6, 0x56

    if-ne v5, v6, :cond_1

    sget v5, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 1788
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/syu/bt/Act_Bt;->mPageMenu:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v5, :cond_1

    .line 1789
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/syu/bt/Act_Bt;->mPageMenu:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1790
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/syu/bt/Act_Bt;->mPageMenu:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v6}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v6

    check-cast v6, Lcom/syu/bt/page/Page_Menu;

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v5 .. v10}, Lcom/syu/app/ipc/Bt_IpcObj;->onNotify(Lcom/syu/bt/page/Page_Menu;I[I[F[Ljava/lang/String;)V

    .line 1793
    :cond_1
    sget-object v5, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v6, "BT_23NEW"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1794
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/syu/bt/Act_Bt;->mPageMenu:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v5, :cond_2

    .line 1795
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/syu/bt/Act_Bt;->mPageMenu:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1796
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/syu/bt/Act_Bt;->mPageMenu:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v6}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v6

    check-cast v6, Lcom/syu/bt/page/Page_Menu;

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v5 .. v10}, Lcom/syu/app/ipc/Bt_IpcObj;->onNotify(Lcom/syu/bt/page/Page_Menu;I[I[F[Ljava/lang/String;)V

    .line 1799
    :cond_2
    return-void

    .line 1734
    .restart local v11    # "bSync":Z
    .restart local v12    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    :cond_3
    instance-of v5, v12, Lcom/syu/bt/page/Page_Dial;

    if-eqz v5, :cond_4

    .line 1735
    const/4 v11, 0x0

    .line 1736
    check-cast v12, Lcom/syu/bt/page/Page_Dial;

    .end local v12    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/syu/bt/page/Page_Dial;->onNotify(I[I[F[Ljava/lang/String;)V

    .line 1737
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/Act_Bt;->getPageDial_HalfScreen()Lcom/syu/bt/page/Page_Dial_HalfScreen;

    move-result-object v22

    .line 1738
    .local v22, "page_Dial_HalfScreen":Lcom/syu/bt/page/Page_Dial_HalfScreen;
    if-eqz v22, :cond_0

    .line 1739
    move-object/from16 v0, v22

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/syu/bt/page/Page_Dial_HalfScreen;->onNotify(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1740
    .end local v22    # "page_Dial_HalfScreen":Lcom/syu/bt/page/Page_Dial_HalfScreen;
    .restart local v12    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    :cond_4
    instance-of v5, v12, Lcom/syu/bt/page/Page_Set;

    if-eqz v5, :cond_5

    .line 1741
    check-cast v12, Lcom/syu/bt/page/Page_Set;

    .end local v12    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/syu/bt/page/Page_Set;->onNotify(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1742
    .restart local v12    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    :cond_5
    instance-of v5, v12, Lcom/syu/bt/page/Page_Callin;

    if-eqz v5, :cond_0

    .line 1743
    const/4 v11, 0x0

    .line 1744
    check-cast v12, Lcom/syu/bt/page/Page_Callin;

    .end local v12    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/syu/bt/page/Page_Callin;->onNotify(I[I[F[Ljava/lang/String;)V

    .line 1745
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/Act_Bt;->getPageCallin_HalfScreen()Lcom/syu/bt/page/Page_Callin_HalfScreen;

    move-result-object v14

    .line 1747
    .local v14, "page_Callin_HalfScreen":Lcom/syu/bt/page/Page_Callin_HalfScreen;
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/Act_Bt;->getPageCallin_ShowDial_HalfScreen()Lcom/syu/bt/page/Page_Callin_ShowDial_HalfScreen;

    move-result-object v19

    .line 1748
    .local v19, "page_Callin_ShowDial_HalfScreen":Lcom/syu/bt/page/Page_Callin_ShowDial_HalfScreen;
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/Act_Bt;->getPageCallin_ShowCall_HalfScreen()Lcom/syu/bt/page/Page_Callin_ShowCall_HalfScreen;

    move-result-object v17

    .line 1749
    .local v17, "page_Callin_ShowCall_HalfScreen":Lcom/syu/bt/page/Page_Callin_ShowCall_HalfScreen;
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/Act_Bt;->getPageCallin_ShowKey_HalfScreen()Lcom/syu/bt/page/Page_Callin_ShowKey_HalfScreen;

    move-result-object v21

    .line 1751
    .local v21, "page_Callin_ShowKey_HalfScreen":Lcom/syu/bt/page/Page_Callin_ShowKey_HalfScreen;
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/Act_Bt;->getPageCallin_ShowDial()Lcom/syu/bt/page/Page_Callin_ShowDial;

    move-result-object v18

    .line 1752
    .local v18, "page_Callin_ShowDial":Lcom/syu/bt/page/Page_Callin_ShowDial;
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/Act_Bt;->getPageCallin_ShowCall()Lcom/syu/bt/page/Page_Callin_ShowCall;

    move-result-object v16

    .line 1753
    .local v16, "page_Callin_ShowCall":Lcom/syu/bt/page/Page_Callin_ShowCall;
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/Act_Bt;->getPageCallin_ShowKey()Lcom/syu/bt/page/Page_Callin_ShowKey;

    move-result-object v20

    .line 1754
    .local v20, "page_Callin_ShowKey":Lcom/syu/bt/page/Page_Callin_ShowKey;
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/Act_Bt;->getPageCallin_HideKey()Lcom/syu/bt/page/Page_Callin_HideKey;

    move-result-object v15

    .line 1755
    .local v15, "page_Callin_HideKey":Lcom/syu/bt/page/Page_Callin_HideKey;
    if-eqz v14, :cond_6

    .line 1756
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/syu/bt/page/Page_Callin_HalfScreen;->onNotify(I[I[F[Ljava/lang/String;)V

    .line 1758
    :cond_6
    if-eqz v19, :cond_7

    .line 1759
    move-object/from16 v0, v19

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/syu/bt/page/Page_Callin_ShowDial_HalfScreen;->onNotify(I[I[F[Ljava/lang/String;)V

    .line 1761
    :cond_7
    if-eqz v17, :cond_8

    .line 1762
    move-object/from16 v0, v17

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/syu/bt/page/Page_Callin_ShowCall_HalfScreen;->onNotify(I[I[F[Ljava/lang/String;)V

    .line 1764
    :cond_8
    if-eqz v21, :cond_9

    .line 1765
    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/syu/bt/page/Page_Callin_ShowKey_HalfScreen;->onNotify(I[I[F[Ljava/lang/String;)V

    .line 1767
    :cond_9
    if-eqz v18, :cond_a

    .line 1768
    move-object/from16 v0, v18

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/syu/bt/page/Page_Callin_ShowDial;->onNotify(I[I[F[Ljava/lang/String;)V

    .line 1770
    :cond_a
    if-eqz v16, :cond_b

    .line 1771
    move-object/from16 v0, v16

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/syu/bt/page/Page_Callin_ShowCall;->onNotify(I[I[F[Ljava/lang/String;)V

    .line 1773
    :cond_b
    if-eqz v20, :cond_c

    .line 1774
    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/syu/bt/page/Page_Callin_ShowKey;->onNotify(I[I[F[Ljava/lang/String;)V

    .line 1776
    :cond_c
    if-eqz v15, :cond_0

    .line 1777
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/syu/bt/page/Page_Callin_HideKey;->onNotify(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onNotify_Sound(I[I[F[Ljava/lang/String;)V
    .locals 2
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 1803
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v1, v1, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v1, :cond_0

    .line 1804
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v1, v1, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    .line 1805
    .local v0, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    instance-of v1, v0, Lcom/syu/bt/page/Page_Set;

    if-eqz v1, :cond_0

    .line 1806
    check-cast v0, Lcom/syu/bt/page/Page_Set;

    .end local v0    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/syu/bt/page/Page_Set;->onNotify_Sound(I[I[F[Ljava/lang/String;)V

    .line 1808
    :cond_0
    return-void
.end method

.method public onNotify_UniCar(I[I[F[Ljava/lang/String;)V
    .locals 1
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 1812
    invoke-virtual {p0}, Lcom/syu/bt/Act_Bt;->getPageDial()Lcom/syu/bt/page/Page_Dial;

    move-result-object v0

    .line 1813
    .local v0, "page_Dial":Lcom/syu/bt/page/Page_Dial;
    if-eqz v0, :cond_0

    .line 1814
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/syu/bt/page/Page_Dial;->onNotify_UniCar(I[I[F[Ljava/lang/String;)V

    .line 1815
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 344
    const/4 v0, 0x0

    sput-boolean v0, Lcom/syu/bt/App_Bt;->bResumeByDial:Z

    .line 345
    const-string v0, "android.fyt.action.SHOW"

    invoke-direct {p0, v0}, Lcom/syu/bt/Act_Bt;->showOrHideScreenButton(Ljava/lang/String;)V

    .line 346
    invoke-static {}, Lcom/myspec/MyClass;->getInstance()Lcom/myspec/MyClass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myspec/MyClass;->destCust()V

    .line 347
    const-string v0, "gdy666"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " 02 Act_bt onPause  showFloatBtn bShowFloatBtn = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/syu/bt/App_Bt;->bShowFloatBtn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " App_Bt.bShowFloatBtn_p = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/syu/bt/App_Bt;->bShowFloatBtn_p:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bShowFloatBtn:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/syu/bt/App_Bt;->bShowFloatBtn_p:Z

    if-eqz v0, :cond_0

    .line 349
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/syu/bt/App_Bt;->showFloatBtn(Z)V

    .line 352
    :goto_0
    return-void

    .line 351
    :cond_0
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->showPopBtWhen360Top:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-static {v4, v0, v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 302
    const-string v2, "gdy"

    const-string v5, " ** 00 lib Act_Bt onResume     "

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Lcom/syu/bt/App_Bt;->popBt(ZZ)V

    .line 304
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/syu/bt/App_Bt;->showFloatBtn(Z)V

    .line 306
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v5, "YL_3"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    iget-object v2, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v5, 0x2711

    invoke-virtual {v2, v5}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 308
    .local v0, "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v0, :cond_0

    .line 309
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v5, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    sget v2, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v2, :cond_5

    const-string v2, "night_main_bk"

    :goto_0
    iget-object v6, p0, Lcom/syu/bt/Act_Bt;->mDrawables:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/syu/bt/Act_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v6, v7}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 311
    .end local v0    # "page":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_0
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v5, "BT_23NEW"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 312
    const-string v2, "persist.launcher.toobar_height"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_6

    move v2, v3

    :goto_1
    sput-boolean v2, Lcom/syu/bt/Act_Bt;->LauncherToobar:Z

    .line 315
    invoke-virtual {p0}, Lcom/syu/bt/Act_Bt;->setBgColor()V

    .line 317
    :cond_1
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v5, "BT_XYQ_HB"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 318
    const-string v2, "persist.syu.nightorlight"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "night"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v1, v3

    .line 319
    .local v1, "theme_mode":I
    :goto_2
    sput v1, Lcom/syu/bt/App_Bt;->mColorType:I

    .line 320
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/syu/bt/App_Bt;->setDayOrNight(I)V

    .line 323
    .end local v1    # "theme_mode":I
    :cond_2
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isZhangConfig()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 324
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bPop3rdPhone_YF:Z

    if-eqz v2, :cond_3

    .line 325
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/syu/bt/App_Bt;->pop3rdPhone(Z)V

    .line 327
    :cond_3
    const-string v2, "android.fyt.action.HIDE"

    invoke-direct {p0, v2}, Lcom/syu/bt/Act_Bt;->showOrHideScreenButton(Ljava/lang/String;)V

    .line 334
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bResumeByDial:Z

    if-nez v2, :cond_4

    .line 335
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    sget v3, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    invoke-virtual {v2, v3}, Lcom/syu/app/ipc/Bt_IpcObj;->requestAppIdRight(I)V

    .line 338
    :cond_4
    sput-boolean v4, Lcom/syu/bt/App_Bt;->bResumeByDial:Z

    .line 339
    return-void

    .line 309
    .restart local v0    # "page":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_5
    const-string v2, "main_bk"

    goto :goto_0

    .end local v0    # "page":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_6
    move v2, v4

    .line 312
    goto :goto_1

    :cond_7
    move v1, v4

    .line 318
    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1070
    iget-object v2, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v2, v2, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v2, :cond_0

    .line 1071
    iget-object v2, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v2, v2, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JPage;->getId()I

    move-result v0

    .line 1072
    .local v0, "idPage":I
    packed-switch v0, :pswitch_data_0

    .line 1081
    .end local v0    # "idPage":I
    :cond_0
    :goto_0
    return-void

    .line 1074
    .restart local v0    # "idPage":I
    :pswitch_0
    iget-object v2, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v2, v2, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v1

    check-cast v1, Lcom/syu/bt/page/Page_Set;

    .line 1075
    .local v1, "pageNotify":Lcom/syu/bt/page/Page_Set;
    if-eqz v1, :cond_0

    .line 1076
    invoke-virtual {v1, p1}, Lcom/syu/bt/page/Page_Set;->TouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1072
    :pswitch_data_0
    .packed-switch 0x271b
        :pswitch_0
    .end packed-switch
.end method

.method public phoneState()V
    .locals 1

    .prologue
    .line 1611
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v0, p0}, Lcom/syu/app/ipc/Bt_IpcObj;->phoneState(Lcom/syu/bt/Act_Bt;)V

    .line 1612
    return-void
.end method

.method public popDeleteContacts(ILjava/lang/String;)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x2722

    .line 1366
    if-nez p2, :cond_1

    .line 1380
    :cond_0
    :goto_0
    return-void

    .line 1369
    :cond_1
    sput p1, Lcom/syu/bt/App_Bt;->mDelType:I

    .line 1370
    iget-object v3, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const-string v4, ""

    const/4 v5, 0x1

    invoke-virtual {v3, v6, v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getPopDlg(ILjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v1

    .line 1371
    .local v1, "popDlg":Landroid/app/Dialog;
    iget-object v3, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 1372
    .local v0, "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v0, :cond_2

    .line 1373
    const/16 v3, 0x28f4

    invoke-virtual {v0, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JText;

    .line 1374
    .local v2, "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v2, :cond_2

    .line 1375
    invoke-virtual {v2, p2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1378
    .end local v2    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :cond_2
    if-eqz v1, :cond_0

    .line 1379
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public popDeleteContacts2(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "msg2"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 1390
    if-nez p1, :cond_1

    .line 1418
    :cond_0
    :goto_0
    return-void

    .line 1392
    :cond_1
    if-eqz p2, :cond_0

    .line 1394
    sput p3, Lcom/syu/bt/Act_Bt;->Sel_Id:I

    .line 1395
    iget-object v4, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v5, 0x2723

    const-string v6, ""

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/lsec/core/frame/app/MyUi;->getPopDlg(ILjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v1

    .line 1396
    .local v1, "popDlg":Landroid/app/Dialog;
    iget-object v4, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v5, 0x2723

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 1397
    .local v0, "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v0, :cond_3

    .line 1398
    const/16 v4, 0x28f3

    invoke-virtual {v0, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JText;

    .line 1399
    .local v2, "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v2, :cond_2

    .line 1400
    invoke-virtual {v2, p1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1401
    :cond_2
    const/16 v4, 0x28f4

    invoke-virtual {v0, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JText;

    .line 1402
    .local v3, "text2":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v3, :cond_3

    .line 1403
    const-string v4, ":"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_4

    .line 1404
    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1405
    const/4 v5, 0x2

    const/4 v6, 0x4

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1406
    const/4 v5, 0x4

    const/4 v6, 0x6

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1407
    const/4 v5, 0x6

    const/16 v6, 0x8

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1408
    const/16 v5, 0x8

    const/16 v6, 0xa

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1409
    const/16 v5, 0xa

    const/16 v6, 0xc

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1404
    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1415
    .end local v2    # "text":Lcom/lsec/core/frame/ctrl/JText;
    .end local v3    # "text2":Lcom/lsec/core/frame/ctrl/JText;
    :cond_3
    :goto_1
    if-eqz v1, :cond_0

    .line 1416
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 1411
    .restart local v2    # "text":Lcom/lsec/core/frame/ctrl/JText;
    .restart local v3    # "text2":Lcom/lsec/core/frame/ctrl/JText;
    :cond_4
    invoke-virtual {v3, p2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public removeChildFromParent(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "viewParent"    # Landroid/view/ViewGroup;

    .prologue
    .line 882
    const/16 v0, 0x2711

    invoke-virtual {p0, p1, v0}, Lcom/syu/bt/Act_Bt;->removePageFromParent(Landroid/view/ViewGroup;I)V

    .line 883
    const/16 v0, 0x2712

    invoke-virtual {p0, p1, v0}, Lcom/syu/bt/Act_Bt;->removePageFromParent(Landroid/view/ViewGroup;I)V

    .line 884
    return-void
.end method

.method public removePageFromParent(Landroid/view/ViewGroup;I)V
    .locals 1
    .param p1, "viewParent"    # Landroid/view/ViewGroup;
    .param p2, "idPage"    # I

    .prologue
    .line 864
    if-eqz p1, :cond_0

    .line 865
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JPage;

    .line 866
    .local v0, "pageMain":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v0, :cond_0

    .line 867
    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JPage;->pause()V

    .line 868
    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JPage;->removeFromUiPages()V

    .line 869
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 872
    .end local v0    # "pageMain":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_0
    return-void
.end method

.method public resetColor()V
    .locals 12

    .prologue
    .line 2332
    sget-object v9, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v10, "changecolor"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2333
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v9

    const-string v10, "persist.launcher.color"

    const-string v11, "0,0,123"

    invoke-virtual {v9, v10, v11}, Lcom/syu/bt/util/BTUtil;->getSystemPro(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2334
    .local v7, "ss":Ljava/lang/String;
    const/4 v9, 0x3

    new-array v8, v9, [Ljava/lang/String;

    .line 2335
    .local v8, "str":[Ljava/lang/String;
    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2336
    const/4 v9, 0x0

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x2

    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    sput v9, Lcom/syu/bt/App_Bt;->color:I

    .line 2338
    const-string v9, "color"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, " Act_Bt resetColor color = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v11, Lcom/syu/bt/App_Bt;->color:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    invoke-virtual {p0}, Lcom/syu/bt/Act_Bt;->getPageDial()Lcom/syu/bt/page/Page_Dial;

    move-result-object v2

    .line 2341
    .local v2, "page_Dial":Lcom/syu/bt/page/Page_Dial;
    if-eqz v2, :cond_0

    .line 2342
    sget v9, Lcom/syu/bt/App_Bt;->color:I

    invoke-virtual {v2, v9}, Lcom/syu/bt/page/Page_Dial;->setButtonColor(I)V

    .line 2344
    :cond_0
    invoke-virtual {p0}, Lcom/syu/bt/Act_Bt;->getPageContact()Lcom/syu/bt/page/Page_Contact;

    move-result-object v1

    .line 2345
    .local v1, "page_Contact":Lcom/syu/bt/page/Page_Contact;
    if-eqz v1, :cond_1

    .line 2346
    sget v9, Lcom/syu/bt/App_Bt;->color:I

    invoke-virtual {v1, v9}, Lcom/syu/bt/page/Page_Contact;->setButtonColor(I)V

    .line 2348
    :cond_1
    invoke-virtual {p0}, Lcom/syu/bt/Act_Bt;->getPagePair()Lcom/syu/bt/page/Page_Pair;

    move-result-object v5

    .line 2349
    .local v5, "page_Pair":Lcom/syu/bt/page/Page_Pair;
    if-eqz v5, :cond_2

    .line 2350
    sget v9, Lcom/syu/bt/App_Bt;->color:I

    invoke-virtual {v5, v9}, Lcom/syu/bt/page/Page_Pair;->setButtonColor(I)V

    .line 2352
    :cond_2
    invoke-virtual {p0}, Lcom/syu/bt/Act_Bt;->getPageSet()Lcom/syu/bt/page/Page_Set;

    move-result-object v6

    .line 2353
    .local v6, "page_Set":Lcom/syu/bt/page/Page_Set;
    if-eqz v6, :cond_3

    .line 2354
    sget v9, Lcom/syu/bt/App_Bt;->color:I

    invoke-virtual {v6, v9}, Lcom/syu/bt/page/Page_Set;->setButtonColor(I)V

    .line 2356
    :cond_3
    invoke-virtual {p0}, Lcom/syu/bt/Act_Bt;->getPageHistory()Lcom/syu/bt/page/Page_History;

    move-result-object v3

    .line 2357
    .local v3, "page_History":Lcom/syu/bt/page/Page_History;
    if-eqz v3, :cond_4

    .line 2358
    sget v9, Lcom/syu/bt/App_Bt;->color:I

    invoke-virtual {v3, v9}, Lcom/syu/bt/page/Page_History;->setButtonColor(I)V

    .line 2360
    :cond_4
    iget-object v9, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v10, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v11, 0x271a

    invoke-virtual {v9, v10, v11}, Lcom/lsec/core/frame/app/MyActivity;->getPageNotify(Lcom/lsec/core/frame/app/MyUi;I)Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/page/Page_Av;

    .line 2361
    .local v0, "page_Av":Lcom/syu/bt/page/Page_Av;
    if-eqz v0, :cond_5

    .line 2362
    sget v9, Lcom/syu/bt/App_Bt;->color:I

    invoke-virtual {v0, v9}, Lcom/syu/bt/page/Page_Av;->setButtonColor(I)V

    .line 2365
    :cond_5
    iget-object v9, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v10, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v11, 0x2712

    invoke-virtual {v9, v10, v11}, Lcom/lsec/core/frame/app/MyActivity;->getPageNotify(Lcom/lsec/core/frame/app/MyUi;I)Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v4

    check-cast v4, Lcom/syu/bt/page/Page_Menu;

    .line 2366
    .local v4, "page_Menu":Lcom/syu/bt/page/Page_Menu;
    if-eqz v4, :cond_6

    .line 2367
    sget v9, Lcom/syu/bt/App_Bt;->color:I

    invoke-virtual {v4, v9}, Lcom/syu/bt/page/Page_Menu;->setButtonColor(I)V

    .line 2370
    .end local v0    # "page_Av":Lcom/syu/bt/page/Page_Av;
    .end local v1    # "page_Contact":Lcom/syu/bt/page/Page_Contact;
    .end local v2    # "page_Dial":Lcom/syu/bt/page/Page_Dial;
    .end local v3    # "page_History":Lcom/syu/bt/page/Page_History;
    .end local v4    # "page_Menu":Lcom/syu/bt/page/Page_Menu;
    .end local v5    # "page_Pair":Lcom/syu/bt/page/Page_Pair;
    .end local v6    # "page_Set":Lcom/syu/bt/page/Page_Set;
    .end local v7    # "ss":Ljava/lang/String;
    .end local v8    # "str":[Ljava/lang/String;
    :cond_6
    return-void
.end method

.method public resetList()V
    .locals 4

    .prologue
    .line 1696
    iget-object v2, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v2, v2, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v2, :cond_0

    .line 1697
    const/4 v0, 0x1

    .line 1698
    .local v0, "bSync":Z
    iget-object v2, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v2, v2, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v1

    .line 1700
    .local v1, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    instance-of v2, v1, Lcom/syu/bt/page/Page_Contact;

    if-eqz v2, :cond_1

    .line 1701
    check-cast v1, Lcom/syu/bt/page/Page_Contact;

    .end local v1    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    invoke-virtual {v1}, Lcom/syu/bt/page/Page_Contact;->resetList()V

    .line 1721
    .end local v0    # "bSync":Z
    :cond_0
    :goto_0
    return-void

    .line 1702
    .restart local v0    # "bSync":Z
    .restart local v1    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    :cond_1
    instance-of v2, v1, Lcom/syu/bt/page/Page_History;

    if-eqz v2, :cond_2

    .line 1703
    check-cast v1, Lcom/syu/bt/page/Page_History;

    .end local v1    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    invoke-virtual {v1}, Lcom/syu/bt/page/Page_History;->resetList()V

    goto :goto_0

    .line 1704
    .restart local v1    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    :cond_2
    instance-of v2, v1, Lcom/syu/bt/page/Page_Pair;

    if-eqz v2, :cond_3

    move-object v2, v1

    .line 1705
    check-cast v2, Lcom/syu/bt/page/Page_Pair;

    invoke-virtual {v2}, Lcom/syu/bt/page/Page_Pair;->refreshList()V

    .line 1707
    const-string v2, "hfp11"

    const-string v3, " ** 00   refreshPairedList "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    check-cast v1, Lcom/syu/bt/page/Page_Pair;

    .end local v1    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    invoke-virtual {v1}, Lcom/syu/bt/page/Page_Pair;->refreshPairedList()V

    goto :goto_0

    .line 1709
    .restart local v1    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    :cond_3
    instance-of v2, v1, Lcom/syu/bt/page/Page_Favorite;

    if-eqz v2, :cond_4

    .line 1710
    check-cast v1, Lcom/syu/bt/page/Page_Favorite;

    .end local v1    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    invoke-virtual {v1}, Lcom/syu/bt/page/Page_Favorite;->resetList()V

    goto :goto_0

    .line 1711
    .restart local v1    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    :cond_4
    instance-of v2, v1, Lcom/syu/bt/page/Page_Dial;

    if-eqz v2, :cond_6

    .line 1712
    const/4 v0, 0x0

    .line 1713
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isTZYConfig()Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v3, "YL_BT_1920"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1714
    :cond_5
    check-cast v1, Lcom/syu/bt/page/Page_Dial;

    .end local v1    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    invoke-virtual {v1}, Lcom/syu/bt/page/Page_Dial;->resetList()V

    goto :goto_0

    .line 1716
    .restart local v1    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    :cond_6
    instance-of v2, v1, Lcom/syu/bt/page/Page_Av;

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public scrollOk()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1987
    iget-object v3, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-boolean v3, v3, Lcom/lsec/core/frame/app/MyActivity;->bTop:Z

    if-eqz v3, :cond_0

    .line 1988
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isZhangConfig()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1989
    iget-object v3, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v3, v3, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v3, :cond_0

    .line 1990
    iget-object v3, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v3, v3, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v3}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v1

    .line 1991
    .local v1, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    instance-of v3, v1, Lcom/syu/bt/page/Page_Contact;

    if-eqz v3, :cond_0

    .line 1992
    check-cast v1, Lcom/syu/bt/page/Page_Contact;

    .end local v1    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    invoke-virtual {v1, v6}, Lcom/syu/bt/page/Page_Contact;->scrollOk(Z)Z

    .line 2020
    :cond_0
    :goto_0
    return-void

    .line 1995
    :cond_1
    const/4 v0, 0x1

    .line 1996
    .local v0, "bScroll":Z
    iget-object v3, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v3, v3, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v3, :cond_2

    .line 1997
    iget-object v3, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v3, v3, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v3}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v1

    .line 1998
    .restart local v1    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    instance-of v3, v1, Lcom/syu/bt/page/Page_Contact;

    if-eqz v3, :cond_4

    .line 1999
    check-cast v1, Lcom/syu/bt/page/Page_Contact;

    .end local v1    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    invoke-virtual {v1, v5}, Lcom/syu/bt/page/Page_Contact;->scrollOk(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v5

    .line 2008
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 2009
    iget-object v3, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v3, v3, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {p0, v3}, Lcom/syu/bt/Act_Bt;->getFocus(Lcom/lsec/core/frame/ctrl/JPage;)Landroid/view/View;

    move-result-object v2

    .line 2010
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Lcom/lsec/core/frame/ctrl/JSwitchButton;

    if-eqz v3, :cond_b

    move-object v3, v2

    .line 2011
    check-cast v3, Lcom/lsec/core/frame/ctrl/JSwitchButton;

    move-object v4, v2

    check-cast v4, Lcom/lsec/core/frame/ctrl/JSwitchButton;

    invoke-virtual {v4}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a

    :goto_2
    invoke-virtual {v3, v5}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->setChecked(Z)V

    .line 2012
    iget-object v3, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v3, v3, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v3}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v1

    .line 2013
    .restart local v1    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    if-eqz v1, :cond_0

    .line 2014
    invoke-interface {v1, v2}, Lcom/lsec/core/frame/page/IPageNotify;->ResponseClick(Landroid/view/View;)V

    goto :goto_0

    .end local v1    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    .end local v2    # "v":Landroid/view/View;
    :cond_3
    move v0, v6

    .line 1999
    goto :goto_1

    .line 2000
    .restart local v1    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    :cond_4
    instance-of v3, v1, Lcom/syu/bt/page/Page_Dial;

    if-eqz v3, :cond_6

    .line 2001
    check-cast v1, Lcom/syu/bt/page/Page_Dial;

    .end local v1    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    invoke-virtual {v1}, Lcom/syu/bt/page/Page_Dial;->scrollOk()Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v5

    :goto_3
    goto :goto_1

    :cond_5
    move v0, v6

    goto :goto_3

    .line 2002
    .restart local v1    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    :cond_6
    instance-of v3, v1, Lcom/syu/bt/page/Page_History;

    if-eqz v3, :cond_8

    .line 2003
    check-cast v1, Lcom/syu/bt/page/Page_History;

    .end local v1    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    invoke-virtual {v1}, Lcom/syu/bt/page/Page_History;->scrollOk()Z

    move-result v3

    if-eqz v3, :cond_7

    move v0, v5

    :goto_4
    goto :goto_1

    :cond_7
    move v0, v6

    goto :goto_4

    .line 2004
    .restart local v1    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    :cond_8
    instance-of v3, v1, Lcom/syu/bt/page/Page_Pair;

    if-eqz v3, :cond_2

    .line 2005
    check-cast v1, Lcom/syu/bt/page/Page_Pair;

    .end local v1    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    invoke-virtual {v1}, Lcom/syu/bt/page/Page_Pair;->scrollOk()Z

    move-result v3

    if-eqz v3, :cond_9

    move v0, v5

    :goto_5
    goto :goto_1

    :cond_9
    move v0, v6

    goto :goto_5

    .restart local v2    # "v":Landroid/view/View;
    :cond_a
    move v5, v6

    .line 2011
    goto :goto_2

    .line 2016
    :cond_b
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    const/16 v4, 0x42

    invoke-virtual {v3, v4}, Lcom/syu/bt/App_Bt;->simulateKey(I)V

    goto/16 :goto_0
.end method

.method public scrollToNext()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1940
    const-string v7, "key"

    const-string v8, " 00 Act_Bt scrollToNext  "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    iget-object v7, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-boolean v7, v7, Lcom/lsec/core/frame/app/MyActivity;->bTop:Z

    if-eqz v7, :cond_1

    .line 1942
    iget-object v7, p0, Lcom/syu/bt/Act_Bt;->mScrollPageList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 1943
    iget-object v5, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v5, v5, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JPage;->getId()I

    move-result v1

    .line 1944
    .local v1, "idPage":I
    const/4 v2, 0x0

    .line 1945
    .local v2, "index":I
    iget-object v5, p0, Lcom/syu/bt/Act_Bt;->mScrollPageList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1952
    :cond_0
    add-int/lit8 v5, v2, 0x1

    iget-object v6, p0, Lcom/syu/bt/Act_Bt;->mScrollPageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 1954
    const-string v5, "HJT"

    const-string v6, "F"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    iget-object v6, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v5, p0, Lcom/syu/bt/Act_Bt;->mScrollPageList:Ljava/util/List;

    add-int/lit8 v7, v2, 0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    .line 1983
    .end local v1    # "idPage":I
    .end local v2    # "index":I
    :cond_1
    :goto_1
    return-void

    .line 1945
    .restart local v1    # "idPage":I
    .restart local v2    # "index":I
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1946
    .local v3, "integer":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v1, :cond_0

    .line 1949
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1959
    .end local v1    # "idPage":I
    .end local v2    # "index":I
    .end local v3    # "integer":Ljava/lang/Integer;
    :cond_3
    const-string v7, "key"

    const-string v8, " 11 Act_Bt scrollToNext  "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    const/4 v0, 0x1

    .line 1961
    .local v0, "bScroll":Z
    iget-object v7, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v7, v7, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v7, :cond_4

    .line 1963
    const-string v7, "key"

    const-string v8, " 22 Act_Bt scrollToNext  "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    iget-object v7, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v7, v7, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v7}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v4

    .line 1965
    .local v4, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    instance-of v7, v4, Lcom/syu/bt/page/Page_Contact;

    if-eqz v7, :cond_6

    .line 1966
    check-cast v4, Lcom/syu/bt/page/Page_Contact;

    .end local v4    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    invoke-virtual {v4, v5}, Lcom/syu/bt/page/Page_Contact;->scrollToNext(Z)Z

    move-result v7

    if-eqz v7, :cond_5

    move v0, v5

    .line 1979
    :cond_4
    :goto_2
    if-eqz v0, :cond_1

    .line 1980
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/syu/bt/Act_Bt;->onKeyHandle(I)V

    goto :goto_1

    :cond_5
    move v0, v6

    .line 1966
    goto :goto_2

    .line 1967
    .restart local v4    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    :cond_6
    instance-of v7, v4, Lcom/syu/bt/page/Page_Dial;

    if-eqz v7, :cond_8

    .line 1968
    check-cast v4, Lcom/syu/bt/page/Page_Dial;

    .end local v4    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    invoke-virtual {v4}, Lcom/syu/bt/page/Page_Dial;->scrollToNext()Z

    move-result v7

    if-eqz v7, :cond_7

    move v0, v5

    :goto_3
    goto :goto_2

    :cond_7
    move v0, v6

    goto :goto_3

    .line 1969
    .restart local v4    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    :cond_8
    instance-of v7, v4, Lcom/syu/bt/page/Page_History;

    if-eqz v7, :cond_a

    .line 1970
    const-string v7, "key"

    const-string v8, " 33 Act_Bt scrollToNext Page_History "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    check-cast v4, Lcom/syu/bt/page/Page_History;

    .end local v4    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    invoke-virtual {v4}, Lcom/syu/bt/page/Page_History;->scrollToNext()Z

    move-result v7

    if-eqz v7, :cond_9

    move v0, v5

    .line 1972
    :goto_4
    goto :goto_2

    :cond_9
    move v0, v6

    .line 1971
    goto :goto_4

    .line 1973
    .restart local v4    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    :cond_a
    instance-of v7, v4, Lcom/syu/bt/page/Page_Pair;

    if-eqz v7, :cond_4

    .line 1974
    const-string v7, "key"

    const-string v8, " 44 Act_Bt scrollToNext Page_Pair "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    check-cast v4, Lcom/syu/bt/page/Page_Pair;

    .end local v4    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    invoke-virtual {v4}, Lcom/syu/bt/page/Page_Pair;->scrollToNext()Z

    move-result v7

    if-eqz v7, :cond_b

    move v0, v5

    :goto_5
    goto :goto_2

    :cond_b
    move v0, v6

    goto :goto_5
.end method

.method public scrollToPrev()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1900
    iget-object v7, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-boolean v7, v7, Lcom/lsec/core/frame/app/MyActivity;->bTop:Z

    if-eqz v7, :cond_1

    .line 1901
    iget-object v7, p0, Lcom/syu/bt/Act_Bt;->mScrollPageList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 1902
    iget-object v5, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v5, v5, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v5, :cond_1

    .line 1903
    iget-object v5, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v5, v5, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JPage;->getId()I

    move-result v1

    .line 1904
    .local v1, "idPage":I
    const/4 v2, 0x0

    .line 1905
    .local v2, "index":I
    iget-object v5, p0, Lcom/syu/bt/Act_Bt;->mScrollPageList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1912
    :cond_0
    if-lez v2, :cond_1

    .line 1914
    const-string v5, "HJT"

    const-string v6, "G"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    iget-object v6, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v5, p0, Lcom/syu/bt/Act_Bt;->mScrollPageList:Ljava/util/List;

    add-int/lit8 v7, v2, -0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    .line 1936
    .end local v1    # "idPage":I
    .end local v2    # "index":I
    :cond_1
    :goto_1
    return-void

    .line 1905
    .restart local v1    # "idPage":I
    .restart local v2    # "index":I
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1906
    .local v3, "integer":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v1, :cond_0

    .line 1909
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1919
    .end local v1    # "idPage":I
    .end local v2    # "index":I
    .end local v3    # "integer":Ljava/lang/Integer;
    :cond_3
    const/4 v0, 0x1

    .line 1920
    .local v0, "bScroll":Z
    iget-object v7, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v7, v7, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v7, :cond_4

    .line 1921
    iget-object v7, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v7, v7, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v7}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v4

    .line 1922
    .local v4, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    instance-of v7, v4, Lcom/syu/bt/page/Page_Contact;

    if-eqz v7, :cond_6

    .line 1923
    check-cast v4, Lcom/syu/bt/page/Page_Contact;

    .end local v4    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    invoke-virtual {v4, v5}, Lcom/syu/bt/page/Page_Contact;->scrollToPrev(Z)Z

    move-result v7

    if-eqz v7, :cond_5

    move v0, v5

    .line 1932
    :cond_4
    :goto_2
    if-eqz v0, :cond_1

    .line 1933
    invoke-virtual {p0, v6}, Lcom/syu/bt/Act_Bt;->onKeyHandle(I)V

    goto :goto_1

    :cond_5
    move v0, v6

    .line 1923
    goto :goto_2

    .line 1924
    .restart local v4    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    :cond_6
    instance-of v7, v4, Lcom/syu/bt/page/Page_Dial;

    if-eqz v7, :cond_8

    .line 1925
    check-cast v4, Lcom/syu/bt/page/Page_Dial;

    .end local v4    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    invoke-virtual {v4}, Lcom/syu/bt/page/Page_Dial;->scrollToPrev()Z

    move-result v7

    if-eqz v7, :cond_7

    move v0, v5

    :goto_3
    goto :goto_2

    :cond_7
    move v0, v6

    goto :goto_3

    .line 1926
    .restart local v4    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    :cond_8
    instance-of v7, v4, Lcom/syu/bt/page/Page_History;

    if-eqz v7, :cond_a

    .line 1927
    check-cast v4, Lcom/syu/bt/page/Page_History;

    .end local v4    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    invoke-virtual {v4}, Lcom/syu/bt/page/Page_History;->scrollToPrev()Z

    move-result v7

    if-eqz v7, :cond_9

    move v0, v5

    :goto_4
    goto :goto_2

    :cond_9
    move v0, v6

    goto :goto_4

    .line 1928
    .restart local v4    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    :cond_a
    instance-of v7, v4, Lcom/syu/bt/page/Page_Pair;

    if-eqz v7, :cond_4

    .line 1929
    check-cast v4, Lcom/syu/bt/page/Page_Pair;

    .end local v4    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    invoke-virtual {v4}, Lcom/syu/bt/page/Page_Pair;->scrollToPrev()Z

    move-result v7

    if-eqz v7, :cond_b

    move v0, v5

    :goto_5
    goto :goto_2

    :cond_b
    move v0, v6

    goto :goto_5
.end method

.method public setBgColor()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 429
    iget-object v8, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v8, v8, Lcom/lsec/core/frame/app/MyUi;->mPages:Landroid/util/SparseArray;

    const/16 v9, 0x2712

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JPage;

    .line 430
    .local v5, "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v5, :cond_0

    .line 431
    const/16 v8, 0x28aa

    invoke-virtual {v5, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JView;

    .line 432
    .local v3, "ivBgColor":Lcom/lsec/core/frame/ctrl/JView;
    if-eqz v3, :cond_0

    .line 434
    const-string v8, "persist.syu.thememode"

    invoke-static {v8, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 435
    .local v7, "theme_mode":I
    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 436
    const-string v8, "persist.syu.themecolor"

    const-string v9, "{\"bt\":0}"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 438
    .local v6, "theme_app":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 439
    .local v4, "jsonApp":Lorg/json/JSONObject;
    const-string v8, "bt"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/syu/bt/App_Bt;->color_set:I

    .line 440
    const-string v8, "json"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " 00 Act_Bt theme_app = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    sget v8, Lcom/syu/bt/App_Bt;->color_set:I

    if-nez v8, :cond_1

    .line 442
    invoke-virtual {p0, v3}, Lcom/syu/bt/Act_Bt;->setBgColorDef(Lcom/lsec/core/frame/ctrl/JView;)V

    .line 463
    .end local v3    # "ivBgColor":Lcom/lsec/core/frame/ctrl/JView;
    .end local v4    # "jsonApp":Lorg/json/JSONObject;
    .end local v6    # "theme_app":Ljava/lang/String;
    .end local v7    # "theme_mode":I
    :cond_0
    :goto_0
    return-void

    .line 444
    .restart local v3    # "ivBgColor":Lcom/lsec/core/frame/ctrl/JView;
    .restart local v4    # "jsonApp":Lorg/json/JSONObject;
    .restart local v6    # "theme_app":Ljava/lang/String;
    .restart local v7    # "theme_mode":I
    :cond_1
    const/4 v8, 0x2

    new-array v1, v8, [I

    const/4 v8, 0x0

    const v9, -0xefeff0

    aput v9, v1, v8

    const/4 v8, 0x1

    sget v9, Lcom/syu/bt/App_Bt;->color_set:I

    aput v9, v1, v8

    .line 445
    .local v1, "colors":[I
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v8, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v0, v8, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 450
    .local v0, "bg":Landroid/graphics/drawable/GradientDrawable;
    if-eqz v3, :cond_0

    .line 451
    invoke-virtual {v3, v0}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 454
    .end local v0    # "bg":Landroid/graphics/drawable/GradientDrawable;
    .end local v1    # "colors":[I
    .end local v4    # "jsonApp":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 456
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 459
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v6    # "theme_app":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v3}, Lcom/syu/bt/Act_Bt;->setBgColorDef(Lcom/lsec/core/frame/ctrl/JView;)V

    goto :goto_0
.end method

.method public setBgColorDef(Lcom/lsec/core/frame/ctrl/JView;)V
    .locals 4
    .param p1, "ivBgColor"    # Lcom/lsec/core/frame/ctrl/JView;

    .prologue
    .line 468
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v1, "bt_bk_def"

    iget-object v2, p0, Lcom/syu/bt/Act_Bt;->mDrawables:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/syu/bt/Act_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 472
    return-void
.end method

.method public setDayOrNight(I)V
    .locals 16
    .param p1, "value"    # I

    .prologue
    .line 2391
    sget-object v12, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v13, "TZY_NEW"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2392
    sget-object v12, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    const-string v13, "UI7"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2393
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v13, 0x2711

    invoke-virtual {v12, v13}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    .line 2394
    .local v1, "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v1, :cond_0

    .line 2395
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v12

    invoke-virtual {v12}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v12

    const/4 v13, 0x0

    aget v12, v12, v13

    const/16 v13, 0x7d0

    if-ne v12, v13, :cond_10

    .line 2396
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v12

    iget-object v13, v12, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    if-lez p1, :cond_f

    const-string v12, "night_main2000_bk"

    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/syu/bt/Act_Bt;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/syu/bt/Act_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v13, v12, v14, v15}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/lsec/core/frame/ctrl/JPage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2402
    .end local v1    # "page":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_0
    :goto_1
    sget-object v12, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v13, "YL_3"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 2403
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v13, 0x2711

    invoke-virtual {v12, v13}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    .line 2404
    .restart local v1    # "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v1, :cond_1

    .line 2405
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v12

    iget-object v13, v12, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    if-lez p1, :cond_12

    const-string v12, "night_main_bk"

    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/syu/bt/Act_Bt;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/syu/bt/Act_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v13, v12, v14, v15}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/lsec/core/frame/ctrl/JPage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2408
    .end local v1    # "page":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_1
    sget-object v12, Lcom/syu/bt/App_Bt;->mUi_Name:Ljava/lang/String;

    const-string v13, "yl_dn1"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 2410
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v13, 0x2711

    invoke-virtual {v12, v13}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    .line 2411
    .restart local v1    # "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v1, :cond_2

    .line 2412
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v12

    iget-object v13, v12, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    if-lez p1, :cond_13

    const-string v12, "night_bt_bk"

    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/syu/bt/Act_Bt;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/syu/bt/Act_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v13, v12, v14, v15}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/lsec/core/frame/ctrl/JPage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2414
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/Act_Bt;->getPageMenu()Lcom/syu/bt/page/Page_Menu;

    move-result-object v9

    .line 2415
    .local v9, "page_Menu":Lcom/syu/bt/page/Page_Menu;
    if-eqz v9, :cond_3

    .line 2416
    move/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/syu/bt/page/Page_Menu;->setDayOrNight(I)V

    .line 2419
    .end local v1    # "page":Lcom/lsec/core/frame/ctrl/JPage;
    .end local v9    # "page_Menu":Lcom/syu/bt/page/Page_Menu;
    :cond_3
    const-string v12, "night"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, " 00 setDayOrNight App_Bt.mStrCustomer = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    sget-object v12, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v13, "SYU-XN"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 2423
    const-string v12, "night"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, " 11 setDayOrNight App_Bt.mStrCustomer = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v13, 0x2711

    invoke-virtual {v12, v13}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    .line 2425
    .restart local v1    # "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v1, :cond_4

    .line 2426
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v12

    iget-object v13, v12, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    if-lez p1, :cond_14

    const-string v12, "night_main_bk"

    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/syu/bt/Act_Bt;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/syu/bt/Act_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v13, v12, v14, v15}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/lsec/core/frame/ctrl/JPage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2428
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/Act_Bt;->getPageMenu()Lcom/syu/bt/page/Page_Menu;

    move-result-object v9

    .line 2429
    .restart local v9    # "page_Menu":Lcom/syu/bt/page/Page_Menu;
    if-eqz v9, :cond_5

    .line 2430
    move/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/syu/bt/page/Page_Menu;->setDayOrNight(I)V

    .line 2433
    .end local v1    # "page":Lcom/lsec/core/frame/ctrl/JPage;
    .end local v9    # "page_Menu":Lcom/syu/bt/page/Page_Menu;
    :cond_5
    const-string v12, "bug"

    const-string v13, " 11 setDayOrNight "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    sget-object v12, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v13, "BT_XYQ_HB"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 2436
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v13, 0x2711

    invoke-virtual {v12, v13}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    .line 2437
    .restart local v1    # "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v1, :cond_6

    .line 2438
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v12

    iget-object v13, v12, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    if-lez p1, :cond_15

    const-string v12, "night_bt_bk"

    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/syu/bt/Act_Bt;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/syu/bt/Act_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v13, v12, v14, v15}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/lsec/core/frame/ctrl/JPage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2440
    const-string v12, "bug"

    const-string v13, " 22 setDayOrNight "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    .end local v1    # "page":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/Act_Bt;->getPageDial()Lcom/syu/bt/page/Page_Dial;

    move-result-object v7

    .line 2445
    .local v7, "page_Dial":Lcom/syu/bt/page/Page_Dial;
    if-eqz v7, :cond_7

    .line 2446
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/syu/bt/page/Page_Dial;->setDayOrNight(I)V

    .line 2448
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/Act_Bt;->getPageContact()Lcom/syu/bt/page/Page_Contact;

    move-result-object v6

    .line 2449
    .local v6, "page_Contact":Lcom/syu/bt/page/Page_Contact;
    if-eqz v6, :cond_8

    .line 2450
    move/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/syu/bt/page/Page_Contact;->setDayOrNight(I)V

    .line 2452
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/Act_Bt;->getPagePair()Lcom/syu/bt/page/Page_Pair;

    move-result-object v10

    .line 2453
    .local v10, "page_Pair":Lcom/syu/bt/page/Page_Pair;
    if-eqz v10, :cond_9

    .line 2454
    move/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/syu/bt/page/Page_Pair;->setDayOrNight(I)V

    .line 2456
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/Act_Bt;->getPageSet()Lcom/syu/bt/page/Page_Set;

    move-result-object v11

    .line 2457
    .local v11, "page_Set":Lcom/syu/bt/page/Page_Set;
    if-eqz v11, :cond_a

    .line 2458
    move/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/syu/bt/page/Page_Set;->setDayOrNight(I)V

    .line 2460
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/Act_Bt;->getPageHistory()Lcom/syu/bt/page/Page_History;

    move-result-object v8

    .line 2461
    .local v8, "page_History":Lcom/syu/bt/page/Page_History;
    if-eqz v8, :cond_b

    .line 2462
    move/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/syu/bt/page/Page_History;->setDayOrNight(I)V

    .line 2464
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v14, 0x271a

    invoke-virtual {v12, v13, v14}, Lcom/lsec/core/frame/app/MyActivity;->getPageNotify(Lcom/lsec/core/frame/app/MyUi;I)Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v5

    check-cast v5, Lcom/syu/bt/page/Page_Av;

    .line 2465
    .local v5, "page_Av":Lcom/syu/bt/page/Page_Av;
    if-eqz v5, :cond_c

    .line 2466
    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/syu/bt/page/Page_Av;->setDayOrNight(I)V

    .line 2469
    :cond_c
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v12

    iget-boolean v12, v12, Lcom/syu/bt/App_Bt;->bPopBtShow:Z

    if-eqz v12, :cond_e

    .line 2471
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v12

    iget-object v12, v12, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    .line 2472
    .local v3, "pagePop":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v3, :cond_d

    .line 2474
    invoke-virtual {v3}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v4

    check-cast v4, Lcom/syu/bt/page/pop/Page_PopBt;

    .line 2475
    .local v4, "pagePopBt":Lcom/syu/bt/page/pop/Page_PopBt;
    if-eqz v4, :cond_d

    .line 2478
    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/syu/bt/page/pop/Page_PopBt;->setDayOrNight(I)V

    .line 2482
    .end local v4    # "pagePopBt":Lcom/syu/bt/page/pop/Page_PopBt;
    :cond_d
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v12

    iget-object v12, v12, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    .line 2483
    .local v2, "pageNum":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v2, :cond_e

    .line 2485
    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v4

    check-cast v4, Lcom/syu/bt/page/pop/Page_PopBt;

    .line 2486
    .restart local v4    # "pagePopBt":Lcom/syu/bt/page/pop/Page_PopBt;
    if-eqz v4, :cond_e

    .line 2489
    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/syu/bt/page/pop/Page_PopBt;->setDayOrNight(I)V

    .line 2495
    .end local v2    # "pageNum":Lcom/lsec/core/frame/ctrl/JPage;
    .end local v3    # "pagePop":Lcom/lsec/core/frame/ctrl/JPage;
    .end local v4    # "pagePopBt":Lcom/syu/bt/page/pop/Page_PopBt;
    :cond_e
    return-void

    .line 2396
    .end local v5    # "page_Av":Lcom/syu/bt/page/Page_Av;
    .end local v6    # "page_Contact":Lcom/syu/bt/page/Page_Contact;
    .end local v7    # "page_Dial":Lcom/syu/bt/page/Page_Dial;
    .end local v8    # "page_History":Lcom/syu/bt/page/Page_History;
    .end local v10    # "page_Pair":Lcom/syu/bt/page/Page_Pair;
    .end local v11    # "page_Set":Lcom/syu/bt/page/Page_Set;
    .restart local v1    # "page":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_f
    const-string v12, "main2000_bk"

    goto/16 :goto_0

    .line 2398
    :cond_10
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v12

    iget-object v13, v12, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    if-lez p1, :cond_11

    const-string v12, "night_main_bk"

    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/syu/bt/Act_Bt;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/syu/bt/Act_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v13, v12, v14, v15}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/lsec/core/frame/ctrl/JPage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_11
    const-string v12, "main_bk"

    goto :goto_6

    .line 2405
    :cond_12
    const-string v12, "main_bk"

    goto/16 :goto_2

    .line 2412
    :cond_13
    const-string v12, "bt_bk"

    goto/16 :goto_3

    .line 2426
    :cond_14
    const-string v12, "main_bk"

    goto/16 :goto_4

    .line 2438
    :cond_15
    const-string v12, "bt_bk"

    goto/16 :goto_5
.end method

.method public setMenuBtnEnable(II)V
    .locals 8
    .param p1, "pageid"    # I
    .param p2, "value"    # I

    .prologue
    const/16 v7, 0x2745

    const/16 v3, 0x2744

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1615
    const/4 v0, 0x0

    .line 1616
    .local v0, "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    const/4 v1, 0x0

    .line 1636
    .local v1, "page":Lcom/lsec/core/frame/ctrl/JPage;
    iget-object v2, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v2, v2, Lcom/lsec/core/frame/app/MyUi;->mPages:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "page":Lcom/lsec/core/frame/ctrl/JPage;
    check-cast v1, Lcom/lsec/core/frame/ctrl/JPage;

    .line 1637
    .restart local v1    # "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v1, :cond_3

    .line 1638
    sparse-switch p2, :sswitch_data_0

    .line 1659
    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .line 1658
    .end local v0    # "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1660
    .restart local v0    # "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v0, :cond_0

    .line 1661
    invoke-virtual {v0, v5}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    .line 1663
    :cond_0
    invoke-virtual {v1, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .line 1662
    .end local v0    # "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1664
    .restart local v0    # "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v0, :cond_1

    .line 1665
    invoke-virtual {v0, v5}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    .line 1667
    :cond_1
    const/16 v2, 0x2746

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .line 1666
    .end local v0    # "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1668
    .restart local v0    # "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v0, :cond_2

    .line 1669
    invoke-virtual {v0, v5}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    .line 1671
    :cond_2
    sget v2, Lcom/syu/bt/App_Bt;->sPage:I

    sget v3, Lcom/syu/bt/App_Bt;->sPage:I

    invoke-virtual {p0, v2, v3, v6, v5}, Lcom/syu/bt/Act_Bt;->updateMenuSelected(IIIZ)V

    .line 1675
    :cond_3
    :goto_0
    return-void

    .line 1643
    :sswitch_0
    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .line 1642
    .end local v0    # "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1644
    .restart local v0    # "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v0, :cond_4

    .line 1645
    invoke-virtual {v0, v4}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    .line 1647
    :cond_4
    invoke-virtual {v1, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .line 1646
    .end local v0    # "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1648
    .restart local v0    # "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v0, :cond_5

    .line 1649
    invoke-virtual {v0, v4}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    .line 1651
    :cond_5
    const/16 v2, 0x2746

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .line 1650
    .end local v0    # "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1652
    .restart local v0    # "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v0, :cond_6

    .line 1653
    invoke-virtual {v0, v4}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    .line 1655
    :cond_6
    sget v2, Lcom/syu/bt/App_Bt;->sPage:I

    sget v3, Lcom/syu/bt/App_Bt;->sPage:I

    invoke-virtual {p0, v2, v3, v6, v4}, Lcom/syu/bt/Act_Bt;->updateMenuSelected(IIIZ)V

    goto :goto_0

    .line 1638
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public setProperty(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 634
    return-void
.end method

.method public setSwitch(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 2241
    invoke-virtual {p0}, Lcom/syu/bt/Act_Bt;->getPageSet()Lcom/syu/bt/page/Page_Set;

    move-result-object v0

    .line 2242
    .local v0, "pageSet":Lcom/syu/bt/page/Page_Set;
    if-eqz v0, :cond_0

    .line 2243
    invoke-virtual {v0, p1}, Lcom/syu/bt/page/Page_Set;->setSwitch(Z)V

    .line 2244
    :cond_0
    return-void
.end method

.method public showPopAIQR()V
    .locals 5

    .prologue
    .line 1464
    const-string v1, "hy"

    const-string v2, " 11 Act_Bt Page_PopAIQR "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x2726

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getPopDlg(ILjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    .line 1467
    .local v0, "popDlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 1468
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1470
    :cond_0
    return-void
.end method

.method public showPopAIQR2()V
    .locals 5

    .prologue
    .line 1484
    const-string v1, "hy"

    const-string v2, " 11 Act_Bt Page_PopAIQR2 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x2727

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getPopDlg(ILjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    .line 1487
    .local v0, "popDlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 1488
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1490
    :cond_0
    return-void
.end method

.method public showPopCODEC()V
    .locals 5

    .prologue
    .line 1512
    const-string v1, "hy"

    const-string v2, " 11 Act_Bt showPopCODEC "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x272f

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getPopDlg(ILjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    .line 1515
    .local v0, "popDlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 1516
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1518
    :cond_0
    return-void
.end method

.method public showPopHySet()V
    .locals 5

    .prologue
    .line 1431
    const-string v1, "hy"

    const-string v2, " 11 Act_Bt showPopHySet "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x2724

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getPopDlg(ILjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    .line 1434
    .local v0, "popDlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 1435
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1437
    :cond_0
    return-void
.end method

.method public showPopHySetAI()V
    .locals 5

    .prologue
    .line 1448
    const-string v1, "hy"

    const-string v2, " 11 Act_Bt showPopHySetAI "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x2725

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getPopDlg(ILjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    .line 1451
    .local v0, "popDlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 1452
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1454
    :cond_0
    return-void
.end method

.method public showPopMSBC()V
    .locals 5

    .prologue
    .line 1503
    const-string v1, "hy"

    const-string v2, " 11 Act_Bt showPopMSBC "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x272e

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getPopDlg(ILjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    .line 1506
    .local v0, "popDlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 1507
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1509
    :cond_0
    return-void
.end method

.method public showPostLoading(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1873
    const/4 v0, 0x0

    new-instance v1, Lcom/syu/bt/Act_Bt$RunnableShowLoading;

    invoke-direct {v1, p0, p1}, Lcom/syu/bt/Act_Bt$RunnableShowLoading;-><init>(Lcom/syu/bt/Act_Bt;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 1874
    return-void
.end method

.method public showProgressIpPhoneDlg()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1590
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->mProgressIpPhoneDlg:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 1591
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/syu/bt/Act_Bt;->mProgressIpPhoneDlg:Landroid/app/ProgressDialog;

    .line 1593
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->mProgressIpPhoneDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1600
    :goto_0
    return-void

    .line 1596
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->mProgressIpPhoneDlg:Landroid/app/ProgressDialog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1597
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->mProgressIpPhoneDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1598
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->mProgressIpPhoneDlg:Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "ipphone_dailing"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1599
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->mProgressIpPhoneDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method public showSystemUI()V
    .locals 2

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    if-eqz v0, :cond_0

    .line 1356
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1357
    :cond_0
    return-void
.end method

.method public switch2DialWhenHalfScreen()V
    .locals 3

    .prologue
    .line 1877
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    sget-boolean v1, Lcom/syu/bt/App_Bt;->bEnableHalfScreen:Z

    if-eqz v1, :cond_0

    .line 1878
    invoke-virtual {p0}, Lcom/syu/bt/Act_Bt;->isHalf()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1879
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v1, v1, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v1, :cond_0

    .line 1880
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v1, v1, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JPage;->getId()I

    move-result v0

    .line 1881
    .local v0, "idPage":I
    sparse-switch v0, :sswitch_data_0

    .line 1890
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    const/16 v2, 0x2713

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    .line 1896
    .end local v0    # "idPage":I
    :cond_0
    :goto_0
    return-void

    .line 1883
    .restart local v0    # "idPage":I
    :sswitch_0
    const-string v1, "HJT"

    const-string v2, "H"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    const/16 v2, 0x271a

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    goto :goto_0

    .line 1887
    :sswitch_1
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    const/16 v2, 0x2730

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    goto :goto_0

    .line 1881
    nop

    :sswitch_data_0
    .sparse-switch
        0x271a -> :sswitch_0
        0x2730 -> :sswitch_1
    .end sparse-switch
.end method

.method public updateBorderText(Lcom/lsec/core/frame/ctrl/JButton;Z)V
    .locals 5
    .param p1, "btnMenu"    # Lcom/lsec/core/frame/ctrl/JButton;
    .param p2, "bSelected"    # Z

    .prologue
    .line 730
    const/4 v0, 0x0

    .line 731
    .local v0, "doBack":Z
    sget-object v3, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v4, "zhtd_aodi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 732
    const/4 v0, 0x1

    .line 734
    :cond_0
    sget-object v3, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 735
    sget-object v3, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    const-string v4, "ui1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v4, "bba"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 736
    const/4 v0, 0x1

    .line 740
    :cond_1
    if-eqz p1, :cond_2

    if-eqz v0, :cond_3

    .line 775
    :cond_2
    :goto_0
    return-void

    .line 743
    :cond_3
    const/4 v2, 0x0

    .line 744
    .local v2, "text":Lcom/syu/bt/ctrl/BorderTextView;
    iget-object v3, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v3, v3, Lcom/lsec/core/frame/app/MyUi;->mPages:Landroid/util/SparseArray;

    const/16 v4, 0x2712

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JPage;

    .line 745
    .local v1, "page":Lcom/lsec/core/frame/ctrl/JPage;
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JButton;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 772
    :cond_4
    :goto_1
    :pswitch_0
    if-eqz v2, :cond_2

    .line 773
    invoke-virtual {v2, p2}, Lcom/syu/bt/ctrl/BorderTextView;->resetText(Z)V

    goto :goto_0

    .line 747
    :pswitch_1
    if-eqz v1, :cond_4

    .line 748
    const/16 v3, 0x2981

    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "text":Lcom/syu/bt/ctrl/BorderTextView;
    check-cast v2, Lcom/syu/bt/ctrl/BorderTextView;

    .line 749
    .restart local v2    # "text":Lcom/syu/bt/ctrl/BorderTextView;
    goto :goto_1

    .line 751
    :pswitch_2
    if-eqz v1, :cond_4

    .line 752
    const/16 v3, 0x2982

    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "text":Lcom/syu/bt/ctrl/BorderTextView;
    check-cast v2, Lcom/syu/bt/ctrl/BorderTextView;

    .line 753
    .restart local v2    # "text":Lcom/syu/bt/ctrl/BorderTextView;
    goto :goto_1

    .line 755
    :pswitch_3
    if-eqz v1, :cond_4

    .line 756
    const/16 v3, 0x2983

    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "text":Lcom/syu/bt/ctrl/BorderTextView;
    check-cast v2, Lcom/syu/bt/ctrl/BorderTextView;

    .line 757
    .restart local v2    # "text":Lcom/syu/bt/ctrl/BorderTextView;
    goto :goto_1

    .line 759
    :pswitch_4
    if-eqz v1, :cond_4

    .line 760
    const/16 v3, 0x2984

    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "text":Lcom/syu/bt/ctrl/BorderTextView;
    check-cast v2, Lcom/syu/bt/ctrl/BorderTextView;

    .line 761
    .restart local v2    # "text":Lcom/syu/bt/ctrl/BorderTextView;
    goto :goto_1

    .line 763
    :pswitch_5
    if-eqz v1, :cond_4

    .line 764
    const/16 v3, 0x2985

    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "text":Lcom/syu/bt/ctrl/BorderTextView;
    check-cast v2, Lcom/syu/bt/ctrl/BorderTextView;

    .line 765
    .restart local v2    # "text":Lcom/syu/bt/ctrl/BorderTextView;
    goto :goto_1

    .line 767
    :pswitch_6
    if-eqz v1, :cond_4

    .line 768
    const/16 v3, 0x2986

    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "text":Lcom/syu/bt/ctrl/BorderTextView;
    check-cast v2, Lcom/syu/bt/ctrl/BorderTextView;

    .restart local v2    # "text":Lcom/syu/bt/ctrl/BorderTextView;
    goto :goto_1

    .line 745
    :pswitch_data_0
    .packed-switch 0x2744
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public updateBtNameAndPinTip()V
    .locals 5

    .prologue
    .line 2526
    iget-object v2, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v3, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v4, 0x271a

    invoke-virtual {v2, v3, v4}, Lcom/lsec/core/frame/app/MyActivity;->getPageNotify(Lcom/lsec/core/frame/app/MyUi;I)Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/page/Page_Av;

    .line 2527
    .local v0, "page_Av":Lcom/syu/bt/page/Page_Av;
    if-eqz v0, :cond_0

    .line 2528
    invoke-virtual {v0}, Lcom/syu/bt/page/Page_Av;->updateBtNameAndPinTip()V

    .line 2531
    :cond_0
    invoke-virtual {p0}, Lcom/syu/bt/Act_Bt;->getPageDial()Lcom/syu/bt/page/Page_Dial;

    move-result-object v1

    .line 2532
    .local v1, "page_Dial":Lcom/syu/bt/page/Page_Dial;
    if-eqz v1, :cond_1

    .line 2533
    invoke-virtual {v1}, Lcom/syu/bt/page/Page_Dial;->updateBtNameAndPinTip()V

    .line 2535
    :cond_1
    return-void
.end method

.method public updateBtnFocus(Lcom/lsec/core/frame/ctrl/JButton;IZ)V
    .locals 3
    .param p1, "btnMenu"    # Lcom/lsec/core/frame/ctrl/JButton;
    .param p2, "indexLastFocus"    # I
    .param p3, "bSelected"    # Z

    .prologue
    const/4 v2, 0x0

    .line 778
    if-ltz p2, :cond_0

    const/16 v0, 0x8

    if-lt p2, v0, :cond_1

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    if-eqz p1, :cond_0

    .line 783
    if-eqz p3, :cond_3

    .line 784
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->mBtnFocusLast:[Lcom/lsec/core/frame/ctrl/JButton;

    aget-object v0, v0, p2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->mBtnFocusLast:[Lcom/lsec/core/frame/ctrl/JButton;

    aget-object v0, v0, p2

    if-eq v0, p1, :cond_2

    .line 786
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->mBtnFocusLast:[Lcom/lsec/core/frame/ctrl/JButton;

    aget-object v0, v0, p2

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 787
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->mBtnFocusLast:[Lcom/lsec/core/frame/ctrl/JButton;

    aget-object v0, v0, p2

    invoke-virtual {p0, v0, v2}, Lcom/syu/bt/Act_Bt;->updateBorderText(Lcom/lsec/core/frame/ctrl/JButton;Z)V

    .line 788
    sget-object v0, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v1, "changecolor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 789
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->mBtnFocusLast:[Lcom/lsec/core/frame/ctrl/JButton;

    aget-object v0, v0, p2

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setSelected(Z)V

    .line 793
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/Act_Bt;->mBtnFocusLast:[Lcom/lsec/core/frame/ctrl/JButton;

    aput-object p1, v0, p2

    .line 796
    :cond_3
    invoke-virtual {p1, p3}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 797
    invoke-virtual {p0, p1, p3}, Lcom/syu/bt/Act_Bt;->updateBorderText(Lcom/lsec/core/frame/ctrl/JButton;Z)V

    .line 798
    sget-object v0, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v1, "changecolor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    invoke-virtual {p1, p3}, Lcom/lsec/core/frame/ctrl/JButton;->setSelected(Z)V

    goto :goto_0
.end method

.method public updateCarplayAuto(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2512
    invoke-virtual {p0}, Lcom/syu/bt/Act_Bt;->getPagePair()Lcom/syu/bt/page/Page_Pair;

    move-result-object v0

    .line 2513
    .local v0, "page_Pair":Lcom/syu/bt/page/Page_Pair;
    if-eqz v0, :cond_0

    .line 2514
    if-lez p1, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Lcom/syu/bt/page/Page_Pair;->updateCarplayAuto(Z)V

    .line 2517
    :cond_0
    invoke-virtual {p0}, Lcom/syu/bt/Act_Bt;->getPageSet()Lcom/syu/bt/page/Page_Set;

    move-result-object v1

    .line 2518
    .local v1, "page_Set":Lcom/syu/bt/page/Page_Set;
    if-eqz v1, :cond_1

    .line 2519
    if-lez p1, :cond_3

    :goto_1
    invoke-virtual {v1, v3}, Lcom/syu/bt/page/Page_Set;->updateCarplayAuto(Z)V

    .line 2520
    :cond_1
    return-void

    .end local v1    # "page_Set":Lcom/syu/bt/page/Page_Set;
    :cond_2
    move v2, v4

    .line 2514
    goto :goto_0

    .restart local v1    # "page_Set":Lcom/syu/bt/page/Page_Set;
    :cond_3
    move v3, v4

    .line 2519
    goto :goto_1
.end method

.method public updateMainSelected(IZ)V
    .locals 4
    .param p1, "idPage"    # I
    .param p2, "bSelected"    # Z

    .prologue
    .line 805
    iget-object v2, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v3, 0x2711

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    .line 806
    .local v1, "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v1, :cond_0

    .line 807
    const/4 v0, 0x0

    .line 808
    .local v0, "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    const/16 v2, 0x271a

    if-eq p1, v2, :cond_1

    .line 809
    const/16 v2, 0x273b

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 813
    .restart local v0    # "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, p2}, Lcom/syu/bt/Act_Bt;->updateBtnFocus(Lcom/lsec/core/frame/ctrl/JButton;IZ)V

    .line 815
    .end local v0    # "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    :cond_0
    invoke-static {}, Lcom/myspec/MyClass;->getInstance()Lcom/myspec/MyClass;

    move-result-object v2

    invoke-virtual {v2}, Lcom/myspec/MyClass;->initCust()V

    .line 816
    return-void

    .line 811
    .restart local v0    # "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    :cond_1
    const/16 v2, 0x273c

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .restart local v0    # "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    goto :goto_0
.end method

.method public updateMenuSelected(IIIZ)V
    .locals 5
    .param p1, "idPage"    # I
    .param p2, "idPageSel"    # I
    .param p3, "indexFocus"    # I
    .param p4, "bSelected"    # Z

    .prologue
    .line 826
    const-string v2, "gdy9"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 002 updateMenuSelected mRunnableGoPage idPageSel:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-object v2, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v2, p1}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    .line 828
    .local v1, "page":Lcom/lsec/core/frame/ctrl/JPage;
    invoke-virtual {p0, v1, p2}, Lcom/syu/bt/Act_Bt;->getBtnMenuFocus(Lcom/lsec/core/frame/ctrl/JPage;I)Lcom/lsec/core/frame/ctrl/JButton;

    move-result-object v0

    .line 829
    .local v0, "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    invoke-virtual {p0, v0, p3, p4}, Lcom/syu/bt/Act_Bt;->updateBtnFocus(Lcom/lsec/core/frame/ctrl/JButton;IZ)V

    .line 830
    invoke-virtual {p0, v1, p2}, Lcom/syu/bt/Act_Bt;->getMenuViewFocus(Lcom/lsec/core/frame/ctrl/JPage;I)V

    .line 831
    return-void
.end method

.method public updateMenuSelected_New(IIIIZ)V
    .locals 5
    .param p1, "idPage"    # I
    .param p2, "idPageSel"    # I
    .param p3, "idPageSel_New"    # I
    .param p4, "indexFocus"    # I
    .param p5, "bSelected"    # Z

    .prologue
    .line 819
    iget-object v2, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v2, v2, Lcom/lsec/core/frame/app/MyUi;->mPages:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JPage;

    .line 820
    .local v1, "page":Lcom/lsec/core/frame/ctrl/JPage;
    const-string v2, "gdy9"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 001 updateMenuSelected_New mRunnableGoPage idPageSel:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    invoke-virtual {p0, v1, p2}, Lcom/syu/bt/Act_Bt;->getBtnMenuFocus(Lcom/lsec/core/frame/ctrl/JPage;I)Lcom/lsec/core/frame/ctrl/JButton;

    move-result-object v0

    .line 822
    .local v0, "btnMenu":Lcom/lsec/core/frame/ctrl/JButton;
    invoke-virtual {p0, v0, p4, p5}, Lcom/syu/bt/Act_Bt;->updateBtnFocus(Lcom/lsec/core/frame/ctrl/JButton;IZ)V

    .line 823
    invoke-virtual {p0, v1, p3}, Lcom/syu/bt/Act_Bt;->getMenuViewFocus(Lcom/lsec/core/frame/ctrl/JPage;I)V

    .line 824
    return-void
.end method

.method public updatePhoneBattery(I)V
    .locals 4
    .param p1, "level"    # I

    .prologue
    .line 2383
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v2, p0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v3, 0x271a

    invoke-virtual {v1, v2, v3}, Lcom/lsec/core/frame/app/MyActivity;->getPageNotify(Lcom/lsec/core/frame/app/MyUi;I)Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/page/Page_Av;

    .line 2384
    .local v0, "page_Av":Lcom/syu/bt/page/Page_Av;
    if-eqz v0, :cond_0

    .line 2385
    invoke-virtual {v0, p1}, Lcom/syu/bt/page/Page_Av;->updatePhoneBattery(I)V

    .line 2386
    :cond_0
    return-void
.end method

.method public updatePhoneName()V
    .locals 3

    .prologue
    .line 1825
    invoke-virtual {p0}, Lcom/syu/bt/Act_Bt;->getPageDial()Lcom/syu/bt/page/Page_Dial;

    move-result-object v2

    .line 1826
    .local v2, "page_Dial":Lcom/syu/bt/page/Page_Dial;
    if-eqz v2, :cond_0

    .line 1827
    invoke-virtual {v2}, Lcom/syu/bt/page/Page_Dial;->updatePhoneName()V

    .line 1829
    :cond_0
    invoke-virtual {p0}, Lcom/syu/bt/Act_Bt;->getPageCallin()Lcom/syu/bt/page/Page_Callin;

    move-result-object v0

    .line 1830
    .local v0, "page_Callin":Lcom/syu/bt/page/Page_Callin;
    if-eqz v0, :cond_1

    .line 1831
    invoke-virtual {v0}, Lcom/syu/bt/page/Page_Callin;->updatePhoneName()V

    .line 1833
    :cond_1
    invoke-virtual {p0}, Lcom/syu/bt/Act_Bt;->getPageCallin_HalfScreen()Lcom/syu/bt/page/Page_Callin_HalfScreen;

    move-result-object v1

    .line 1834
    .local v1, "page_Callin_HalfScreen":Lcom/syu/bt/page/Page_Callin_HalfScreen;
    if-eqz v1, :cond_2

    .line 1835
    invoke-virtual {v1}, Lcom/syu/bt/page/Page_Callin_HalfScreen;->updatePhoneName()V

    .line 1836
    :cond_2
    return-void
.end method

.method public updatePin(Ljava/lang/String;)V
    .locals 1
    .param p1, "strPin"    # Ljava/lang/String;

    .prologue
    .line 2248
    invoke-virtual {p0}, Lcom/syu/bt/Act_Bt;->getPageSet()Lcom/syu/bt/page/Page_Set;

    move-result-object v0

    .line 2249
    .local v0, "pageSet":Lcom/syu/bt/page/Page_Set;
    if-eqz v0, :cond_0

    .line 2250
    invoke-virtual {v0, p1}, Lcom/syu/bt/page/Page_Set;->updatePin(Ljava/lang/String;)V

    .line 2251
    :cond_0
    return-void
.end method

.method public updateShowDial()V
    .locals 1

    .prologue
    .line 2375
    invoke-virtual {p0}, Lcom/syu/bt/Act_Bt;->getPageDial()Lcom/syu/bt/page/Page_Dial;

    move-result-object v0

    .line 2376
    .local v0, "page_Dial":Lcom/syu/bt/page/Page_Dial;
    if-eqz v0, :cond_0

    .line 2377
    invoke-virtual {v0}, Lcom/syu/bt/page/Page_Dial;->updateShowDial()V

    .line 2378
    :cond_0
    return-void
.end method

.method public updateSimLayout(I)V
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 1689
    invoke-virtual {p0}, Lcom/syu/bt/Act_Bt;->getPageDial()Lcom/syu/bt/page/Page_Dial;

    move-result-object v0

    .line 1690
    .local v0, "page_Dial":Lcom/syu/bt/page/Page_Dial;
    if-eqz v0, :cond_0

    .line 1691
    invoke-virtual {v0, p1}, Lcom/syu/bt/page/Page_Dial;->updateSimLayout(I)V

    .line 1692
    :cond_0
    return-void
.end method

.method public updateSoundAmp()V
    .locals 2

    .prologue
    .line 2208
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v1, v1, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v1, :cond_0

    .line 2209
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v1, v1, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    .line 2210
    .local v0, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    instance-of v1, v0, Lcom/syu/bt/page/Page_Av;

    if-eqz v1, :cond_0

    .line 2211
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-boolean v1, v1, Lcom/lsec/core/frame/app/MyActivity;->bTop:Z

    if-eqz v1, :cond_0

    .line 2212
    check-cast v0, Lcom/syu/bt/page/Page_Av;

    .end local v0    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    invoke-virtual {v0}, Lcom/syu/bt/page/Page_Av;->updateSoundAmp()V

    .line 2215
    :cond_0
    return-void
.end method

.method public updateSoundLoud()V
    .locals 2

    .prologue
    .line 2219
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v1, v1, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v1, :cond_0

    .line 2220
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v1, v1, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    .line 2221
    .local v0, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    instance-of v1, v0, Lcom/syu/bt/page/Page_Av;

    if-eqz v1, :cond_0

    .line 2222
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-boolean v1, v1, Lcom/lsec/core/frame/app/MyActivity;->bTop:Z

    if-eqz v1, :cond_0

    .line 2223
    check-cast v0, Lcom/syu/bt/page/Page_Av;

    .end local v0    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    invoke-virtual {v0}, Lcom/syu/bt/page/Page_Av;->updateSoundLoud()V

    .line 2226
    :cond_0
    return-void
.end method

.method public updateSoundMode()V
    .locals 2

    .prologue
    .line 2230
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v1, v1, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v1, :cond_0

    .line 2231
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v1, v1, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    .line 2232
    .local v0, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    instance-of v1, v0, Lcom/syu/bt/page/Page_Av;

    if-eqz v1, :cond_0

    .line 2233
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-boolean v1, v1, Lcom/lsec/core/frame/app/MyActivity;->bTop:Z

    if-eqz v1, :cond_0

    .line 2234
    check-cast v0, Lcom/syu/bt/page/Page_Av;

    .end local v0    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    invoke-virtual {v0}, Lcom/syu/bt/page/Page_Av;->updateSoundMode()V

    .line 2237
    :cond_0
    return-void
.end method

.method public updateSoundVol()V
    .locals 1

    .prologue
    .line 2274
    invoke-virtual {p0}, Lcom/syu/bt/Act_Bt;->getPageDial()Lcom/syu/bt/page/Page_Dial;

    move-result-object v0

    .line 2275
    .local v0, "pageDial":Lcom/syu/bt/page/Page_Dial;
    if-eqz v0, :cond_0

    .line 2276
    invoke-virtual {v0}, Lcom/syu/bt/page/Page_Dial;->updateSoundVol()V

    .line 2277
    :cond_0
    return-void
.end method

.method public updateSystemTime()V
    .locals 2

    .prologue
    .line 2262
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v1, v1, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v1, :cond_0

    .line 2263
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v1, v1, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    .line 2264
    .local v0, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    iget-object v1, p0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-boolean v1, v1, Lcom/lsec/core/frame/app/MyActivity;->bTop:Z

    if-eqz v1, :cond_0

    .line 2265
    instance-of v1, v0, Lcom/syu/bt/page/Page_Dial;

    if-eqz v1, :cond_0

    .line 2266
    check-cast v0, Lcom/syu/bt/page/Page_Dial;

    .end local v0    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    invoke-virtual {v0}, Lcom/syu/bt/page/Page_Dial;->updateSystemTime()V

    .line 2269
    :cond_0
    return-void
.end method

.method public voiceSearchContact()V
    .locals 1

    .prologue
    .line 2255
    invoke-virtual {p0}, Lcom/syu/bt/Act_Bt;->getPageContact()Lcom/syu/bt/page/Page_Contact;

    move-result-object v0

    .line 2256
    .local v0, "pageContact":Lcom/syu/bt/page/Page_Contact;
    if-eqz v0, :cond_0

    .line 2257
    invoke-virtual {v0}, Lcom/syu/bt/page/Page_Contact;->voiceSearchContact()V

    .line 2258
    :cond_0
    return-void
.end method
