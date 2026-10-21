.class public Lcom/syu/bt/page/Page_Contact;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_Contact.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/bt/page/Page_Contact$MyTextWatcher;
    }
.end annotation


# static fields
.field public static bDrawListAlbum:Z

.field private static lastDownloadTime:J

.field public static mClick:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final mStrT9:[Ljava/lang/String;

.field public static strSearch:Ljava/lang/String;


# instance fields
.field public actBt:Lcom/syu/bt/Act_Bt;

.field private bRoolKey:Z

.field bTop:Z

.field color_day:[I

.field color_night:[I

.field public conPhone_id:I

.field editFocus:Z

.field public key_id:I

.field public key_id_p:I

.field mContactsObserver:Landroid/database/ContentObserver;

.field public mDownloading:Z

.field public mEditSearch:Landroid/widget/EditText;

.field public mGridClickDial:Z

.field public mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

.field public mInputType:I

.field private mPosFocusCpy:I

.field private mPosMoveTo:I

.field mRunQueryContacts:Ljava/lang/Runnable;

.field mRun_NotifyDataSetChanged:Ljava/lang/Runnable;

.field public mRunnableQueryContact:Ljava/lang/Runnable;

.field mRunnableSearchRunnable:Ljava/lang/Runnable;

.field mRunnable_resetList:Ljava/lang/Runnable;

.field public mSlideBar:Lcom/syu/bt/ctrl/SlideBarView;

.field mViewKey:Landroid/view/View;

.field myListTask:Lcom/syu/bt/util/MyListCoverTask;

.field private nightBtn:[I

.field private nightText:[I

.field private nightView:[I

.field public random:Ljava/util/Random;

.field searchColor:I

.field public str_ContIcon:[Ljava/lang/String;

.field public tvContact_Num:Lcom/lsec/core/frame/ctrl/JText;

.field public tvLetterTitle:Landroid/widget/TextView;

.field public tvTxtPhone1:Lcom/lsec/core/frame/ctrl/JText;

.field public tvTxtPhone1_p:Lcom/lsec/core/frame/ctrl/JText;

.field public tvTxtPhone2:Lcom/lsec/core/frame/ctrl/JText;

.field public tvTxtPhone2_p:Lcom/lsec/core/frame/ctrl/JText;

.field public tvTxtSum:Lcom/lsec/core/frame/ctrl/JText;

.field public tvTxtSumStr:Lcom/lsec/core/frame/ctrl/JText;

.field public vContact_Phone:Lcom/lsec/core/frame/ctrl/JButton;

.field public vContact_View_move:Lcom/lsec/core/frame/ctrl/JButton;

.field public vContact_View_move1920:Lcom/lsec/core/frame/ctrl/JButton;

.field vNoData:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 72
    const-string v0, ""

    sput-object v0, Lcom/syu/bt/page/Page_Contact;->strSearch:Ljava/lang/String;

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/syu/bt/page/Page_Contact;->mClick:Landroid/util/SparseArray;

    .line 99
    sput-boolean v3, Lcom/syu/bt/page/Page_Contact;->bDrawListAlbum:Z

    .line 834
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 835
    const-string v2, " "

    aput-object v2, v0, v1

    .line 836
    const-string v1, "aAbBcC"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    .line 837
    const-string v2, "dDeEfF"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 838
    const-string v2, "gGhHiI"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 839
    const-string v2, "jJkKlL"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 840
    const-string v2, "mMnNoO"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 841
    const-string v2, "pPqQrRsS"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 842
    const-string v2, "tTuUvV"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 843
    const-string v2, "wWxXyYzZ"

    aput-object v2, v0, v1

    .line 834
    sput-object v0, Lcom/syu/bt/page/Page_Contact;->mStrT9:[Ljava/lang/String;

    .line 1251
    return-void
.end method

.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
    .locals 8
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "actBt"    # Lcom/syu/bt/Act_Bt;

    .prologue
    const/16 v2, 0xff

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 116
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 73
    iput-boolean v4, p0, Lcom/syu/bt/page/Page_Contact;->mDownloading:Z

    .line 74
    iput-boolean v4, p0, Lcom/syu/bt/page/Page_Contact;->mGridClickDial:Z

    .line 93
    iput v5, p0, Lcom/syu/bt/page/Page_Contact;->mPosMoveTo:I

    .line 94
    iput v5, p0, Lcom/syu/bt/page/Page_Contact;->mPosFocusCpy:I

    .line 95
    iput-boolean v4, p0, Lcom/syu/bt/page/Page_Contact;->bRoolKey:Z

    .line 97
    iput-boolean v4, p0, Lcom/syu/bt/page/Page_Contact;->editFocus:Z

    .line 98
    iput-boolean v4, p0, Lcom/syu/bt/page/Page_Contact;->bTop:Z

    .line 100
    iput v2, p0, Lcom/syu/bt/page/Page_Contact;->key_id:I

    .line 101
    iput v2, p0, Lcom/syu/bt/page/Page_Contact;->key_id_p:I

    .line 103
    const v0, -0xff0100

    iput v0, p0, Lcom/syu/bt/page/Page_Contact;->searchColor:I

    .line 104
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 109
    iput-object v0, p0, Lcom/syu/bt/page/Page_Contact;->nightBtn:[I

    .line 111
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/syu/bt/page/Page_Contact;->nightView:[I

    .line 112
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/syu/bt/page/Page_Contact;->nightText:[I

    .line 231
    new-instance v0, Lcom/syu/bt/page/Page_Contact$1;

    invoke-direct {v0, p0}, Lcom/syu/bt/page/Page_Contact$1;-><init>(Lcom/syu/bt/page/Page_Contact;)V

    iput-object v0, p0, Lcom/syu/bt/page/Page_Contact;->mRunnable_resetList:Ljava/lang/Runnable;

    .line 238
    new-instance v0, Lcom/syu/bt/page/Page_Contact$2;

    invoke-direct {v0, p0}, Lcom/syu/bt/page/Page_Contact$2;-><init>(Lcom/syu/bt/page/Page_Contact;)V

    iput-object v0, p0, Lcom/syu/bt/page/Page_Contact;->mRunnableQueryContact:Ljava/lang/Runnable;

    .line 254
    new-instance v0, Lcom/syu/bt/page/Page_Contact$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/syu/bt/page/Page_Contact$3;-><init>(Lcom/syu/bt/page/Page_Contact;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/syu/bt/page/Page_Contact;->mContactsObserver:Landroid/database/ContentObserver;

    .line 326
    new-instance v0, Lcom/syu/bt/page/Page_Contact$4;

    invoke-direct {v0, p0}, Lcom/syu/bt/page/Page_Contact$4;-><init>(Lcom/syu/bt/page/Page_Contact;)V

    iput-object v0, p0, Lcom/syu/bt/page/Page_Contact;->mRunnableSearchRunnable:Ljava/lang/Runnable;

    .line 390
    new-instance v0, Lcom/syu/bt/page/Page_Contact$5;

    invoke-direct {v0, p0}, Lcom/syu/bt/page/Page_Contact$5;-><init>(Lcom/syu/bt/page/Page_Contact;)V

    iput-object v0, p0, Lcom/syu/bt/page/Page_Contact;->mRunQueryContacts:Ljava/lang/Runnable;

    .line 803
    new-instance v0, Lcom/syu/bt/page/Page_Contact$6;

    invoke-direct {v0, p0}, Lcom/syu/bt/page/Page_Contact$6;-><init>(Lcom/syu/bt/page/Page_Contact;)V

    iput-object v0, p0, Lcom/syu/bt/page/Page_Contact;->mRun_NotifyDataSetChanged:Ljava/lang/Runnable;

    .line 998
    iput v2, p0, Lcom/syu/bt/page/Page_Contact;->conPhone_id:I

    .line 1362
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Cont_icon1"

    aput-object v1, v0, v4

    const-string v1, "Cont_icon2"

    aput-object v1, v0, v6

    const-string v1, "Cont_icon3"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "Cont_icon4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Cont_icon5"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/syu/bt/page/Page_Contact;->str_ContIcon:[Ljava/lang/String;

    .line 1363
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/page/Page_Contact;->random:Ljava/util/Random;

    .line 1986
    new-array v0, v7, [I

    const/high16 v1, -0x1000000

    aput v1, v0, v4

    const/16 v1, 0x27

    const/16 v2, 0xf9

    const/16 v3, 0xd3

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v6

    iput-object v0, p0, Lcom/syu/bt/page/Page_Contact;->color_day:[I

    .line 1987
    new-array v0, v7, [I

    aput v5, v0, v4

    const/16 v1, 0x27

    const/16 v2, 0xf9

    const/16 v3, 0xd3

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v6

    iput-object v0, p0, Lcom/syu/bt/page/Page_Contact;->color_night:[I

    .line 117
    iput-object p2, p0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    .line 118
    return-void

    .line 104
    nop

    :array_0
    .array-data 4
        0x27ff
        0x27fb
        0x27fd
        0x27fa
        0x27fe
        0x2800
        0x2744
        0x2745
        0x274e
        0x2746
        0x274c
        0x274d
        0x2803
        0x2804
        0x2805
        0x2806
        0x2807
        0x2808
        0x2809
        0x280a
        0x280b
        0x2802
        0x280c
        0x280d
    .end array-data

    .line 111
    :array_1
    .array-data 4
        0x2988
        0x2989
        0x298a
        0x298b
        0x273d
        0x27f9
    .end array-data

    .line 112
    :array_2
    .array-data 4
        0x27e8
        0x27e9
        0x27ea
        0x27eb
        0x27e7
    .end array-data
.end method

.method private downloadPhoneBook()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xb

    .line 1266
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isDisConnect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1267
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_state_disconnected"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    .line 1320
    :cond_0
    :goto_0
    return-void

    .line 1271
    :cond_1
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isPairing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1273
    const-string v0, "down"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " --- downloadPhoneBook 00 bDownloading = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/syu/bt/App_Bt;->bDownloading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bDownloading:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isZhangConfig()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1275
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_downloading"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 1278
    :cond_2
    const-string v0, "down"

    const-string v1, " --- downloadPhoneBook 11  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v0, :cond_6

    .line 1281
    sget v0, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    if-nez v0, :cond_3

    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1282
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_clear_and_reload"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    goto :goto_0

    .line 1283
    :cond_3
    sget v0, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1284
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_clear_and_reload"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1286
    :cond_4
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bAutoDownPhoneBook:Z

    if-eqz v0, :cond_5

    .line 1287
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->downloadBook()V

    goto/16 :goto_0

    .line 1289
    :cond_5
    sput-boolean v4, Lcom/syu/bt/App_Bt;->bShowLoading:Z

    .line 1290
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->downloadBook()V

    .line 1292
    sget v0, Lcom/syu/bt/App_Bt;->mBtType:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->is7862()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1294
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bDownloading:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/syu/bt/App_Bt;->bShowLoading:Z

    if-eqz v0, :cond_0

    .line 1295
    const-string v0, "down"

    const-string v1, " ---  downloadPhoneBook 22  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->uiUtil:Lcom/syu/bt/util/UIUtil;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_download"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/syu/bt/util/UIUtil;->showLoading(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1302
    :cond_6
    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 1303
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_clear_and_reload"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1305
    :cond_7
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bAutoDownPhoneBook:Z

    if-eqz v0, :cond_8

    .line 1306
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->downloadBook()V

    goto/16 :goto_0

    .line 1308
    :cond_8
    sput-boolean v4, Lcom/syu/bt/App_Bt;->bShowLoading:Z

    .line 1309
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->downloadBook()V

    .line 1311
    sget v0, Lcom/syu/bt/App_Bt;->mBtType:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->is7862()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1313
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bDownloading:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/syu/bt/App_Bt;->bShowLoading:Z

    if-eqz v0, :cond_0

    .line 1314
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->uiUtil:Lcom/syu/bt/util/UIUtil;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_download"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/syu/bt/util/UIUtil;->showLoading(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public GridClick(Lcom/lsec/core/frame/ctrl/JGridView;)V
    .locals 12
    .param p1, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;

    .prologue
    const/4 v11, -0x1

    const/16 v10, 0x281e

    const/16 v9, 0x281c

    const/16 v8, 0x2713

    .line 1712
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getId()I

    move-result v0

    .line 1713
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 1769
    :cond_0
    :goto_0
    return-void

    .line 1715
    :pswitch_0
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1718
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getPosition()I

    move-result v4

    .line 1719
    .local v4, "position":I
    const-string v5, "con3"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " 00 GridClick Contact_ListView mSelectContact = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Lcom/syu/bt/App_Bt;->mSelectContact:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    sget v5, Lcom/syu/bt/App_Bt;->mSelectContact:I

    if-lez v5, :cond_1

    .line 1721
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "contact_save"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Lcom/syu/bt/App_Bt;->mSelectContact:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    invoke-static {v6, v5}, Lcom/syu/bt/util/SpUtil;->saveContact(Ljava/lang/String;Landroid/util/SparseArray;)Z

    .line 1722
    sput v11, Lcom/syu/bt/App_Bt;->mSelectContact:I

    .line 1723
    iget-object v5, p0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v5, v5, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v5, v8}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    goto :goto_0

    .line 1728
    :cond_1
    iget-boolean v5, p0, Lcom/syu/bt/page/Page_Contact;->mGridClickDial:Z

    if-eqz v5, :cond_0

    .line 1730
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 1731
    .local v1, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1732
    .local v3, "number":Ljava/lang/String;
    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1733
    .local v2, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1734
    iput v11, p0, Lcom/syu/bt/page/Page_Contact;->mPosMoveTo:I

    .line 1735
    sget-object v5, Lcom/syu/bt/page/Page_Contact;->mClick:Landroid/util/SparseArray;

    invoke-virtual {v5, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/syu/bt/page/Page_Contact;->mClick:Landroid/util/SparseArray;

    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1737
    const-string v5, "con3"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " 11 GridClick Contact_ListView isStateConnect = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isStateConnect()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isStateConnect()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1739
    sget-boolean v5, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v5, :cond_2

    .line 1740
    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    sget v6, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    aget-object v5, v5, v6

    sput-object v5, Lcom/syu/bt/App_Bt;->sPhone_callin_mac:Ljava/lang/String;

    .line 1741
    :cond_2
    invoke-static {v3}, Lcom/syu/app/ipc/Bt_IpcObj;->itemDial(Ljava/lang/String;)V

    .line 1742
    iget-object v5, p0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v5, v5, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v5, v8}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    .line 1759
    :cond_3
    :goto_1
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isZhangConfig()Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v6, "HAODA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1760
    :cond_4
    iget-object v5, p0, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    if-eqz v5, :cond_0

    .line 1761
    const-string v5, "gdy6666"

    const-string v6, " *****003 Page_Con notifyDataSetChanged    "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    iget-object v5, p0, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1745
    :cond_5
    const-string v5, "con3"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " 22 GridClick Contact_ListView CustomerUtil.isZhangConfig() = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isZhangConfig()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    sget-object v5, Lcom/syu/bt/page/Page_Contact;->mClick:Landroid/util/SparseArray;

    invoke-virtual {v5, v10, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1747
    sget-object v5, Lcom/syu/bt/page/Page_Contact;->mClick:Landroid/util/SparseArray;

    invoke-virtual {v5, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1748
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isZhangConfig()Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v6, "HAODA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1749
    const-string v5, "con3"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " 22 GridClick Contact_ListView isStateConnect = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isStateConnect()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isStateConnect()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1751
    sget-boolean v5, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v5, :cond_6

    .line 1752
    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    sget v6, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    aget-object v5, v5, v6

    sput-object v5, Lcom/syu/bt/App_Bt;->sPhone_callin_mac:Ljava/lang/String;

    .line 1753
    :cond_6
    invoke-static {v3}, Lcom/syu/app/ipc/Bt_IpcObj;->itemDial(Ljava/lang/String;)V

    .line 1754
    iget-object v5, p0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v5, v5, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v5, v8}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    goto/16 :goto_1

    .line 1713
    nop

    :pswitch_data_0
    .packed-switch 0x2811
        :pswitch_0
    .end packed-switch
.end method

.method public GridLongClick(Lcom/lsec/core/frame/ctrl/JGridView;)V
    .locals 7
    .param p1, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;

    .prologue
    .line 1773
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getId()I

    move-result v0

    .line 1774
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 1787
    :cond_0
    :goto_0
    return-void

    .line 1776
    :pswitch_0
    sget-object v3, Lcom/syu/bt/page/Page_Contact;->mClick:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 1777
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getPosition()I

    move-result v2

    .line 1778
    .local v2, "position":I
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 1779
    .local v1, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 1780
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1781
    iget-object v3, p0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    const/4 v4, 0x2

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v6, "bt_is_delete_one"

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    goto :goto_0

    .line 1774
    :pswitch_data_0
    .packed-switch 0x2811
        :pswitch_0
    .end packed-switch
.end method

.method public GridPressed(Lcom/lsec/core/frame/ctrl/JGridView;Lcom/lsec/core/frame/ctrl/JPage;Z)V
    .locals 5
    .param p1, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;
    .param p2, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p3, "pressed"    # Z

    .prologue
    const/4 v4, 0x1

    .line 1663
    iget-object v2, p1, Lcom/lsec/core/frame/ctrl/JGridView;->mPageInfos:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 1664
    iget-object v2, p1, Lcom/lsec/core/frame/ctrl/JGridView;->mPageInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1671
    iget-boolean v2, p0, Lcom/syu/bt/page/Page_Contact;->mGridClickDial:Z

    if-nez v2, :cond_3

    sget v2, Lcom/syu/bt/App_Bt;->mSelectContact:I

    if-gez v2, :cond_3

    .line 1672
    const/16 v2, 0x2827

    invoke-virtual {p2, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1673
    iput-boolean v4, p0, Lcom/syu/bt/page/Page_Contact;->mGridClickDial:Z

    .line 1675
    :cond_1
    sget v2, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_2

    .line 1676
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isZhangConfig()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1677
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isXCConfig()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1678
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v3, "HAODA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1680
    :cond_2
    iput-boolean v4, p0, Lcom/syu/bt/page/Page_Contact;->mGridClickDial:Z

    .line 1683
    :cond_3
    return-void

    .line 1664
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1665
    .local v0, "pageReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/lsec/core/frame/ctrl/JPage;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JPage;

    .line 1666
    .local v1, "pageTmp":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v1, :cond_0

    .line 1667
    invoke-virtual {p0, v1, p2, p3}, Lcom/syu/bt/page/Page_Contact;->pressGridItem(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/ctrl/JPage;Z)V

    goto :goto_0
.end method

.method public InitGridItem(Lcom/lsec/core/frame/ctrl/JGridView;Lcom/lsec/core/frame/ctrl/JPage;Landroid/util/SparseArray;I)V
    .locals 42
    .param p1, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;
    .param p2, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p4, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lsec/core/frame/ctrl/JGridView;",
            "Lcom/lsec/core/frame/ctrl/JPage;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1366
    .local p3, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getId()I

    move-result v16

    .line 1367
    .local v16, "id":I
    packed-switch v16, :pswitch_data_0

    .line 1647
    :cond_0
    :goto_0
    return-void

    .line 1369
    :pswitch_0
    invoke-virtual/range {p3 .. p3}, Landroid/util/SparseArray;->size()I

    move-result v19

    .line 1370
    .local v19, "mySize":I
    const-string v38, "gdy6666"

    new-instance v39, Ljava/lang/StringBuilder;

    const-string v40, "000 Page_contact InitGridItem strNumber mySize ="

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v39

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "- position = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    const/16 v38, 0x2814

    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v37

    .line 1373
    .local v37, "viewContent":Landroid/view/View;
    if-eqz v37, :cond_1

    .line 1374
    if-nez v19, :cond_18

    const/16 v38, 0x8

    :goto_1
    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->setVisibility(I)V

    .line 1376
    :cond_1
    if-eqz p2, :cond_2

    sget-object v38, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v39, "changecolor"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_2

    .line 1377
    const-string v38, "key"

    new-instance v39, Ljava/lang/StringBuilder;

    const-string v40, " 00 InitGridItem set App_Bt.color = "

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v40, Lcom/syu/bt/App_Bt;->color:I

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    const/16 v38, 0x4

    move/from16 v0, v38

    new-array v9, v0, [I

    const/16 v38, 0x0

    .line 1379
    sget v39, Lcom/syu/bt/App_Bt;->color:I

    aput v39, v9, v38

    const/16 v38, 0x1

    .line 1380
    sget v39, Lcom/syu/bt/App_Bt;->color:I

    aput v39, v9, v38

    const/16 v38, 0x2

    .line 1381
    sget v39, Lcom/syu/bt/App_Bt;->color:I

    aput v39, v9, v38

    const/16 v38, 0x3

    .line 1382
    sget v39, Lcom/syu/bt/App_Bt;->color:I

    aput v39, v9, v38

    .line 1384
    .local v9, "colors":[I
    const/16 v38, 0x4

    move/from16 v0, v38

    new-array v0, v0, [[I

    move-object/from16 v26, v0

    const/16 v38, 0x0

    .line 1385
    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [I

    move-object/from16 v39, v0

    const/16 v40, 0x0

    const v41, 0x10100a7

    aput v41, v39, v40

    aput-object v39, v26, v38

    const/16 v38, 0x1

    .line 1386
    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [I

    move-object/from16 v39, v0

    const/16 v40, 0x0

    const v41, 0x10100a1

    aput v41, v39, v40

    aput-object v39, v26, v38

    const/16 v38, 0x2

    .line 1387
    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [I

    move-object/from16 v39, v0

    const/16 v40, 0x0

    const v41, 0x1010367

    aput v41, v39, v40

    aput-object v39, v26, v38

    const/16 v38, 0x3

    .line 1388
    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [I

    move-object/from16 v39, v0

    const/16 v40, 0x0

    const v41, 0x101009c

    aput v41, v39, v40

    aput-object v39, v26, v38

    .line 1390
    .local v26, "states":[[I
    new-instance v38, Landroid/content/res/ColorStateList;

    move-object/from16 v0, v38

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v9}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1391
    sget-object v38, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1394
    .end local v9    # "colors":[I
    .end local v26    # "states":[[I
    :cond_2
    sget-boolean v38, Lcom/syu/bt/App_Bt;->bUI_NightColour:Z

    if-eqz v38, :cond_3

    .line 1395
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/ctrl/JPage;->getStrDrawable()Ljava/lang/String;

    move-result-object v27

    .line 1396
    .local v27, "str":Ljava/lang/String;
    const-string v38, "gdy66"

    new-instance v39, Ljava/lang/StringBuilder;

    const-string v40, "222 Page_History InitGridItem mColorType = "

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v40, Lcom/syu/bt/App_Bt;->mColorType:I

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " str = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    sget v38, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v38, :cond_19

    .line 1398
    const-string v38, "night_"

    move-object/from16 v0, v27

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_3

    .line 1399
    new-instance v38, Ljava/lang/StringBuilder;

    const-string v39, "night_"

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v38

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->setStrDrawable(Ljava/lang/String;Z)V

    .line 1408
    .end local v27    # "str":Ljava/lang/String;
    :cond_3
    :goto_2
    if-lez v19, :cond_0

    .line 1409
    sget-boolean v38, Lcom/syu/bt/App_Bt;->bUI_NightColour:Z

    if-eqz v38, :cond_4

    .line 1410
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/ctrl/JPage;->getStrDrawable()Ljava/lang/String;

    move-result-object v27

    .line 1411
    .restart local v27    # "str":Ljava/lang/String;
    sget v38, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v38, :cond_1a

    .line 1412
    const-string v38, "night_"

    move-object/from16 v0, v27

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_4

    .line 1413
    new-instance v38, Ljava/lang/StringBuilder;

    const-string v39, "night_"

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v38

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->setStrDrawable(Ljava/lang/String;Z)V

    .line 1422
    .end local v27    # "str":Ljava/lang/String;
    :cond_4
    :goto_3
    const/16 v38, 0x2820

    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Lcom/lsec/core/frame/ctrl/JText;

    .line 1423
    .local v33, "textNumber":Lcom/lsec/core/frame/ctrl/JText;
    sget-object v38, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v39, "BT_23NEW"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_5

    .line 1424
    if-eqz v33, :cond_5

    .line 1425
    sget-object v38, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1427
    :cond_5
    const/16 v38, 0x281f

    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Lcom/lsec/core/frame/ctrl/JText;

    .line 1428
    .local v32, "textName":Lcom/lsec/core/frame/ctrl/JText;
    const/16 v38, 0x281e

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 1430
    .local v29, "strNumber":Ljava/lang/String;
    const-string v38, "gdy6666"

    new-instance v39, Ljava/lang/StringBuilder;

    const-string v40, "001 Page_contact InitGridItem strNumber strNumber ="

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v39

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "-"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-eqz v38, :cond_6

    .line 1432
    const/16 v38, 0x281e

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v29

    .end local v29    # "strNumber":Ljava/lang/String;
    check-cast v29, Ljava/lang/String;

    .line 1434
    .restart local v29    # "strNumber":Ljava/lang/String;
    :cond_6
    const/16 v38, 0x281c

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 1436
    .local v28, "strName":Ljava/lang/String;
    sget-boolean v38, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v38, :cond_7

    .line 1437
    const-string v38, "hfp2"

    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 1438
    const-string v38, "hfp2"

    const-string v39, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    .line 1441
    :cond_7
    const/4 v6, 0x0

    .line 1442
    .local v6, "bHighlightNumber":Z
    const/4 v5, 0x0

    .line 1443
    .local v5, "bHighlightName":Z
    sget-object v38, Lcom/syu/bt/page/Page_Contact;->strSearch:Ljava/lang/String;

    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-nez v38, :cond_9

    .line 1444
    sget-object v38, Lcom/syu/bt/page/Page_Contact;->strSearch:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Contact;->isNumber(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_8

    .line 1445
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-nez v38, :cond_8

    .line 1446
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v38

    sget-object v39, Lcom/syu/bt/page/Page_Contact;->strSearch:Ljava/lang/String;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 1447
    .local v15, "iStart":I
    if-ltz v15, :cond_8

    .line 1448
    new-instance v30, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1449
    .local v30, "style":Landroid/text/SpannableStringBuilder;
    new-instance v38, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/syu/bt/page/Page_Contact;->searchColor:I

    move/from16 v39, v0

    invoke-direct/range {v38 .. v39}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sget-object v39, Lcom/syu/bt/page/Page_Contact;->strSearch:Ljava/lang/String;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v39

    add-int v39, v39, v15

    const/16 v40, 0x21

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    move/from16 v2, v39

    move/from16 v3, v40

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1450
    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1451
    const/4 v6, 0x1

    .line 1456
    .end local v15    # "iStart":I
    .end local v30    # "style":Landroid/text/SpannableStringBuilder;
    :cond_8
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-nez v38, :cond_9

    .line 1457
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v38

    sget-object v39, Lcom/syu/bt/page/Page_Contact;->strSearch:Ljava/lang/String;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 1458
    .restart local v15    # "iStart":I
    if-ltz v15, :cond_9

    .line 1459
    new-instance v30, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1460
    .restart local v30    # "style":Landroid/text/SpannableStringBuilder;
    new-instance v38, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/syu/bt/page/Page_Contact;->searchColor:I

    move/from16 v39, v0

    invoke-direct/range {v38 .. v39}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sget-object v39, Lcom/syu/bt/page/Page_Contact;->strSearch:Ljava/lang/String;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v39

    add-int v39, v39, v15

    const/16 v40, 0x21

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    move/from16 v2, v39

    move/from16 v3, v40

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1461
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1462
    const/4 v5, 0x1

    .line 1467
    .end local v15    # "iStart":I
    .end local v30    # "style":Landroid/text/SpannableStringBuilder;
    :cond_9
    if-nez v6, :cond_b

    .line 1468
    sget-object v38, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v39, "TZY_NEW"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1b

    .line 1469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v38

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1475
    :cond_a
    :goto_4
    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1478
    :cond_b
    if-nez v5, :cond_d

    .line 1479
    sget-object v38, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v39, "TZY_NEW"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1f

    .line 1480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v38

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1481
    sget-object v38, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    const-string v39, "UI7"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_c

    .line 1482
    sget v38, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v38, :cond_1e

    const/16 v38, -0x1

    :goto_5
    move-object/from16 v0, v32

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 1493
    :cond_c
    :goto_6
    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1496
    :cond_d
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v38

    if-nez v38, :cond_e

    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isTZYConfig()Z

    move-result v38

    if-nez v38, :cond_e

    sget-object v38, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v39, "YL_BT_1920"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_e

    sget-boolean v38, Lcom/syu/bt/App_Bt;->bFavcontact:Z

    if-eqz v38, :cond_10

    .line 1497
    :cond_e
    const/16 v38, 0x2828

    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1498
    .local v8, "btnFavorite":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v8, :cond_f

    .line 1499
    const/16 v38, 0x2823

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1500
    .local v18, "isFav":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-nez v38, :cond_23

    .line 1501
    const-string v38, "collect"

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_22

    const/16 v38, 0x1

    :goto_7
    move/from16 v0, v38

    invoke-virtual {v8, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 1505
    .end local v18    # "isFav":Ljava/lang/String;
    :cond_f
    :goto_8
    const/16 v38, 0x2815

    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Lcom/lsec/core/frame/ctrl/JView;

    .line 1506
    .local v34, "view":Lcom/lsec/core/frame/ctrl/JView;
    if-eqz v34, :cond_10

    .line 1507
    const/16 v38, 0x2826

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1508
    .local v4, "abc":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-nez v38, :cond_24

    .line 1509
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    const-string v40, "bt_zimu_"

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v40

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v40, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v41

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v41, v0

    invoke-virtual/range {v38 .. v41}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v38

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1515
    .end local v4    # "abc":Ljava/lang/String;
    .end local v8    # "btnFavorite":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v34    # "view":Lcom/lsec/core/frame/ctrl/JView;
    :cond_10
    :goto_9
    const/16 v38, 0x2816

    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v35

    .line 1516
    .local v35, "view1":Landroid/view/View;
    if-eqz v35, :cond_11

    .line 1517
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v39

    sget v38, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v38, :cond_25

    const-string v38, "night_contact_icon"

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v40

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v40, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v41

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v41, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    move-object/from16 v2, v40

    move-object/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v38

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1518
    :cond_11
    const/16 v38, 0x2817

    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v36

    .line 1519
    .local v36, "view2":Landroid/view/View;
    if-eqz v36, :cond_12

    .line 1520
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v39

    sget v38, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v38, :cond_26

    const-string v38, "night_dial_icon"

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v40

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v40, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v41

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v41, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    move-object/from16 v2, v40

    move-object/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1523
    :cond_12
    const/16 v38, 0x2821

    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Lcom/lsec/core/frame/ctrl/JText;

    .line 1524
    .local v31, "textContHead":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v31, :cond_13

    .line 1525
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v39, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1526
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Contact;->str_ContIcon:[Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Contact;->random:Ljava/util/Random;

    move-object/from16 v40, v0

    const/16 v41, 0x5

    invoke-virtual/range {v40 .. v41}, Ljava/util/Random;->nextInt(I)I

    move-result v40

    aget-object v39, v39, v40

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v40

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v40, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v41

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v41, v0

    invoke-virtual/range {v38 .. v41}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v38

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1530
    :cond_13
    const/16 v38, 0x2829

    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v12

    .line 1531
    .local v12, "headIco":Landroid/view/View;
    sget-boolean v38, Lcom/syu/bt/App_Bt;->bShowHeadIco:Z

    if-eqz v38, :cond_29

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-nez v38, :cond_29

    if-eqz v12, :cond_29

    .line 1532
    sget-object v38, Lcom/syu/bt/App_Bt;->myPaths:Ljava/util/List;

    move-object/from16 v0, v38

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1533
    sget-object v38, Lcom/syu/bt/App_Bt;->myAlbum:Ljava/util/HashMap;

    invoke-virtual/range {v38 .. v38}, Ljava/util/HashMap;->size()I

    move-result v38

    if-lez v38, :cond_14

    .line 1535
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/syu/bt/util/BTUtil;->getHeadIco(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1536
    .local v7, "bmp":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_28

    .line 1537
    const-string v38, "gdy6666"

    new-instance v39, Ljava/lang/StringBuilder;

    const-string v40, "111 Page_contact InitGridItem strNumber ="

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v39

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "-"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    sget-object v38, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v39, "BT_23NEW"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_27

    .line 1540
    new-instance v38, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v39, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    const/16 v40, 0xf

    move/from16 v0, v40

    invoke-static {v7, v0}, Lcom/syu/bt/util/BTUtil;->outputCircleLittle(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v40

    invoke-direct/range {v38 .. v40}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1628
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    :cond_14
    :goto_c
    const/4 v10, 0x0

    .line 1629
    .local v10, "flag":Z
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-nez v38, :cond_16

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-nez v38, :cond_16

    .line 1630
    move-object/from16 v0, p0

    iget v0, v0, Lcom/syu/bt/page/Page_Contact;->mPosMoveTo:I

    move/from16 v38, v0

    if-ltz v38, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/syu/bt/page/Page_Contact;->mPosMoveTo:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, p4

    if-ne v0, v1, :cond_15

    .line 1631
    sget-object v38, Lcom/syu/bt/page/Page_Contact;->mClick:Landroid/util/SparseArray;

    const/16 v39, 0x281e

    move-object/from16 v0, v38

    move/from16 v1, v39

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1632
    sget-object v38, Lcom/syu/bt/page/Page_Contact;->mClick:Landroid/util/SparseArray;

    const/16 v39, 0x281c

    move-object/from16 v0, v38

    move/from16 v1, v39

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1635
    :cond_15
    sget-object v38, Lcom/syu/bt/page/Page_Contact;->mClick:Landroid/util/SparseArray;

    const/16 v39, 0x281e

    invoke-virtual/range {v38 .. v39}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v38

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_16

    sget-object v38, Lcom/syu/bt/page/Page_Contact;->mClick:Landroid/util/SparseArray;

    const/16 v39, 0x281c

    invoke-virtual/range {v38 .. v39}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v38

    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_16

    .line 1636
    const/4 v10, 0x1

    .line 1639
    :cond_16
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isZhangConfig()Z

    move-result v38

    if-nez v38, :cond_17

    sget-object v38, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v39, "HAODA"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/syu/bt/page/Page_Contact;->bRoolKey:Z

    move/from16 v38, v0

    if-nez v38, :cond_17

    sget-object v38, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v39, "changecolor"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_0

    .line 1640
    :cond_17
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/lsec/core/frame/ctrl/JPage;->setFocus(Z)V

    .line 1641
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v10}, Lcom/syu/bt/page/Page_Contact;->pressGridItem(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/ctrl/JPage;Z)V

    goto/16 :goto_0

    .line 1374
    .end local v5    # "bHighlightName":Z
    .end local v6    # "bHighlightNumber":Z
    .end local v10    # "flag":Z
    .end local v12    # "headIco":Landroid/view/View;
    .end local v28    # "strName":Ljava/lang/String;
    .end local v29    # "strNumber":Ljava/lang/String;
    .end local v31    # "textContHead":Lcom/lsec/core/frame/ctrl/JText;
    .end local v32    # "textName":Lcom/lsec/core/frame/ctrl/JText;
    .end local v33    # "textNumber":Lcom/lsec/core/frame/ctrl/JText;
    .end local v35    # "view1":Landroid/view/View;
    .end local v36    # "view2":Landroid/view/View;
    :cond_18
    const/16 v38, 0x0

    goto/16 :goto_1

    .line 1402
    .restart local v27    # "str":Ljava/lang/String;
    :cond_19
    const-string v38, "night_"

    move-object/from16 v0, v27

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_3

    .line 1403
    const-string v38, "night_"

    const-string v39, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->setStrDrawable(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 1416
    :cond_1a
    const-string v38, "night_"

    move-object/from16 v0, v27

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_4

    .line 1417
    const-string v38, "night_"

    const-string v39, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->setStrDrawable(Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 1471
    .end local v27    # "str":Ljava/lang/String;
    .restart local v5    # "bHighlightName":Z
    .restart local v6    # "bHighlightNumber":Z
    .restart local v28    # "strName":Ljava/lang/String;
    .restart local v29    # "strNumber":Ljava/lang/String;
    .restart local v32    # "textName":Lcom/lsec/core/frame/ctrl/JText;
    .restart local v33    # "textNumber":Lcom/lsec/core/frame/ctrl/JText;
    :cond_1b
    sget-object v38, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v39, "YL_3"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_1c

    sget-object v38, Lcom/syu/bt/App_Bt;->mUi_Name:Ljava/lang/String;

    const-string v39, "yl_dn1"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_1c

    .line 1472
    sget-object v38, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v39, "BT_XYQ_HB"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_1c

    sget-object v38, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v39, "SYU-XN"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_a

    .line 1473
    :cond_1c
    sget v38, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v38, :cond_1d

    const/16 v38, -0x1

    :goto_d
    move-object/from16 v0, v33

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    goto/16 :goto_4

    :cond_1d
    const/high16 v38, -0x1000000

    goto :goto_d

    .line 1482
    :cond_1e
    const/high16 v38, -0x1000000

    goto/16 :goto_5

    .line 1485
    :cond_1f
    sget-object v38, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v39, "YL_3"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_20

    sget-object v38, Lcom/syu/bt/App_Bt;->mUi_Name:Ljava/lang/String;

    const-string v39, "yl_dn1"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_20

    .line 1486
    sget-object v38, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v39, "BT_XYQ_HB"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_20

    sget-object v38, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v39, "SYU-XN"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_c

    .line 1487
    :cond_20
    sget v38, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v38, :cond_21

    const/16 v38, -0x1

    :goto_e
    move-object/from16 v0, v32

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    goto/16 :goto_6

    :cond_21
    const/high16 v38, -0x1000000

    goto :goto_e

    .line 1501
    .restart local v8    # "btnFavorite":Lcom/lsec/core/frame/ctrl/JButton;
    .restart local v18    # "isFav":Ljava/lang/String;
    :cond_22
    const/16 v38, 0x0

    goto/16 :goto_7

    .line 1503
    :cond_23
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v8, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    goto/16 :goto_8

    .line 1511
    .end local v18    # "isFav":Ljava/lang/String;
    .restart local v4    # "abc":Ljava/lang/String;
    .restart local v34    # "view":Lcom/lsec/core/frame/ctrl/JView;
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v38

    const-string v39, "bt_zimu_1"

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v40

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v40, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v41

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v41, v0

    invoke-virtual/range {v38 .. v41}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v38

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 1517
    .end local v4    # "abc":Ljava/lang/String;
    .end local v8    # "btnFavorite":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v34    # "view":Lcom/lsec/core/frame/ctrl/JView;
    .restart local v35    # "view1":Landroid/view/View;
    :cond_25
    const-string v38, "contact_icon"

    goto/16 :goto_a

    .line 1520
    .restart local v36    # "view2":Landroid/view/View;
    :cond_26
    const-string v38, "dial_icon"

    goto/16 :goto_b

    .line 1542
    .restart local v7    # "bmp":Landroid/graphics/Bitmap;
    .restart local v12    # "headIco":Landroid/view/View;
    .restart local v31    # "textContHead":Lcom/lsec/core/frame/ctrl/JText;
    :cond_27
    new-instance v38, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v39, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    invoke-static {v7}, Lcom/syu/bt/util/BTUtil;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v40

    invoke-direct/range {v38 .. v40}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_c

    .line 1544
    :cond_28
    const-string v38, "gdy6666"

    new-instance v39, Ljava/lang/StringBuilder;

    const-string v40, "222 Page_contact ContactItem_Head bmp strNumber ="

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v39

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "-"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v38

    const-string v39, "bt_icocontact"

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v40

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v40, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v41

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v41, v0

    invoke-virtual/range {v38 .. v41}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_c

    .line 1549
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    :cond_29
    const-string v38, "gdy6666"

    new-instance v39, Ljava/lang/StringBuilder;

    const-string v40, "333 Page_contact ContactItem_Head bmp strNumber ="

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v39

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "-"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    if-eqz v12, :cond_14

    .line 1551
    sget-object v38, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v39, "TZY_NEW"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_2a

    sget-object v38, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v39, "TZY_BT_1920"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_2a

    sget-object v38, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v39, "TZY_OEM"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_35

    .line 1553
    :cond_2a
    const/16 v38, 0x2819

    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/lsec/core/frame/ctrl/JText;

    .line 1554
    .local v14, "headTxt":Lcom/lsec/core/frame/ctrl/JText;
    const/16 v38, 0x2818

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1555
    .local v13, "headPic":Ljava/lang/String;
    const/16 v24, -0x1

    .line 1556
    .local v24, "picId":I
    const-string v11, ""

    .line 1557
    .local v11, "headABC":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-nez v38, :cond_2b

    .line 1558
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 1560
    :cond_2b
    const/16 v38, 0xf

    move/from16 v0, v24

    move/from16 v1, v38

    if-le v0, v1, :cond_2e

    .line 1561
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/syu/bt/util/BTUtil;->getHeadIco(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1562
    .restart local v7    # "bmp":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_2d

    .line 1563
    new-instance v38, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v39, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    invoke-static {v7}, Lcom/syu/bt/util/BTUtil;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v40

    invoke-direct/range {v38 .. v40}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1611
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    :goto_f
    if-nez v5, :cond_2c

    .line 1612
    sget-object v38, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-nez v38, :cond_2c

    .line 1613
    sget-object v38, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    const-string v39, "UI7"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_2c

    .line 1614
    sget v38, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v38, :cond_34

    const/16 v38, 0xff

    const/16 v39, 0xff

    const/16 v40, 0xff

    invoke-static/range {v38 .. v40}, Landroid/graphics/Color;->rgb(III)I

    move-result v38

    :goto_10
    move/from16 v0, v38

    invoke-virtual {v14, v0}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 1619
    :cond_2c
    invoke-virtual {v14, v11}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 1565
    .restart local v7    # "bmp":Landroid/graphics/Bitmap;
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    const-string v40, "headbig"

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v39

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v40

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v40, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v41

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v41, v0

    invoke-virtual/range {v38 .. v41}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_f

    .line 1568
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    :cond_2e
    if-lez v24, :cond_2f

    .line 1569
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    const-string v40, "headbig"

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v39

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v40

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v40, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v41

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v41, v0

    invoke-virtual/range {v38 .. v41}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_f

    .line 1571
    :cond_2f
    const/16 v17, 0x1

    .line 1572
    .local v17, "isABC":Z
    const/16 v38, 0x281d

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 1574
    .local v20, "nameCompare":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-nez v38, :cond_30

    .line 1575
    const/16 v38, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    .line 1576
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-nez v38, :cond_32

    .line 1577
    const-string v25, "[0-9`~!@#$%^&*()+=|{}\':;\',\\[\\].<>/?~\uff01@#\uffe5%\u2026\u2026&*\uff08\uff09\u2014\u2014+|{}\u3010\u3011\u2018\uff1b\uff1a\u201d\u201c\u2019\u3002\uff0c\u3001\uff1f]"

    .line 1578
    .local v25, "speChat":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v22

    .line 1579
    .local v22, "p":Ljava/util/regex/Pattern;
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/util/regex/Matcher;->matches()Z

    move-result v38

    if-eqz v38, :cond_30

    .line 1580
    const/16 v17, 0x0

    .line 1591
    .end local v22    # "p":Ljava/util/regex/Pattern;
    .end local v25    # "speChat":Ljava/lang/String;
    :cond_30
    :goto_11
    if-eqz v17, :cond_33

    .line 1593
    const-string v23, "headbig_null"

    .line 1594
    .local v23, "pathDrawable":Ljava/lang/String;
    sget-object v38, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-nez v38, :cond_31

    .line 1595
    sget-object v38, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    const-string v39, "UI7"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_31

    sget v38, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v38, :cond_31

    .line 1596
    const-string v23, "headbig_null_night"

    .line 1601
    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v38

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v39

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v39, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v40

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v40, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    move-object/from16 v2, v39

    move-object/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_f

    .line 1583
    .end local v23    # "pathDrawable":Ljava/lang/String;
    :cond_32
    const/16 v38, 0x281c

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 1584
    .local v21, "nameCompare2":Ljava/lang/String;
    const/16 v38, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    .line 1585
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-eqz v38, :cond_30

    .line 1586
    const/16 v17, 0x0

    goto :goto_11

    .line 1604
    .end local v21    # "nameCompare2":Ljava/lang/String;
    :cond_33
    const-string v11, ""

    .line 1605
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v38

    const-string v39, "headbig16"

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v40

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v40, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v41

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v41, v0

    invoke-virtual/range {v38 .. v41}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_f

    .line 1614
    .end local v17    # "isABC":Z
    .end local v20    # "nameCompare":Ljava/lang/String;
    :cond_34
    const/16 v38, 0x3c

    const/16 v39, 0x3c

    const/16 v40, 0x47

    invoke-static/range {v38 .. v40}, Landroid/graphics/Color;->rgb(III)I

    move-result v38

    goto/16 :goto_10

    .line 1621
    .end local v11    # "headABC":Ljava/lang/String;
    .end local v13    # "headPic":Ljava/lang/String;
    .end local v14    # "headTxt":Lcom/lsec/core/frame/ctrl/JText;
    .end local v24    # "picId":I
    :cond_35
    const-string v38, "bttt"

    new-instance v39, Ljava/lang/StringBuilder;

    const-string v40, "333 Page_contact ContactItem_Head bmp strNumber ="

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v39

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "-"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v38

    const-string v39, "bt_icocontact"

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v40

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v40, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v41

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v41, v0

    invoke-virtual/range {v38 .. v41}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_c

    .line 1367
    nop

    :pswitch_data_0
    .packed-switch 0x2811
        :pswitch_0
    .end packed-switch
.end method

.method public ResponseClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1042
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/syu/bt/util/BTUtil;->IsConnectCarplay()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1215
    :cond_0
    :goto_0
    return-void

    .line 1045
    :cond_1
    sget-boolean v5, Lcom/syu/bt/App_Bt;->bDownloading:Z

    if-eqz v5, :cond_2

    .line 1046
    iget-object v3, p0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v3, v3, Lcom/syu/bt/Act_Bt;->uiUtil:Lcom/syu/bt/util/UIUtil;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v5, "bt_download"

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/syu/bt/util/UIUtil;->showLoading(Ljava/lang/String;)V

    goto :goto_0

    .line 1050
    :cond_2
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->clearPageFocus()V

    .line 1051
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1052
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 1205
    :cond_3
    :goto_1
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v3}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1206
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const/16 v4, 0x2744

    if-eq v3, v4, :cond_d

    .line 1207
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v3

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v5, "bt_state_using"

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 1054
    :sswitch_0
    iget-object v3, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    if-eqz v3, :cond_3

    .line 1055
    iget-object v3, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/syu/bt/page/Page_Contact;->strSearch:Ljava/lang/String;

    .line 1056
    sget-object v3, Lcom/syu/bt/page/Page_Contact;->strSearch:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1057
    sget-object v3, Lcom/syu/bt/page/Page_Contact;->strSearch:Ljava/lang/String;

    sget-object v5, Lcom/syu/bt/page/Page_Contact;->strSearch:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/syu/bt/page/Page_Contact;->strSearch:Ljava/lang/String;

    .line 1058
    iget-object v4, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    sget-object v3, Lcom/syu/bt/page/Page_Contact;->strSearch:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    const-string v3, ""

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    sget-object v3, Lcom/syu/bt/page/Page_Contact;->strSearch:Ljava/lang/String;

    goto :goto_2

    .line 1065
    :sswitch_1
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->voiceSearchContact()V

    goto :goto_1

    .line 1068
    :sswitch_2
    const/16 v3, 0x7d0

    invoke-virtual {p0, v3}, Lcom/syu/bt/page/Page_Contact;->isDownloadDelay(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1070
    invoke-direct {p0}, Lcom/syu/bt/page/Page_Contact;->downloadPhoneBook()V

    goto :goto_1

    .line 1073
    :sswitch_3
    iget-object v3, p0, Lcom/syu/bt/page/Page_Contact;->mViewKey:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 1074
    iget-object v3, p0, Lcom/syu/bt/page/Page_Contact;->mViewKey:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1077
    :sswitch_4
    iget-object v3, p0, Lcom/syu/bt/page/Page_Contact;->mViewKey:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 1078
    iget-object v3, p0, Lcom/syu/bt/page/Page_Contact;->mViewKey:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1081
    :sswitch_5
    sget-object v3, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v4, "BT_23NEW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1082
    const-string v3, "gdy14"

    const-string v4, " 00 Page_contact Contact_Btn_Save  "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v3, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    if-eqz v3, :cond_5

    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v3, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 1084
    iget-object v3, p0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    const/4 v4, 0x5

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v6, "bt_need_save"

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 1086
    :cond_5
    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v3}, Lcom/syu/bt/db/Bt_Info;->savePhoneBook()V

    goto/16 :goto_1

    .line 1089
    :cond_6
    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v3}, Lcom/syu/bt/db/Bt_Info;->savePhoneBook()V

    goto/16 :goto_1

    .line 1093
    :sswitch_6
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->clearContacts()V

    goto/16 :goto_1

    .line 1096
    :sswitch_7
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/syu/bt/App_Bt;->isHalfScreenAble()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1097
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/syu/bt/App_Bt;->setFullScreenMode(I)V

    goto/16 :goto_1

    .line 1100
    :sswitch_8
    iget-object v3, p0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v3}, Lcom/syu/bt/Act_Bt;->Func_Back()Z

    goto/16 :goto_1

    .line 1103
    :sswitch_9
    sget-object v4, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v5, "TZY_NEW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    sget-object v4, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v5, "TZY_OEM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1104
    :cond_7
    sput-boolean v3, Lcom/syu/bt/App_Bt;->bJumpFavorite:Z

    .line 1105
    iget-object v3, p0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v3, v3, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    const/16 v4, 0x2713

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    goto/16 :goto_1

    .line 1107
    :cond_8
    sput-boolean v3, Lcom/syu/bt/App_Bt;->bIsFavList:Z

    .line 1108
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->resetList()V

    goto/16 :goto_1

    .line 1113
    :sswitch_a
    sput-boolean v4, Lcom/syu/bt/App_Bt;->bIsFavList:Z

    .line 1114
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->resetList()V

    goto/16 :goto_1

    .line 1135
    :sswitch_b
    iget-object v3, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    if-eqz v3, :cond_3

    .line 1136
    add-int/lit16 v3, v0, -0x2802

    const/16 v4, 0xa

    if-ne v3, v4, :cond_9

    .line 1137
    sget-object v3, Lcom/syu/bt/page/Page_Contact;->strSearch:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "*"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/syu/bt/page/Page_Contact;->strSearch:Ljava/lang/String;

    .line 1144
    :goto_3
    iget-object v3, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    sget-object v4, Lcom/syu/bt/page/Page_Contact;->strSearch:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1138
    :cond_9
    add-int/lit16 v3, v0, -0x2802

    const/16 v4, 0xb

    if-ne v3, v4, :cond_a

    .line 1139
    sget-object v3, Lcom/syu/bt/page/Page_Contact;->strSearch:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "#"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/syu/bt/page/Page_Contact;->strSearch:Ljava/lang/String;

    goto :goto_3

    .line 1141
    :cond_a
    const-string v3, "gdy5"

    const-string v4, " Contact "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    sget-object v3, Lcom/syu/bt/page/Page_Contact;->strSearch:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit16 v3, v0, -0x2802

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/syu/bt/page/Page_Contact;->strSearch:Ljava/lang/String;

    goto :goto_3

    .line 1150
    :sswitch_c
    const-string v5, "down"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " Contact_Phone_Switch bDownloading"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v7, Lcom/syu/bt/App_Bt;->bDownloading:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    sget-object v5, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v5, v5, v4

    if-lt v5, v8, :cond_3

    sget-object v5, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v5, v5, v3

    if-lt v5, v8, :cond_3

    .line 1152
    sget v5, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    if-nez v5, :cond_b

    :goto_4
    sput v3, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    .line 1153
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->showPhone()V

    goto/16 :goto_1

    :cond_b
    move v3, v4

    .line 1152
    goto :goto_4

    .line 1185
    :sswitch_d
    sget-object v5, Lcom/syu/bt/db/Bt_Info;->b:[Ljava/lang/String;

    add-int/lit16 v6, v0, -0x295e

    aget-object v2, v5, v6

    .line 1186
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v5}, Lcom/syu/bt/page/Page_Contact;->getPositionForSection(I)I

    move-result v1

    .line 1187
    .local v1, "position":I
    iget-object v5, p0, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v5, :cond_3

    .line 1188
    iget-object v5, p0, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    if-eqz v5, :cond_3

    .line 1189
    const-string v5, "#"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1190
    iget-object v3, p0, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JGridView;->scrollToPosition(I)V

    goto/16 :goto_1

    .line 1192
    :cond_c
    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    .line 1193
    iget-object v4, p0, Lcom/syu/bt/page/Page_Contact;->mRun_NotifyDataSetChanged:Ljava/lang/Runnable;

    invoke-static {v4}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 1194
    iget-object v4, p0, Lcom/syu/bt/page/Page_Contact;->mRun_NotifyDataSetChanged:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1f4

    invoke-static {v3, v4, v6, v7}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 1195
    iget-object v3, p0, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v3, v3, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    if-eqz v3, :cond_3

    .line 1196
    iget-object v3, p0, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v3, v1}, Lcom/lsec/core/frame/ctrl/JGridView;->scrollToPosition(I)V

    goto/16 :goto_1

    .line 1213
    .end local v1    # "position":I
    .end local v2    # "s":Ljava/lang/String;
    :cond_d
    iget-object v3, p0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v3, p1}, Lcom/syu/bt/Act_Bt;->MenuClick(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_0

    .line 1052
    :sswitch_data_0
    .sparse-switch
        0x278f -> :sswitch_7
        0x27ec -> :sswitch_c
        0x27fa -> :sswitch_6
        0x27fb -> :sswitch_1
        0x27fc -> :sswitch_1
        0x27fd -> :sswitch_2
        0x27fe -> :sswitch_5
        0x27ff -> :sswitch_0
        0x2800 -> :sswitch_9
        0x2801 -> :sswitch_a
        0x2802 -> :sswitch_b
        0x2803 -> :sswitch_b
        0x2804 -> :sswitch_b
        0x2805 -> :sswitch_b
        0x2806 -> :sswitch_b
        0x2807 -> :sswitch_b
        0x2808 -> :sswitch_b
        0x2809 -> :sswitch_b
        0x280a -> :sswitch_b
        0x280b -> :sswitch_b
        0x280c -> :sswitch_b
        0x280d -> :sswitch_b
        0x280e -> :sswitch_3
        0x280f -> :sswitch_4
        0x2937 -> :sswitch_8
        0x295e -> :sswitch_d
        0x295f -> :sswitch_d
        0x2960 -> :sswitch_d
        0x2961 -> :sswitch_d
        0x2962 -> :sswitch_d
        0x2963 -> :sswitch_d
        0x2964 -> :sswitch_d
        0x2965 -> :sswitch_d
        0x2966 -> :sswitch_d
        0x2967 -> :sswitch_d
        0x2968 -> :sswitch_d
        0x2969 -> :sswitch_d
        0x296a -> :sswitch_d
        0x296b -> :sswitch_d
        0x296c -> :sswitch_d
        0x296d -> :sswitch_d
        0x296e -> :sswitch_d
        0x296f -> :sswitch_d
        0x2970 -> :sswitch_d
        0x2971 -> :sswitch_d
        0x2972 -> :sswitch_d
        0x2973 -> :sswitch_d
        0x2974 -> :sswitch_d
        0x2975 -> :sswitch_d
        0x2976 -> :sswitch_d
        0x2977 -> :sswitch_d
        0x2978 -> :sswitch_d
    .end sparse-switch
.end method

.method public ResponseLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1219
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1220
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->clearPageFocus()V

    .line 1221
    packed-switch v0, :pswitch_data_0

    .line 1228
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 1223
    :pswitch_0
    iget-object v1, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 1224
    iget-object v1, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    const-string v2, ""

    sput-object v2, Lcom/syu/bt/page/Page_Contact;->strSearch:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1221
    :pswitch_data_0
    .packed-switch 0x27ff
        :pswitch_0
    .end packed-switch
.end method

.method protected clearContacts()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1323
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v0, :cond_2

    .line 1324
    sget v0, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    if-nez v0, :cond_1

    .line 1325
    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1326
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_is_delete"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    .line 1335
    :cond_0
    :goto_0
    return-void

    .line 1327
    :cond_1
    sget v0, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    if-ne v0, v3, :cond_0

    .line 1328
    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1329
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_is_delete"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    goto :goto_0

    .line 1332
    :cond_2
    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1333
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_is_delete"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public clearEditFocus()V
    .locals 2

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/syu/bt/page/Page_Contact;->editFocus:Z

    if-eqz v0, :cond_0

    .line 1838
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1839
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v1, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/syu/bt/App_Bt;->hideInput(Landroid/view/View;)V

    .line 1841
    :cond_0
    return-void
.end method

.method public clearPageFocus()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 1844
    iput v0, p0, Lcom/syu/bt/page/Page_Contact;->mPosMoveTo:I

    .line 1845
    iput v0, p0, Lcom/syu/bt/page/Page_Contact;->mPosFocusCpy:I

    .line 1846
    sget-object v0, Lcom/syu/bt/page/Page_Contact;->mClick:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1847
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isZhangConfig()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v1, "HAODA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1848
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    if-eqz v0, :cond_1

    .line 1849
    const-string v0, "gdy6666"

    const-string v1, " *****004 Page_Con notifyDataSetChanged    "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->notifyDataSetChanged()V

    .line 1853
    :cond_1
    return-void
.end method

.method public dialByKey()Z
    .locals 3

    .prologue
    const/16 v2, 0x281e

    .line 1925
    iget-boolean v0, p0, Lcom/syu/bt/page/Page_Contact;->bTop:Z

    if-eqz v0, :cond_1

    .line 1926
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, p0, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v0, v1}, Lcom/syu/bt/Act_Bt;->isFocus(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1927
    sget-object v0, Lcom/syu/bt/page/Page_Contact;->mClick:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1928
    sget-object v0, Lcom/syu/bt/page/Page_Contact;->mClick:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->setNum(Ljava/lang/String;)V

    .line 1930
    :cond_0
    const/4 v0, 0x1

    .line 1934
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public endDownload()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 1338
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->uiUtil:Lcom/syu/bt/util/UIUtil;

    invoke-virtual {v0}, Lcom/syu/bt/util/UIUtil;->disLoading()V

    .line 1340
    sget-object v0, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v1, "BT_23NEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1341
    const-string v0, "save2"

    const-string v1, " 00 page_Contact.endDownload   notifyDataSetChanged "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->mRun_NotifyDataSetChanged:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 1343
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/syu/bt/page/Page_Contact;->mRun_NotifyDataSetChanged:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 1346
    :cond_0
    const-string v0, "save2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " 11 page_Contact.endDownload  bAutoDownPhoneBook = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/syu/bt/App_Bt;->bAutoDownPhoneBook:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bAutoSavePhoneBook = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/syu/bt/App_Bt;->bAutoSavePhoneBook:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bAutoDownPhoneBook:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/syu/bt/App_Bt;->bAutoSavePhoneBook:Z

    if-nez v0, :cond_3

    .line 1348
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v0, :cond_4

    .line 1351
    const-string v0, "save2"

    const-string v1, " 22 page_Contact.endDownload   notifyDataSetChanged "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1353
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_need_save"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    .line 1360
    :cond_3
    :goto_0
    return-void

    .line 1355
    :cond_4
    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1357
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_need_save"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 11
    .param p1, "sectionIndex"    # I

    .prologue
    const/16 v10, 0x281c

    const/4 v9, 0x0

    .line 949
    const/4 v0, 0x0

    .line 950
    .local v0, "i":I
    sget-boolean v5, Lcom/syu/bt/App_Bt;->bIsFavList:Z

    if-eqz v5, :cond_3

    .line 952
    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 996
    :cond_0
    const/4 v5, -0x1

    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_1
    return v5

    .line 952
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 953
    .local v2, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 954
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Lcom/syu/bt/util/HanziToPinyin;->getHeadPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 955
    .local v4, "pinyin":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 956
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, p1, :cond_2

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    move v5, v0

    .line 957
    goto :goto_1

    .line 960
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 964
    .end local v2    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "pinyin":Ljava/lang/String;
    :cond_3
    sget-boolean v5, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v5, :cond_5

    sget v5, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 966
    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 967
    .restart local v2    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 968
    .restart local v3    # "name":Ljava/lang/String;
    invoke-static {v3}, Lcom/syu/bt/util/HanziToPinyin;->getHeadPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 969
    .restart local v4    # "pinyin":Ljava/lang/String;
    const-string v6, "gdy4"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " *** 001    pinyin = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 971
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, p1, :cond_4

    .line 972
    const-string v5, "gdy4"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " *** 002 pinyin  charAt = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    move v5, v0

    .line 973
    goto/16 :goto_1

    .line 977
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 980
    .end local v2    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "pinyin":Ljava/lang/String;
    :cond_5
    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 981
    .restart local v2    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 982
    .restart local v3    # "name":Ljava/lang/String;
    invoke-static {v3}, Lcom/syu/bt/util/HanziToPinyin;->getHeadPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 983
    .restart local v4    # "pinyin":Ljava/lang/String;
    const-string v6, "gdy4"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " *** 001    pinyin = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 985
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, p1, :cond_6

    .line 986
    const-string v5, "gdy4"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " *** 002 pinyin  charAt = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    move v5, v0

    .line 987
    goto/16 :goto_1

    .line 991
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public init()V
    .locals 14

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    const/4 v13, 0x1

    .line 402
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const/16 v12, 0x275e

    invoke-virtual {v9, v12}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v8

    .line 403
    .local v8, "view_40":Landroid/view/View;
    if-eqz v8, :cond_0

    .line 404
    sget v9, Lcom/syu/bt/App_Bt;->iDensity:I

    const/16 v12, 0xf0

    if-lt v9, v12, :cond_10

    move v9, v10

    :goto_0
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 406
    :cond_0
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const/16 v12, 0x27e6

    invoke-virtual {v9, v12}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    .line 407
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const/16 v12, 0x27e7

    invoke-virtual {v9, v12}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v9, p0, Lcom/syu/bt/page/Page_Contact;->tvContact_Num:Lcom/lsec/core/frame/ctrl/JText;

    .line 408
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const/16 v12, 0x27ec

    invoke-virtual {v9, v12}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v9, p0, Lcom/syu/bt/page/Page_Contact;->vContact_Phone:Lcom/lsec/core/frame/ctrl/JButton;

    .line 409
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const/16 v12, 0x27ed

    invoke-virtual {v9, v12}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v9, p0, Lcom/syu/bt/page/Page_Contact;->tvTxtPhone1:Lcom/lsec/core/frame/ctrl/JText;

    .line 410
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const/16 v12, 0x27ee

    invoke-virtual {v9, v12}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v9, p0, Lcom/syu/bt/page/Page_Contact;->tvTxtPhone1_p:Lcom/lsec/core/frame/ctrl/JText;

    .line 411
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const/16 v12, 0x27ef

    invoke-virtual {v9, v12}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v9, p0, Lcom/syu/bt/page/Page_Contact;->tvTxtPhone2:Lcom/lsec/core/frame/ctrl/JText;

    .line 412
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const/16 v12, 0x27f0

    invoke-virtual {v9, v12}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v9, p0, Lcom/syu/bt/page/Page_Contact;->tvTxtPhone2_p:Lcom/lsec/core/frame/ctrl/JText;

    .line 415
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const/16 v12, 0x293b

    invoke-virtual {v9, v12}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v6

    .line 416
    .local v6, "viewPhone1":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 417
    sget-boolean v9, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v9, :cond_11

    move v9, v11

    :goto_1
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 418
    :cond_1
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const/16 v12, 0x293c

    invoke-virtual {v9, v12}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v7

    .line 419
    .local v7, "viewPhone2":Landroid/view/View;
    if-eqz v7, :cond_2

    .line 420
    sget-boolean v9, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v9, :cond_12

    move v9, v10

    :goto_2
    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 422
    :cond_2
    sget-boolean v9, Lcom/syu/bt/App_Bt;->bLinkTwoPhone_test:Z

    if-eqz v9, :cond_4

    .line 423
    if-eqz v6, :cond_3

    .line 424
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 425
    :cond_3
    if-eqz v7, :cond_4

    .line 426
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 428
    :cond_4
    sget-object v9, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v10, "BT_23NEW"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 429
    iget-object v9, p0, Lcom/syu/bt/page/Page_Contact;->tvContact_Num:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v9, :cond_5

    .line 430
    iget-object v9, p0, Lcom/syu/bt/page/Page_Contact;->tvContact_Num:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v10, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 431
    :cond_5
    iget-object v9, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    if-eqz v9, :cond_6

    .line 432
    iget-object v9, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    sget-object v10, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 435
    :cond_6
    iget-object v9, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    if-eqz v9, :cond_8

    .line 436
    iget-object v9, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getInputType()I

    move-result v9

    iput v9, p0, Lcom/syu/bt/page/Page_Contact;->mInputType:I

    .line 437
    iget-object v9, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->setSingleLine()V

    .line 438
    iget-object v9, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    invoke-virtual {v9, v13}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 439
    iget-object v9, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    invoke-virtual {v9, v13}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 440
    iget-object v9, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 441
    iget-object v9, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 442
    sget-object v9, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v10, "TZY_NEW"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13

    sget-object v9, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    const-string v10, "UI5"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 443
    iget-object v9, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    const/high16 v10, -0x1000000

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 448
    :cond_7
    :goto_3
    iget-object v9, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v10

    iget-object v10, v10, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v11, "bt_contact_search"

    invoke-virtual {v10, v11}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v9, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    new-instance v10, Lcom/syu/bt/page/Page_Contact$MyTextWatcher;

    iget-object v11, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    invoke-direct {v10, p0, v11}, Lcom/syu/bt/page/Page_Contact$MyTextWatcher;-><init>(Lcom/syu/bt/page/Page_Contact;Landroid/widget/EditText;)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 450
    iget-object v9, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    new-instance v10, Lcom/syu/bt/page/Page_Contact$7;

    invoke-direct {v10, p0}, Lcom/syu/bt/page/Page_Contact$7;-><init>(Lcom/syu/bt/page/Page_Contact;)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 456
    iget-object v9, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    new-instance v10, Lcom/syu/bt/page/Page_Contact$8;

    invoke-direct {v10, p0}, Lcom/syu/bt/page/Page_Contact$8;-><init>(Lcom/syu/bt/page/Page_Contact;)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 470
    sget-object v9, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v10, "TZY_NEW"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 471
    iget-object v9, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v10, v10, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-static {v10}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 474
    :cond_8
    const-string v9, "gdy6666"

    const-string v10, " ***** Page_Cont init    "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const/16 v10, 0x2811

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/lsec/core/frame/ctrl/JGridView;

    iput-object v9, p0, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    .line 478
    iget-object v9, p0, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v9, :cond_9

    .line 479
    iget-object v9, p0, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    new-instance v10, Lcom/syu/bt/page/Page_Contact$9;

    invoke-direct {v10, p0}, Lcom/syu/bt/page/Page_Contact$9;-><init>(Lcom/syu/bt/page/Page_Contact;)V

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JGridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 520
    sget-object v9, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v10, "TZY_OEM"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 523
    :try_start_0
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const-string v10, "grid_verthumb"

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v11

    iget-object v11, v11, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v12

    iget-object v12, v12, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v9, v10, v11, v12}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 524
    .local v0, "drawableVerthumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_9

    .line 525
    const-class v9, Landroid/view/View;

    const-string v10, "mScrollCache"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 526
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 527
    iget-object v9, p0, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 528
    .local v5, "scrollabilityCache":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "scrollBar"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 529
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 530
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 531
    .local v4, "scrollBarDrawable":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "mVerticalThumb"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 532
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 533
    invoke-virtual {v2, v4, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    .end local v0    # "drawableVerthumb":Landroid/graphics/drawable/Drawable;
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "scrollBarDrawable":Ljava/lang/Object;
    .end local v5    # "scrollabilityCache":Ljava/lang/Object;
    :cond_9
    :goto_4
    sget-boolean v9, Lcom/syu/bt/App_Bt;->bShowHeadIco:Z

    if-eqz v9, :cond_a

    .line 544
    iget-object v9, p0, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    new-instance v10, Lcom/syu/bt/page/Page_Contact$10;

    invoke-direct {v10, p0}, Lcom/syu/bt/page/Page_Contact$10;-><init>(Lcom/syu/bt/page/Page_Contact;)V

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 562
    iget-object v9, p0, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    new-instance v10, Lcom/syu/bt/page/Page_Contact$11;

    invoke-direct {v10, p0}, Lcom/syu/bt/page/Page_Contact$11;-><init>(Lcom/syu/bt/page/Page_Contact;)V

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JGridView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 595
    :cond_a
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    .line 596
    const/16 v10, 0x2931

    .line 595
    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/syu/bt/ctrl/SlideBarView;

    iput-object v9, p0, Lcom/syu/bt/page/Page_Contact;->mSlideBar:Lcom/syu/bt/ctrl/SlideBarView;

    .line 597
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    .line 598
    const/16 v10, 0x2932

    .line 597
    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/syu/bt/page/Page_Contact;->tvLetterTitle:Landroid/widget/TextView;

    .line 599
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    .line 600
    const/16 v10, 0x2812

    .line 599
    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v9, p0, Lcom/syu/bt/page/Page_Contact;->tvTxtSum:Lcom/lsec/core/frame/ctrl/JText;

    .line 601
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    .line 602
    const/16 v10, 0x2813

    .line 601
    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v9, p0, Lcom/syu/bt/page/Page_Contact;->tvTxtSumStr:Lcom/lsec/core/frame/ctrl/JText;

    .line 604
    iget-object v9, p0, Lcom/syu/bt/page/Page_Contact;->mSlideBar:Lcom/syu/bt/ctrl/SlideBarView;

    if-eqz v9, :cond_b

    .line 605
    iget-object v9, p0, Lcom/syu/bt/page/Page_Contact;->mSlideBar:Lcom/syu/bt/ctrl/SlideBarView;

    iget-object v10, p0, Lcom/syu/bt/page/Page_Contact;->tvLetterTitle:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Lcom/syu/bt/ctrl/SlideBarView;->setTextView(Landroid/widget/TextView;)V

    .line 606
    iget-object v9, p0, Lcom/syu/bt/page/Page_Contact;->mSlideBar:Lcom/syu/bt/ctrl/SlideBarView;

    new-instance v10, Lcom/syu/bt/page/Page_Contact$12;

    invoke-direct {v10, p0}, Lcom/syu/bt/page/Page_Contact$12;-><init>(Lcom/syu/bt/page/Page_Contact;)V

    invoke-virtual {v9, v10}, Lcom/syu/bt/ctrl/SlideBarView;->setOnTouchLettersChangedListener(Lcom/syu/bt/ctrl/SlideBarView$OnTouchLettersChangedListener;)V

    .line 628
    :cond_b
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const/16 v10, 0x295c

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v9, p0, Lcom/syu/bt/page/Page_Contact;->vContact_View_move:Lcom/lsec/core/frame/ctrl/JButton;

    .line 629
    iget-object v9, p0, Lcom/syu/bt/page/Page_Contact;->vContact_View_move:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v9, :cond_c

    .line 630
    iget-object v9, p0, Lcom/syu/bt/page/Page_Contact;->vContact_View_move:Lcom/lsec/core/frame/ctrl/JButton;

    new-instance v10, Lcom/syu/bt/page/Page_Contact$13;

    invoke-direct {v10, p0}, Lcom/syu/bt/page/Page_Contact$13;-><init>(Lcom/syu/bt/page/Page_Contact;)V

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 703
    :cond_c
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const/16 v10, 0x295d

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v9, p0, Lcom/syu/bt/page/Page_Contact;->vContact_View_move1920:Lcom/lsec/core/frame/ctrl/JButton;

    .line 704
    iget-object v9, p0, Lcom/syu/bt/page/Page_Contact;->vContact_View_move1920:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v9, :cond_d

    .line 705
    iget-object v9, p0, Lcom/syu/bt/page/Page_Contact;->vContact_View_move1920:Lcom/lsec/core/frame/ctrl/JButton;

    new-instance v10, Lcom/syu/bt/page/Page_Contact$14;

    invoke-direct {v10, p0}, Lcom/syu/bt/page/Page_Contact$14;-><init>(Lcom/syu/bt/page/Page_Contact;)V

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 785
    :cond_d
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const/16 v10, 0x29a2

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/syu/bt/page/Page_Contact;->vNoData:Landroid/view/View;

    .line 786
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 787
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const/16 v10, 0x28bf

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 788
    .local v3, "lay":Landroid/widget/LinearLayout;
    if-eqz v3, :cond_e

    .line 789
    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 790
    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 793
    .end local v3    # "lay":Landroid/widget/LinearLayout;
    :cond_e
    sget v9, Lcom/syu/bt/App_Bt;->color:I

    invoke-virtual {p0, v9}, Lcom/syu/bt/page/Page_Contact;->setButtonColor(I)V

    .line 794
    sget v9, Lcom/syu/bt/App_Bt;->mColorType:I

    invoke-virtual {p0, v9}, Lcom/syu/bt/page/Page_Contact;->setDayOrNight(I)V

    .line 797
    sget-object v9, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v10, "TZY_BT_1920"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 798
    const/16 v9, -0x5bff

    iput v9, p0, Lcom/syu/bt/page/Page_Contact;->searchColor:I

    .line 800
    :cond_f
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const/16 v10, 0x2810

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/syu/bt/page/Page_Contact;->mViewKey:Landroid/view/View;

    .line 801
    return-void

    .end local v6    # "viewPhone1":Landroid/view/View;
    .end local v7    # "viewPhone2":Landroid/view/View;
    :cond_10
    move v9, v11

    .line 404
    goto/16 :goto_0

    .restart local v6    # "viewPhone1":Landroid/view/View;
    :cond_11
    move v9, v10

    .line 417
    goto/16 :goto_1

    .restart local v7    # "viewPhone2":Landroid/view/View;
    :cond_12
    move v9, v11

    .line 420
    goto/16 :goto_2

    .line 445
    :cond_13
    sget-object v9, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v10, "BT_8581"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 446
    iget-object v9, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setHintTextColor(I)V

    goto/16 :goto_3

    .line 535
    :catch_0
    move-exception v1

    .line 536
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4
.end method

.method public invilatePlayList()V
    .locals 4

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v0, :cond_0

    .line 1652
    const-string v0, "gdy6666"

    const-string v1, " ***** invilatePlayList   notifyDataSetChanged "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->mRun_NotifyDataSetChanged:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 1654
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/syu/bt/page/Page_Contact;->mRun_NotifyDataSetChanged:Ljava/lang/Runnable;

    const-wide/16 v2, 0xdac

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 1657
    :cond_0
    return-void
.end method

.method public isDownloadDelay(I)Z
    .locals 8
    .param p1, "delay"    # I

    .prologue
    .line 1254
    const/4 v2, 0x0

    .line 1255
    .local v2, "flag":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1256
    .local v0, "curClickTime":J
    sget-wide v4, Lcom/syu/bt/page/Page_Contact;->lastDownloadTime:J

    sub-long v4, v0, v4

    int-to-long v6, p1

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 1257
    const/4 v2, 0x1

    .line 1259
    :cond_0
    const-string v3, "btttt"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0000 isDownloading curClickTime ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " lastDownloadTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v6, Lcom/syu/bt/page/Page_Contact;->lastDownloadTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    sput-wide v0, Lcom/syu/bt/page/Page_Contact;->lastDownloadTime:J

    .line 1261
    return v2
.end method

.method public isNumber(Ljava/lang/String;)Z
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 831
    const-string v1, "[0-9]*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 832
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public notifyDataSetChanged()V
    .locals 6

    .prologue
    .line 814
    const-string v1, "bttt"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " Page_contact   notifyDataSetChanged  myAlbum.size"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/syu/bt/App_Bt;->myAlbum:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object v1, p0, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v1, :cond_0

    .line 817
    iget-object v1, p0, Lcom/syu/bt/page/Page_Contact;->mRun_NotifyDataSetChanged:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 818
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/syu/bt/page/Page_Contact;->mRun_NotifyDataSetChanged:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-static {v1, v2, v4, v5}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 822
    :cond_0
    iget-object v1, p0, Lcom/syu/bt/page/Page_Contact;->tvContact_Num:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v1, :cond_2

    .line 823
    const-string v0, ""

    .line 824
    .local v0, "str_Num":Ljava/lang/String;
    sget-object v1, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 825
    sget-object v1, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 826
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 827
    :cond_1
    iget-object v1, p0, Lcom/syu/bt/page/Page_Contact;->tvContact_Num:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 829
    .end local v0    # "str_Num":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/syu/bt/page/Page_Contact;->bTop:Z

    .line 355
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    const-string v1, ""

    sput-object v1, Lcom/syu/bt/page/Page_Contact;->strSearch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 358
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v1, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/syu/bt/App_Bt;->hideInput(Landroid/view/View;)V

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->uiUtil:Lcom/syu/bt/util/UIUtil;

    invoke-virtual {v0}, Lcom/syu/bt/util/UIUtil;->disLoading()V

    .line 362
    return-void
.end method

.method public pressGridItem(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/ctrl/JPage;Z)V
    .locals 4
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "pagePressed"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p3, "pressed"    # Z

    .prologue
    .line 1686
    if-eqz p3, :cond_4

    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    .line 1687
    .local v0, "bFocus":Z
    :goto_0
    invoke-virtual {p1, v0}, Lcom/lsec/core/frame/ctrl/JPage;->setFocus(Z)V

    .line 1689
    const/16 v3, 0x2815

    invoke-virtual {p1, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    .line 1690
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 1691
    instance-of v3, v2, Lcom/lsec/core/frame/ctrl/JView;

    if-eqz v3, :cond_0

    .line 1692
    check-cast v2, Lcom/lsec/core/frame/ctrl/JView;

    .end local v2    # "view":Landroid/view/View;
    invoke-virtual {v2, v0}, Lcom/lsec/core/frame/ctrl/JView;->setFocus(Z)V

    .line 1695
    :cond_0
    const/16 v3, 0x2827

    invoke-virtual {p1, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    .line 1696
    .restart local v2    # "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1697
    instance-of v3, v2, Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v3, :cond_1

    .line 1698
    check-cast v2, Lcom/lsec/core/frame/ctrl/JButton;

    .end local v2    # "view":Landroid/view/View;
    invoke-virtual {v2, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 1701
    :cond_1
    const/16 v3, 0x281f

    invoke-virtual {p1, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 1702
    .local v1, "txt":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_2

    .line 1703
    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JText;->setFocus(Z)V

    .line 1705
    :cond_2
    const/16 v3, 0x2820

    invoke-virtual {p1, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "txt":Lcom/lsec/core/frame/ctrl/JText;
    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 1706
    .restart local v1    # "txt":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_3

    .line 1707
    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JText;->setFocus(Z)V

    .line 1708
    :cond_3
    return-void

    .line 1686
    .end local v0    # "bFocus":Z
    .end local v1    # "txt":Lcom/lsec/core/frame/ctrl/JText;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryContacts(Ljava/lang/String;)V
    .locals 13
    .param p1, "qry"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x281e

    const/16 v11, 0x281c

    .line 876
    const-string v7, "con3"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " 00 resetList queryContacts qry = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 878
    .local v1, "listContact_p":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    sget-boolean v7, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v7, :cond_0

    sget v7, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 879
    sget-object v7, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v7, v7, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 884
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 885
    invoke-virtual {p0, v1}, Lcom/syu/bt/page/Page_Contact;->resetList(Ljava/util/List;)V

    .line 946
    :goto_1
    return-void

    .line 881
    :cond_0
    sget-object v7, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v7, v7, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 889
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 890
    .local v0, "listContact":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    sget-object v7, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v8, "BT_23NEW"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0, p1}, Lcom/syu/bt/page/Page_Contact;->isNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 891
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 903
    const-string v7, "con3"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " 22 resetList queryContacts listContact = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    invoke-virtual {p0, v0}, Lcom/syu/bt/page/Page_Contact;->resetList(Ljava/util/List;)V

    goto :goto_1

    .line 891
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 892
    .local v2, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 893
    .local v4, "number":Ljava/lang/String;
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 894
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Lcom/syu/bt/util/HanziToPinyin;->getHeadPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 896
    .local v5, "pinyin":Ljava/lang/String;
    const-string v8, "gdy10"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " 00 query number = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  pinyin = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-- qry = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 898
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 899
    :cond_4
    invoke-virtual {p0, p1, v5}, Lcom/syu/bt/page/Page_Contact;->queryT9(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 900
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 907
    .end local v2    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "pinyin":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, p1}, Lcom/syu/bt/page/Page_Contact;->isNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 908
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_7

    .line 918
    const-string v7, "con3"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " 33 resetList queryContacts listContact = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    invoke-virtual {p0, v0}, Lcom/syu/bt/page/Page_Contact;->resetList(Ljava/util/List;)V

    goto/16 :goto_1

    .line 908
    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 909
    .restart local v2    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 910
    .restart local v4    # "number":Ljava/lang/String;
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isZhangConfig()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 911
    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 912
    :cond_8
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 914
    :cond_9
    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 915
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 921
    .end local v2    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v4    # "number":Ljava/lang/String;
    :cond_a
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_b
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_c

    .line 943
    const-string v7, "con3"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " 44 resetList queryContacts listContact = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    invoke-virtual {p0, v0}, Lcom/syu/bt/page/Page_Contact;->resetList(Ljava/util/List;)V

    goto/16 :goto_1

    .line 921
    :cond_c
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 922
    .restart local v2    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 924
    .restart local v3    # "name":Ljava/lang/String;
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isZhangConfig()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 925
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 926
    .local v6, "ss":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 927
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 928
    invoke-static {v3}, Lcom/syu/bt/util/HanziToPinyin;->getHeadPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 929
    invoke-static {v3}, Lcom/syu/bt/util/HanziToPinyin;->getHeadPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 930
    :cond_d
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 934
    .end local v6    # "ss":Ljava/lang/String;
    :cond_e
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 935
    invoke-static {v3}, Lcom/syu/bt/util/HanziToPinyin;->getHeadPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 937
    :cond_f
    const-string v8, "con3"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " 34 resetList queryContacts toUpperCase = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " toUpperCase = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " getHeadPinyin = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Lcom/syu/bt/util/HanziToPinyin;->getHeadPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4
.end method

.method public queryT9(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "qry"    # Ljava/lang/String;
    .param p2, "pinyin"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 845
    const-string v4, "gdy10"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 00 queryT9 qry = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pinyin = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    const/16 v4, 0x30

    invoke-virtual {p0, p1, v4}, Lcom/syu/bt/page/Page_Contact;->strHaveChar(Ljava/lang/String;C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 866
    :cond_0
    :goto_0
    return v3

    .line 848
    :cond_1
    const/16 v4, 0x31

    invoke-virtual {p0, p1, v4}, Lcom/syu/bt/page/Page_Contact;->strHaveChar(Ljava/lang/String;C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 851
    const/4 v1, 0x0

    .line 852
    .local v1, "j":I
    sget-object v4, Lcom/syu/bt/page/Page_Contact;->mStrT9:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x31

    aget-object v2, v4, v5

    .line 853
    .local v2, "t9":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/syu/bt/page/Page_Contact;->strHaveChar(Ljava/lang/String;C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 854
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 855
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/syu/bt/page/Page_Contact;->strHaveChar(Ljava/lang/String;C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 856
    add-int/lit8 v1, v1, 0x1

    .line 857
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v1, v4, :cond_2

    .line 858
    const/4 v3, 0x1

    goto :goto_0

    .line 859
    :cond_2
    sget-object v4, Lcom/syu/bt/page/Page_Contact;->mStrT9:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x31

    aget-object v2, v4, v5

    .line 861
    :cond_3
    const-string v4, "gdy10"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 01 queryT9 t9 = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " charAt = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " i ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " j ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public removePinYinSearch()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->mRunnableSearchRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 320
    return-void
.end method

.method public resetButtonState(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    const/16 v9, 0x2801

    const/16 v8, 0x2800

    const/4 v5, 0x1

    const/16 v7, 0x2826

    const/4 v6, 0x0

    .line 266
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bIsFavList:Z

    if-eqz v4, :cond_3

    .line 267
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    .line 268
    .local v1, "btn":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v1, :cond_0

    .line 269
    invoke-virtual {v1, v5}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "btn":Lcom/lsec/core/frame/ctrl/JButton;
    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    .line 271
    .restart local v1    # "btn":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v1, :cond_1

    .line 272
    invoke-virtual {v1, v6}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 282
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->removePinYinSearch()V

    .line 283
    const/16 v4, 0x1b

    new-array v0, v4, [Ljava/lang/String;

    .line 284
    .local v0, "abc":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v4, v4, Lcom/syu/bt/db/Bt_Info;->mPinYin:[C

    array-length v4, v4

    if-lt v2, v4, :cond_5

    .line 291
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 292
    const/4 v2, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_6

    .line 315
    :cond_2
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->showPinYinSearch()V

    .line 316
    return-void

    .line 274
    .end local v0    # "abc":[Ljava/lang/String;
    .end local v1    # "btn":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    .line 275
    .restart local v1    # "btn":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v1, :cond_4

    .line 276
    invoke-virtual {v1, v6}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 277
    :cond_4
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "btn":Lcom/lsec/core/frame/ctrl/JButton;
    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    .line 278
    .restart local v1    # "btn":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v1, :cond_1

    .line 279
    invoke-virtual {v1, v5}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    goto :goto_0

    .line 286
    .restart local v0    # "abc":[Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_5
    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v4, v4, Lcom/syu/bt/db/Bt_Info;->mPinYin:[C

    const/16 v5, 0x20

    aput-char v5, v4, v2

    .line 287
    sget-object v4, Lcom/syu/bt/db/Bt_Info;->b:[Ljava/lang/String;

    aget-object v4, v4, v2

    aput-object v4, v0, v2

    .line 284
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 295
    :cond_6
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    const-string v5, ""

    invoke-virtual {v4, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 296
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    const/16 v5, 0x281d

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 297
    .local v3, "pinyin":C
    const/16 v4, 0x41

    if-lt v3, v4, :cond_8

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_8

    .line 298
    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v4, v4, Lcom/syu/bt/db/Bt_Info;->mPinYin:[C

    add-int/lit8 v5, v3, -0x40

    aput-char v3, v4, v5

    .line 299
    add-int/lit8 v4, v3, -0x40

    aget-object v4, v0, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 301
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    add-int/lit8 v5, v3, -0x40

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 302
    add-int/lit8 v4, v3, -0x40

    const-string v5, ""

    aput-object v5, v0, v4

    .line 292
    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 305
    :cond_8
    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v4, v4, Lcom/syu/bt/db/Bt_Info;->mPinYin:[C

    const/16 v5, 0x23

    aput-char v5, v4, v6

    .line 306
    aget-object v4, v0, v6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 308
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    const-string v5, "0"

    invoke-virtual {v4, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 309
    const-string v4, ""

    aput-object v4, v0, v6

    goto :goto_3
.end method

.method public resetList()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1790
    sget-object v1, Lcom/syu/bt/page/Page_Contact;->mClick:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1791
    iput v2, p0, Lcom/syu/bt/page/Page_Contact;->mPosMoveTo:I

    .line 1792
    iput v2, p0, Lcom/syu/bt/page/Page_Contact;->mPosFocusCpy:I

    .line 1793
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v1, :cond_3

    .line 1795
    sget-object v1, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v1}, Lcom/syu/bt/db/Bt_Info;->sortContact()V

    .line 1796
    sget v1, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    if-nez v1, :cond_2

    .line 1797
    sget-object v1, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/syu/bt/page/Page_Contact;->resetList(Ljava/util/List;)V

    .line 1827
    :goto_0
    iget-object v1, p0, Lcom/syu/bt/page/Page_Contact;->tvContact_Num:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v1, :cond_1

    .line 1828
    const-string v0, ""

    .line 1829
    .local v0, "str_Num":Ljava/lang/String;
    sget-object v1, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1830
    sget-object v1, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1831
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1832
    :cond_0
    iget-object v1, p0, Lcom/syu/bt/page/Page_Contact;->tvContact_Num:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1834
    .end local v0    # "str_Num":Ljava/lang/String;
    :cond_1
    return-void

    .line 1799
    :cond_2
    sget-object v1, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/syu/bt/page/Page_Contact;->resetList(Ljava/util/List;)V

    goto :goto_0

    .line 1801
    :cond_3
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bIsFavList:Z

    if-eqz v1, :cond_4

    .line 1802
    sget-object v1, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v1}, Lcom/syu/bt/db/Bt_Info;->sortContact_Fav()V

    .line 1803
    sget-object v1, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/syu/bt/page/Page_Contact;->resetList(Ljava/util/List;)V

    goto :goto_0

    .line 1805
    :cond_4
    sget-object v1, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v1}, Lcom/syu/bt/db/Bt_Info;->sortContact()V

    .line 1806
    sget-object v1, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/syu/bt/page/Page_Contact;->resetList(Ljava/util/List;)V

    goto :goto_0
.end method

.method public resetList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 177
    const-string v2, "con3"

    const-string v3, " ** resetList  "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    invoke-virtual {p0, p1}, Lcom/syu/bt/page/Page_Contact;->resetButtonState(Ljava/util/List;)V

    .line 183
    :cond_0
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v2

    if-nez v2, :cond_5

    .line 184
    iget-object v2, p0, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/lsec/core/frame/app/MyApplication;->resetList(Lcom/lsec/core/frame/ctrl/JGridView;Ljava/util/List;)V

    .line 191
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 192
    iget-object v2, p0, Lcom/syu/bt/page/Page_Contact;->tvTxtSum:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v2, :cond_2

    .line 193
    iget-object v2, p0, Lcom/syu/bt/page/Page_Contact;->tvTxtSum:Lcom/lsec/core/frame/ctrl/JText;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v2, p0, Lcom/syu/bt/page/Page_Contact;->tvTxtSum:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v2, v1}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 196
    :cond_2
    iget-object v2, p0, Lcom/syu/bt/page/Page_Contact;->tvTxtSumStr:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v2, :cond_3

    .line 197
    iget-object v2, p0, Lcom/syu/bt/page/Page_Contact;->tvTxtSumStr:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v2, v1}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 206
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/syu/bt/page/Page_Contact;->vNoData:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 207
    iget-object v2, p0, Lcom/syu/bt/page/Page_Contact;->vNoData:Landroid/view/View;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 210
    :cond_4
    return-void

    .line 186
    :cond_5
    iget-object v2, p0, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-static {v2, p1}, Lcom/lsec/core/frame/app/MyApplication;->resetList(Lcom/lsec/core/frame/ctrl/JGridView;Ljava/util/List;)V

    .line 187
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v3, "BT_23NEW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    iget-object v2, p0, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v2, v1}, Lcom/lsec/core/frame/ctrl/JGridView;->scrollToPosition(I)V

    goto :goto_0

    .line 199
    :cond_6
    iget-object v2, p0, Lcom/syu/bt/page/Page_Contact;->tvTxtSum:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v2, :cond_7

    .line 200
    iget-object v2, p0, Lcom/syu/bt/page/Page_Contact;->tvTxtSum:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v2, v0}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 202
    :cond_7
    iget-object v2, p0, Lcom/syu/bt/page/Page_Contact;->tvTxtSumStr:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v2, :cond_3

    .line 203
    iget-object v2, p0, Lcom/syu/bt/page/Page_Contact;->tvTxtSumStr:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v2, v0}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto :goto_1

    :cond_8
    move v0, v1

    .line 207
    goto :goto_2
.end method

.method public resume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 122
    iget-object v2, p0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v2, v2, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-boolean v2, v2, Lcom/lsec/core/frame/app/MyActivity;->bTop:Z

    if-nez v2, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    sput-boolean v4, Lcom/syu/bt/App_Bt;->bIsFavList:Z

    .line 126
    iput-boolean v6, p0, Lcom/syu/bt/page/Page_Contact;->bTop:Z

    .line 127
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v2}, Lcom/syu/app/ipc/Bt_IpcObj;->recoverAppId()V

    .line 132
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v2, :cond_2

    .line 133
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->showPhone()V

    .line 134
    :cond_2
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->resetList()V

    .line 135
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-boolean v2, v2, Lcom/syu/bt/App_Bt;->bPopBtRingSet:Z

    if-eqz v2, :cond_3

    .line 136
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/syu/bt/App_Bt;->popBtRingSet(Z)V

    .line 138
    :cond_3
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bDelMenuFromBtAv:Z

    if-eqz v2, :cond_4

    .line 139
    iget-object v2, p0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v2, v2, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v2, v2, Lcom/lsec/core/frame/app/MyUi;->mPages:Landroid/util/SparseArray;

    const/16 v3, 0x2712

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JPage;

    .line 140
    .local v0, "pageMenu":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v0, :cond_4

    .line 141
    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JPage;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    .line 142
    invoke-virtual {v0, v4}, Lcom/lsec/core/frame/ctrl/JPage;->setVisibility(I)V

    .line 146
    .end local v0    # "pageMenu":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_4
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bAutoDownPhoneBook:Z

    if-nez v2, :cond_5

    sget-boolean v2, Lcom/syu/bt/App_Bt;->bDownloading:Z

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isZhangConfig()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 147
    iget-object v2, p0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v2, v2, Lcom/syu/bt/Act_Bt;->uiUtil:Lcom/syu/bt/util/UIUtil;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v4, "bt_download"

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/syu/bt/util/UIUtil;->showLoading(Ljava/lang/String;)V

    .line 157
    :cond_5
    iget-object v2, p0, Lcom/syu/bt/page/Page_Contact;->tvContact_Num:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v2, :cond_7

    .line 158
    const-string v1, ""

    .line 159
    .local v1, "str_Num":Ljava/lang/String;
    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    if-eqz v2, :cond_6

    .line 160
    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v3, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    :cond_6
    iget-object v2, p0, Lcom/syu/bt/page/Page_Contact;->tvContact_Num:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v2, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 164
    .end local v1    # "str_Num":Ljava/lang/String;
    :cond_7
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bDownloading:Z

    if-eqz v2, :cond_9

    .line 165
    iget-object v2, p0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v2, v2, Lcom/syu/bt/Act_Bt;->uiUtil:Lcom/syu/bt/util/UIUtil;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v4, "bt_download"

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/syu/bt/util/UIUtil;->showLoading(Ljava/lang/String;)V

    .line 169
    :cond_8
    :goto_1
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v3, "BT_23NEW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/syu/bt/page/Page_Contact;->mRun_NotifyDataSetChanged:Ljava/lang/Runnable;

    invoke-static {v2}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 171
    iget-object v2, p0, Lcom/syu/bt/page/Page_Contact;->mRun_NotifyDataSetChanged:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2bc

    invoke-static {v6, v2, v4, v5}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 166
    :cond_9
    sget-object v2, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrDelete:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 167
    iget-object v2, p0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v2, v2, Lcom/syu/bt/Act_Bt;->uiUtil:Lcom/syu/bt/util/UIUtil;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v4, "bt_deling"

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/syu/bt/util/UIUtil;->showLoading(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public scanContact()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 250
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v1, "db-operation-contact"

    iget-object v2, p0, Lcom/syu/bt/page/Page_Contact;->mRunnableQueryContact:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, v3}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    .line 251
    invoke-static {}, Lcom/syu/bt/App_Bt;->queryCallLog()V

    .line 252
    return-void
.end method

.method public scrollOk(Z)Z
    .locals 4
    .param p1, "bNotCareFocus"    # Z

    .prologue
    const/16 v3, 0x281e

    const/4 v1, 0x1

    .line 1909
    iget-boolean v0, p0, Lcom/syu/bt/page/Page_Contact;->bTop:Z

    if-eqz v0, :cond_2

    .line 1910
    iput-boolean v1, p0, Lcom/syu/bt/page/Page_Contact;->bRoolKey:Z

    .line 1911
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v2, p0, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v0, v2}, Lcom/syu/bt/Act_Bt;->isFocus(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    .line 1912
    :cond_0
    sget-object v0, Lcom/syu/bt/page/Page_Contact;->mClick:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1913
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v0, :cond_1

    .line 1914
    sget-object v0, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    sget v2, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    aget-object v0, v0, v2

    sput-object v0, Lcom/syu/bt/App_Bt;->sPhone_callin_mac:Ljava/lang/String;

    .line 1915
    :cond_1
    sget-object v0, Lcom/syu/bt/page/Page_Contact;->mClick:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->itemDial(Ljava/lang/String;)V

    move v0, v1

    .line 1921
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollToNext(Z)Z
    .locals 6
    .param p1, "bNotCareFocus"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1881
    iget-boolean v2, p0, Lcom/syu/bt/page/Page_Contact;->bTop:Z

    if-eqz v2, :cond_2

    .line 1882
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->clearEditFocus()V

    .line 1883
    iput-boolean v1, p0, Lcom/syu/bt/page/Page_Contact;->bRoolKey:Z

    .line 1885
    const-string v2, "key"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 00 pageContact scrollToNext isFocus = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v5, p0, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v4, v5}, Lcom/syu/bt/Act_Bt;->isFocus(Landroid/view/View;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bNotCareFocus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    iget-object v2, p0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v3, p0, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v2, v3}, Lcom/syu/bt/Act_Bt;->isFocus(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_2

    .line 1887
    :cond_0
    iget v2, p0, Lcom/syu/bt/page/Page_Contact;->mPosFocusCpy:I

    iget-object v3, p0, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget v3, v3, Lcom/lsec/core/frame/ctrl/JGridView;->mIndexFocus:I

    if-eq v2, v3, :cond_1

    .line 1888
    iget-object v2, p0, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget v2, v2, Lcom/lsec/core/frame/ctrl/JGridView;->mIndexFocus:I

    iput v2, p0, Lcom/syu/bt/page/Page_Contact;->mPosFocusCpy:I

    .line 1889
    iget v2, p0, Lcom/syu/bt/page/Page_Contact;->mPosFocusCpy:I

    iput v2, p0, Lcom/syu/bt/page/Page_Contact;->mPosMoveTo:I

    .line 1892
    :cond_1
    const-string v2, "key"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 00 pageContact scrollToNext mPosMoveTo = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/syu/bt/page/Page_Contact;->mPosMoveTo:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " getList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v4}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    iget v2, p0, Lcom/syu/bt/page/Page_Contact;->mPosMoveTo:I

    if-gez v2, :cond_3

    .line 1894
    iput v0, p0, Lcom/syu/bt/page/Page_Contact;->mPosMoveTo:I

    .line 1900
    :goto_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget v2, p0, Lcom/syu/bt/page/Page_Contact;->mPosMoveTo:I

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JGridView;->scrollToPosition(I)V

    move v0, v1

    .line 1905
    :cond_2
    return v0

    .line 1895
    :cond_3
    iget v2, p0, Lcom/syu/bt/page/Page_Contact;->mPosMoveTo:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v3}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1896
    iget v0, p0, Lcom/syu/bt/page/Page_Contact;->mPosMoveTo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/syu/bt/page/Page_Contact;->mPosMoveTo:I

    goto :goto_0
.end method

.method public scrollToPrev(Z)Z
    .locals 4
    .param p1, "bNotCareFocus"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1856
    iget-boolean v2, p0, Lcom/syu/bt/page/Page_Contact;->bTop:Z

    if-eqz v2, :cond_2

    .line 1857
    iput-boolean v1, p0, Lcom/syu/bt/page/Page_Contact;->bRoolKey:Z

    .line 1858
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->clearEditFocus()V

    .line 1859
    iget-object v2, p0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v3, p0, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v2, v3}, Lcom/syu/bt/Act_Bt;->isFocus(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_2

    .line 1860
    :cond_0
    iget v2, p0, Lcom/syu/bt/page/Page_Contact;->mPosFocusCpy:I

    iget-object v3, p0, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget v3, v3, Lcom/lsec/core/frame/ctrl/JGridView;->mIndexFocus:I

    if-eq v2, v3, :cond_1

    .line 1861
    iget-object v2, p0, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget v2, v2, Lcom/lsec/core/frame/ctrl/JGridView;->mIndexFocus:I

    iput v2, p0, Lcom/syu/bt/page/Page_Contact;->mPosFocusCpy:I

    .line 1862
    iget v2, p0, Lcom/syu/bt/page/Page_Contact;->mPosFocusCpy:I

    iput v2, p0, Lcom/syu/bt/page/Page_Contact;->mPosMoveTo:I

    .line 1865
    :cond_1
    iget v2, p0, Lcom/syu/bt/page/Page_Contact;->mPosMoveTo:I

    if-gez v2, :cond_3

    .line 1866
    iput v0, p0, Lcom/syu/bt/page/Page_Contact;->mPosMoveTo:I

    .line 1872
    :goto_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget v2, p0, Lcom/syu/bt/page/Page_Contact;->mPosMoveTo:I

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JGridView;->scrollToPosition(I)V

    move v0, v1

    .line 1877
    :cond_2
    return v0

    .line 1867
    :cond_3
    iget v2, p0, Lcom/syu/bt/page/Page_Contact;->mPosMoveTo:I

    if-lez v2, :cond_2

    .line 1868
    iget v0, p0, Lcom/syu/bt/page/Page_Contact;->mPosMoveTo:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/syu/bt/page/Page_Contact;->mPosMoveTo:I

    goto :goto_0
.end method

.method public setButtonColor(I)V
    .locals 12
    .param p1, "color"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1939
    sget-object v7, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v8, "changecolor"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1985
    :cond_0
    :goto_0
    return-void

    .line 1947
    :cond_1
    new-array v2, v11, [I

    .line 1948
    aput p1, v2, v9

    .line 1949
    aput p1, v2, v10

    .line 1951
    .local v2, "colors":[I
    new-array v6, v11, [[I

    .line 1952
    new-array v7, v10, [I

    const v8, 0x10100a7

    aput v8, v7, v9

    aput-object v7, v6, v9

    .line 1953
    new-array v7, v10, [I

    const v8, 0x101009c

    aput v8, v7, v9

    aput-object v7, v6, v10

    .line 1956
    .local v6, "states":[[I
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v7

    const/16 v8, 0x27ff

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1957
    .local v0, "back":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v0, :cond_2

    .line 1958
    new-instance v7, Landroid/content/res/ColorStateList;

    invoke-direct {v7, v6, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1959
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1962
    :cond_2
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v7

    const/16 v8, 0x27fb

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1963
    .local v5, "search":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v5, :cond_3

    .line 1964
    new-instance v7, Landroid/content/res/ColorStateList;

    invoke-direct {v7, v6, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v5, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1965
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1968
    :cond_3
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v7

    const/16 v8, 0x27fd

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1969
    .local v3, "down":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v3, :cond_4

    .line 1970
    new-instance v7, Landroid/content/res/ColorStateList;

    invoke-direct {v7, v6, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v3, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1971
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1974
    :cond_4
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v7

    const/16 v8, 0x27fe

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1975
    .local v4, "save":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v4, :cond_5

    .line 1976
    new-instance v7, Landroid/content/res/ColorStateList;

    invoke-direct {v7, v6, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v4, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1977
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1980
    :cond_5
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v7

    const/16 v8, 0x27fa

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1981
    .local v1, "clear":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v1, :cond_0

    .line 1982
    new-instance v7, Landroid/content/res/ColorStateList;

    invoke-direct {v7, v6, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v1, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1983
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0
.end method

.method public setContactNum(Ljava/lang/String;)V
    .locals 3
    .param p1, "num"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 214
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->vNoData:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 215
    iget-object v2, p0, Lcom/syu/bt/page/Page_Contact;->vNoData:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_4

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->tvTxtSum:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->tvTxtSum:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JText;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->tvTxtSum:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->tvTxtSum:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v0, p1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->tvTxtSumStr:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_3

    .line 226
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->tvTxtSumStr:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JText;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->tvTxtSumStr:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 229
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 215
    goto :goto_0
.end method

.method public setDayOrNight(I)V
    .locals 13
    .param p1, "value"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v9, -0x1

    const/high16 v10, -0x1000000

    .line 1990
    sget-object v8, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v11, "BT_NEW"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1992
    if-lez p1, :cond_1

    .line 1993
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v9

    iget-object v9, v9, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v10, "bt_night"

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v11

    iget-object v11, v11, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v12

    iget-object v12, v12, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v9, v10, v11, v12}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lsec/core/frame/ctrl/JPage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2053
    :cond_0
    :goto_0
    return-void

    .line 1995
    :cond_1
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v9

    iget-object v9, v9, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v10, "bk_day"

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v11

    iget-object v11, v11, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v12

    iget-object v12, v12, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v9, v10, v11, v12}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lsec/core/frame/ctrl/JPage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1997
    :cond_2
    sget-boolean v8, Lcom/syu/bt/App_Bt;->bUI_NightColour:Z

    if-eqz v8, :cond_0

    .line 1998
    if-lez p1, :cond_4

    const-string v5, "night_"

    .line 1999
    .local v5, "str":Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v8, p0, Lcom/syu/bt/page/Page_Contact;->nightBtn:[I

    array-length v8, v8

    if-lt v2, v8, :cond_5

    .line 2020
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    iget-object v8, p0, Lcom/syu/bt/page/Page_Contact;->nightView:[I

    array-length v8, v8

    if-lt v3, v8, :cond_b

    .line 2037
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_4
    iget-object v8, p0, Lcom/syu/bt/page/Page_Contact;->nightText:[I

    array-length v8, v8

    if-lt v4, v8, :cond_e

    .line 2045
    sget-object v8, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v11, "BT_XYQ_HB"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 2046
    iget-object v8, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    if-eqz v8, :cond_3

    .line 2047
    iget-object v11, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    if-lez p1, :cond_13

    move v8, v9

    :goto_5
    invoke-virtual {v11, v8}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 2048
    iget-object v8, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    if-lez p1, :cond_14

    :goto_6
    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setTextColor(I)V

    .line 2051
    :cond_3
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->notifyDataSetChanged()V

    goto :goto_0

    .line 1998
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "k":I
    .end local v5    # "str":Ljava/lang/String;
    :cond_4
    const-string v5, ""

    goto :goto_1

    .line 2000
    .restart local v2    # "i":I
    .restart local v5    # "str":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    iget-object v11, p0, Lcom/syu/bt/page/Page_Contact;->nightBtn:[I

    aget v11, v11, v2

    invoke-virtual {v8, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 2001
    .local v0, "button":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v0, :cond_8

    .line 2002
    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JButton;->getStrDrawable()Ljava/lang/String;

    move-result-object v1

    .line 2003
    .local v1, "drawableName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2004
    const-string v8, "night_"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2005
    const-string v8, "night_"

    const-string v11, ""

    invoke-virtual {v1, v8, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v12}, Lcom/lsec/core/frame/ctrl/JButton;->setStrDrawable(Ljava/lang/String;Z)V

    .line 2012
    :cond_6
    :goto_7
    sget-object v8, Lcom/syu/bt/App_Bt;->mUi_Name:Ljava/lang/String;

    const-string v11, "yl_dn1"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 2013
    iget-object v8, p0, Lcom/syu/bt/page/Page_Contact;->nightBtn:[I

    aget v8, v8, v2

    const/16 v11, 0x2744

    if-eq v8, v11, :cond_7

    iget-object v8, p0, Lcom/syu/bt/page/Page_Contact;->nightBtn:[I

    aget v8, v8, v2

    const/16 v11, 0x2746

    if-eq v8, v11, :cond_7

    iget-object v8, p0, Lcom/syu/bt/page/Page_Contact;->nightBtn:[I

    aget v8, v8, v2

    const/16 v11, 0x2745

    if-eq v8, v11, :cond_7

    .line 2014
    iget-object v8, p0, Lcom/syu/bt/page/Page_Contact;->nightBtn:[I

    aget v8, v8, v2

    const/16 v11, 0x274e

    if-eq v8, v11, :cond_7

    iget-object v8, p0, Lcom/syu/bt/page/Page_Contact;->nightBtn:[I

    aget v8, v8, v2

    const/16 v11, 0x274d

    if-ne v8, v11, :cond_8

    .line 2015
    :cond_7
    if-lez p1, :cond_a

    move v8, v9

    :goto_8
    invoke-virtual {v0, v8}, Lcom/lsec/core/frame/ctrl/JButton;->setTextColor(I)V

    .line 1999
    .end local v1    # "drawableName":Ljava/lang/String;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 2008
    .restart local v1    # "drawableName":Ljava/lang/String;
    :cond_9
    const-string v8, "night_"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 2009
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "night_"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v12}, Lcom/lsec/core/frame/ctrl/JButton;->setStrDrawable(Ljava/lang/String;Z)V

    goto :goto_7

    :cond_a
    move v8, v10

    .line 2015
    goto :goto_8

    .line 2021
    .end local v0    # "button":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v1    # "drawableName":Ljava/lang/String;
    .restart local v3    # "j":I
    :cond_b
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    iget-object v11, p0, Lcom/syu/bt/page/Page_Contact;->nightView:[I

    aget v11, v11, v3

    invoke-virtual {v8, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lsec/core/frame/ctrl/JView;

    .line 2022
    .local v7, "view":Lcom/lsec/core/frame/ctrl/JView;
    if-eqz v7, :cond_c

    .line 2023
    invoke-virtual {v7}, Lcom/lsec/core/frame/ctrl/JView;->getStrDrawable()Ljava/lang/String;

    move-result-object v1

    .line 2024
    .restart local v1    # "drawableName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 2025
    const-string v8, "night_"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 2026
    const-string v8, "night_"

    const-string v11, ""

    invoke-virtual {v1, v8, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v12}, Lcom/lsec/core/frame/ctrl/JView;->setStrDrawable(Ljava/lang/String;Z)V

    .line 2020
    .end local v1    # "drawableName":Ljava/lang/String;
    :cond_c
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 2029
    .restart local v1    # "drawableName":Ljava/lang/String;
    :cond_d
    const-string v8, "night_"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 2030
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "night_"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v12}, Lcom/lsec/core/frame/ctrl/JView;->setStrDrawable(Ljava/lang/String;Z)V

    goto :goto_9

    .line 2038
    .end local v1    # "drawableName":Ljava/lang/String;
    .end local v7    # "view":Lcom/lsec/core/frame/ctrl/JView;
    .restart local v4    # "k":I
    :cond_e
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    iget-object v11, p0, Lcom/syu/bt/page/Page_Contact;->nightText:[I

    aget v11, v11, v4

    invoke-virtual {v8, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lsec/core/frame/ctrl/JText;

    .line 2039
    .local v6, "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v6, :cond_10

    .line 2040
    if-lez p1, :cond_11

    move v8, v9

    :goto_a
    invoke-virtual {v6, v8}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 2041
    iget-object v8, p0, Lcom/syu/bt/page/Page_Contact;->nightText:[I

    aget v8, v8, v4

    const/16 v11, 0x27e9

    if-eq v8, v11, :cond_f

    iget-object v8, p0, Lcom/syu/bt/page/Page_Contact;->nightText:[I

    aget v8, v8, v4

    const/16 v11, 0x27ea

    if-ne v8, v11, :cond_10

    .line 2042
    :cond_f
    if-lez p1, :cond_12

    iget-object v8, p0, Lcom/syu/bt/page/Page_Contact;->color_night:[I

    :goto_b
    invoke-virtual {v6, v8}, Lcom/lsec/core/frame/ctrl/JText;->setColor([I)V

    .line 2037
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    :cond_11
    move v8, v10

    .line 2040
    goto :goto_a

    .line 2042
    :cond_12
    iget-object v8, p0, Lcom/syu/bt/page/Page_Contact;->color_day:[I

    goto :goto_b

    .end local v6    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :cond_13
    move v8, v10

    .line 2047
    goto/16 :goto_5

    :cond_14
    move v9, v10

    .line 2048
    goto/16 :goto_6
.end method

.method public showPhone()V
    .locals 7

    .prologue
    const/16 v2, 0x8

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1000
    const-string v0, "con2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " ** showPhone App_Bt.sPhone2_id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " conPhone_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/syu/bt/page/Page_Contact;->conPhone_id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    sget-object v0, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v0, v0, v1

    if-lt v0, v6, :cond_0

    sget-object v0, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v0, v0, v5

    if-ge v0, v6, :cond_0

    .line 1006
    sput v1, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    .line 1007
    :cond_0
    sget-object v0, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v0, v0, v5

    if-lt v0, v6, :cond_1

    sget-object v0, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v0, v0, v1

    if-ge v0, v6, :cond_1

    .line 1008
    sput v5, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    .line 1010
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->tvTxtPhone1:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_2

    .line 1011
    iget-object v3, p0, Lcom/syu/bt/page/Page_Contact;->tvTxtPhone1:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v0, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v0, v0, v1

    if-lt v0, v6, :cond_7

    sget v0, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    if-nez v0, :cond_7

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 1012
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->tvTxtPhone1:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v3, Lcom/syu/bt/App_Bt;->sPhone2_NAME:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1014
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->tvTxtPhone1_p:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_3

    .line 1015
    iget-object v3, p0, Lcom/syu/bt/page/Page_Contact;->tvTxtPhone1_p:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v0, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v0, v0, v1

    if-lt v0, v6, :cond_8

    sget v0, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    if-ne v0, v5, :cond_8

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 1016
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->tvTxtPhone1_p:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v3, Lcom/syu/bt/App_Bt;->sPhone2_NAME:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1018
    :cond_3
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->tvTxtPhone2:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_4

    .line 1019
    iget-object v3, p0, Lcom/syu/bt/page/Page_Contact;->tvTxtPhone2:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v0, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v0, v0, v5

    if-lt v0, v6, :cond_9

    sget v0, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    if-ne v0, v5, :cond_9

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 1020
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->tvTxtPhone2:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v3, Lcom/syu/bt/App_Bt;->sPhone2_NAME:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v0, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1022
    :cond_4
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->tvTxtPhone2_p:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_5

    .line 1023
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->tvTxtPhone2_p:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v3, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v3, v3, v5

    if-lt v3, v6, :cond_a

    sget v3, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    if-nez v3, :cond_a

    :goto_3
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 1024
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->tvTxtPhone2_p:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v1, Lcom/syu/bt/App_Bt;->sPhone2_NAME:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1026
    :cond_5
    iget v0, p0, Lcom/syu/bt/page/Page_Contact;->conPhone_id:I

    sget v1, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    if-eq v0, v1, :cond_6

    .line 1027
    sget v0, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    iput v0, p0, Lcom/syu/bt/page/Page_Contact;->conPhone_id:I

    .line 1028
    sget v0, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    if-nez v0, :cond_b

    .line 1029
    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/syu/bt/page/Page_Contact;->resetList(Ljava/util/List;)V

    .line 1033
    :goto_4
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->mRun_NotifyDataSetChanged:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 1034
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->mRun_NotifyDataSetChanged:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-static {v5, v0, v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 1035
    const-string v0, "con3"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ** 22 Contact_Phone_Switch mListContact= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    const-string v0, "con3"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ** 44 Contact_Phone_Switch mListContact2= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :cond_6
    return-void

    :cond_7
    move v0, v2

    .line 1011
    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 1015
    goto/16 :goto_1

    :cond_9
    move v0, v2

    .line 1019
    goto/16 :goto_2

    :cond_a
    move v1, v2

    .line 1023
    goto :goto_3

    .line 1031
    :cond_b
    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/syu/bt/page/Page_Contact;->resetList(Ljava/util/List;)V

    goto :goto_4
.end method

.method public showPinYinSearch()V
    .locals 4

    .prologue
    .line 323
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/syu/bt/page/Page_Contact;->mRunnableSearchRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 324
    return-void
.end method

.method public strHaveChar(Ljava/lang/String;C)Z
    .locals 2
    .param p1, "Str"    # Ljava/lang/String;
    .param p2, "c"    # C

    .prologue
    .line 869
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 873
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 870
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p2, :cond_1

    .line 871
    const/4 v1, 0x1

    goto :goto_1

    .line 869
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public voiceSearchContact()V
    .locals 3

    .prologue
    .line 1233
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Contact;->clearPageFocus()V

    .line 1235
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1236
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1237
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1238
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v1, p0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/syu/bt/App_Bt;->showInput(Landroid/view/View;)V

    .line 1240
    :cond_0
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isZhangConfig()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1243
    :try_start_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "speak_click"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/MyActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1249
    :cond_1
    :goto_0
    return-void

    .line 1244
    :catch_0
    move-exception v0

    goto :goto_0
.end method
