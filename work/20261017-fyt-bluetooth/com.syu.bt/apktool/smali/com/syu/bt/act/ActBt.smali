.class public Lcom/syu/bt/act/ActBt;
.super Lcom/lsec/core/frame/app/MyActivity;
.source "ActBt.java"


# instance fields
.field public iSelStep:I

.field idPageTo_p:I

.field ivMenuSel:Lcom/lsec/core/frame/ctrl/JView;

.field mActBt:Lcom/syu/bt/Act_Bt;

.field mListMyActs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lsec/core/frame/app/MyAct;",
            ">;"
        }
    .end annotation
.end field

.field public mRunnableGoPage:Ljava/lang/Runnable;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field menu_step:I

.field pageFrom_p:Lcom/lsec/core/frame/ctrl/JPage;

.field pageMenu:Lcom/lsec/core/frame/ctrl/JPage;

.field pageTo_p:Lcom/lsec/core/frame/ctrl/JPage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/lsec/core/frame/app/MyActivity;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/act/ActBt;->mListMyActs:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Lcom/syu/bt/Act_Bt;

    invoke-direct {v0}, Lcom/syu/bt/Act_Bt;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/act/ActBt;->mActBt:Lcom/syu/bt/Act_Bt;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syu/bt/act/ActBt;->ivMenuSel:Lcom/lsec/core/frame/ctrl/JView;

    .line 60
    const/16 v0, 0x9a

    iput v0, p0, Lcom/syu/bt/act/ActBt;->menu_step:I

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/syu/bt/act/ActBt;->iSelStep:I

    .line 412
    new-instance v0, Lcom/syu/bt/act/ActBt$1;

    invoke-direct {v0, p0}, Lcom/syu/bt/act/ActBt$1;-><init>(Lcom/syu/bt/act/ActBt;)V

    iput-object v0, p0, Lcom/syu/bt/act/ActBt;->mRunnableGoPage:Ljava/lang/Runnable;

    .line 53
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 466
    iget-object v0, p0, Lcom/syu/bt/act/ActBt;->mActBt:Lcom/syu/bt/Act_Bt;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/syu/bt/act/ActBt;->mActBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v0, p1}, Lcom/syu/bt/Act_Bt;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 471
    :cond_0
    invoke-super {p0, p1}, Lcom/lsec/core/frame/app/MyActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public getFixAct(I)Lcom/lsec/core/frame/app/MyAct;
    .locals 3
    .param p1, "idPage"    # I

    .prologue
    .line 269
    iget-object v1, p0, Lcom/syu/bt/act/ActBt;->mListMyActs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 274
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 269
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/app/MyAct;

    .line 270
    .local v0, "myAct":Lcom/lsec/core/frame/app/MyAct;
    invoke-virtual {v0, p1}, Lcom/lsec/core/frame/app/MyAct;->includePage(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public getFixApp(I)Lcom/lsec/core/frame/app/MyApp;
    .locals 3
    .param p1, "idPage"    # I

    .prologue
    .line 278
    iget-object v1, p0, Lcom/syu/bt/act/ActBt;->mListMyActs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 283
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 278
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/app/MyAct;

    .line 279
    .local v0, "myAct":Lcom/lsec/core/frame/app/MyAct;
    invoke-virtual {v0, p1}, Lcom/lsec/core/frame/app/MyAct;->includePage(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyAct;->getMyApp()Lcom/lsec/core/frame/app/MyApp;

    move-result-object v1

    goto :goto_0
.end method

.method public getFixUi(I)Lcom/lsec/core/frame/app/MyUi;
    .locals 2
    .param p1, "idPage"    # I

    .prologue
    .line 287
    invoke-virtual {p0, p1}, Lcom/syu/bt/act/ActBt;->getFixAct(I)Lcom/lsec/core/frame/app/MyAct;

    move-result-object v0

    .line 288
    .local v0, "myAct":Lcom/lsec/core/frame/app/MyAct;
    if-eqz v0, :cond_0

    .line 289
    iget-object v1, v0, Lcom/lsec/core/frame/app/MyAct;->ui:Lcom/lsec/core/frame/app/MyUi;

    .line 291
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getShowId(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x0

    .line 389
    packed-switch p1, :pswitch_data_0

    .line 401
    :goto_0
    :pswitch_0
    return v0

    .line 393
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 395
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 397
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 399
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 389
    nop

    :pswitch_data_0
    .packed-switch 0x2713
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public goPage(I)V
    .locals 13
    .param p1, "idPageTo"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 299
    const-string v8, "gdy"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " ** 00 ActBt goPage    idPageTo = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {p0, p1}, Lcom/syu/bt/act/ActBt;->getFixAct(I)Lcom/lsec/core/frame/app/MyAct;

    move-result-object v1

    .line 302
    .local v1, "myAct":Lcom/lsec/core/frame/app/MyAct;
    if-eqz v1, :cond_1

    .line 303
    iget-object v8, v1, Lcom/lsec/core/frame/app/MyAct;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    if-nez v8, :cond_0

    .line 304
    invoke-virtual {v1, p0}, Lcom/lsec/core/frame/app/MyAct;->onCreate(Lcom/lsec/core/frame/app/MyActivity;)V

    .line 306
    :cond_0
    iget-object v8, p0, Lcom/syu/bt/act/ActBt;->mPageMain:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Lcom/lsec/core/frame/app/MyAct;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 307
    iget-object v8, p0, Lcom/syu/bt/act/ActBt;->mPageMain:Landroid/view/ViewGroup;

    invoke-virtual {v1, v8}, Lcom/lsec/core/frame/app/MyAct;->addChild2Parent(Landroid/view/ViewGroup;)V

    .line 308
    invoke-virtual {v1, p1}, Lcom/lsec/core/frame/app/MyAct;->getRightPage(I)I

    move-result p1

    .line 310
    :cond_1
    const-string v8, "gdy"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " ** 11 ActBt goPage    idPageTo = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p0, p1}, Lcom/syu/bt/act/ActBt;->getFixUi(I)Lcom/lsec/core/frame/app/MyUi;

    move-result-object v6

    .line 312
    .local v6, "uiTo":Lcom/lsec/core/frame/app/MyUi;
    if-eqz v6, :cond_2

    .line 313
    const/4 v0, -0x1

    .line 314
    .local v0, "idPageFrom":I
    iget-object v4, p0, Lcom/syu/bt/act/ActBt;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    .line 315
    .local v4, "pageFrom":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v4, :cond_3

    .line 316
    invoke-virtual {v4}, Lcom/lsec/core/frame/ctrl/JPage;->getId()I

    move-result v0

    .line 317
    if-ne v0, p1, :cond_3

    .line 318
    invoke-virtual {v4}, Lcom/lsec/core/frame/ctrl/JPage;->isNeedReload()Z

    move-result v8

    if-nez v8, :cond_3

    .line 319
    invoke-virtual {v4}, Lcom/lsec/core/frame/ctrl/JPage;->resume()V

    .line 382
    .end local v0    # "idPageFrom":I
    .end local v4    # "pageFrom":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_2
    :goto_0
    return-void

    .line 327
    .restart local v0    # "idPageFrom":I
    .restart local v4    # "pageFrom":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_3
    invoke-virtual {v6, v12, p1}, Lcom/lsec/core/frame/app/MyUi;->loadPage(ZI)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    .line 328
    .local v5, "pageTo":Lcom/lsec/core/frame/ctrl/JPage;
    const-string v8, "gdyy"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " ** 22 ActBt pageTo idPageTo ="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " getWindowManeger = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v10

    invoke-virtual {v10}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v10

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v10

    invoke-virtual {v10}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v10

    aget v10, v10, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " menu_step = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/syu/bt/act/ActBt;->menu_step:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    if-eqz v5, :cond_2

    .line 332
    const-string v8, "gdy"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " ** 33 ActBt pageTo.getId = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JPage;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isAppTop = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v10

    invoke-virtual {v10}, Lcom/syu/bt/App_Bt;->isAppTop()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    sget-object v8, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v9, "BT_23NEW"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v8

    invoke-virtual {v8}, Lcom/syu/bt/App_Bt;->isAppTop()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 334
    iget-object v8, p0, Lcom/syu/bt/act/ActBt;->ivMenuSel:Lcom/lsec/core/frame/ctrl/JView;

    if-nez v8, :cond_4

    .line 335
    const/16 v8, 0x2712

    invoke-virtual {v6, v12, v8}, Lcom/lsec/core/frame/app/MyUi;->loadPage(ZI)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    iput-object v8, p0, Lcom/syu/bt/act/ActBt;->pageMenu:Lcom/lsec/core/frame/ctrl/JPage;

    .line 336
    iget-object v8, p0, Lcom/syu/bt/act/ActBt;->pageMenu:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v8, :cond_4

    .line 337
    iget-object v8, p0, Lcom/syu/bt/act/ActBt;->pageMenu:Lcom/lsec/core/frame/ctrl/JPage;

    const/16 v9, 0x28ab

    invoke-virtual {v8, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lsec/core/frame/ctrl/JView;

    iput-object v8, p0, Lcom/syu/bt/act/ActBt;->ivMenuSel:Lcom/lsec/core/frame/ctrl/JView;

    .line 339
    :cond_4
    iput-object v5, p0, Lcom/syu/bt/act/ActBt;->pageTo_p:Lcom/lsec/core/frame/ctrl/JPage;

    .line 340
    iput-object v4, p0, Lcom/syu/bt/act/ActBt;->pageFrom_p:Lcom/lsec/core/frame/ctrl/JPage;

    .line 341
    iput p1, p0, Lcom/syu/bt/act/ActBt;->idPageTo_p:I

    .line 342
    iget-object v8, p0, Lcom/syu/bt/act/ActBt;->mRunnableGoPage:Ljava/lang/Runnable;

    const-wide/16 v10, 0xc8

    invoke-static {v12, v8, v10, v11}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 347
    :cond_5
    sput p1, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    .line 348
    sput p1, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    .line 350
    sput p1, Lcom/syu/bt/App_Bt;->sPage:I

    .line 351
    invoke-virtual {p0, p1}, Lcom/syu/bt/act/ActBt;->getFixApp(I)Lcom/lsec/core/frame/app/MyApp;

    move-result-object v3

    .line 352
    .local v3, "myApp":Lcom/lsec/core/frame/app/MyApp;
    if-eqz v3, :cond_6

    .line 353
    iput p1, v3, Lcom/lsec/core/frame/app/MyApp;->sPage:I

    .line 355
    :cond_6
    iget-object v8, p0, Lcom/syu/bt/act/ActBt;->mPageMain:Landroid/view/ViewGroup;

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v8

    if-gez v8, :cond_7

    .line 356
    iget-object v8, p0, Lcom/syu/bt/act/ActBt;->mPageMain:Landroid/view/ViewGroup;

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 359
    :cond_7
    iput-object v5, p0, Lcom/syu/bt/act/ActBt;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    .line 362
    if-eqz v4, :cond_8

    .line 364
    invoke-virtual {v4}, Lcom/lsec/core/frame/ctrl/JPage;->pause()V

    .line 367
    invoke-virtual {v4}, Lcom/lsec/core/frame/ctrl/JPage;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    .line 368
    .local v7, "viewParent":Landroid/view/ViewParent;
    instance-of v8, v7, Landroid/view/ViewGroup;

    if-eqz v8, :cond_8

    .line 369
    check-cast v7, Landroid/view/ViewGroup;

    .end local v7    # "viewParent":Landroid/view/ViewParent;
    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 372
    :cond_8
    const-string v8, "gdy"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " ** 44 ActBt goPage    mPageCurrent = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/syu/bt/act/ActBt;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JPage;->resume()V

    .line 374
    iget-object v8, p0, Lcom/syu/bt/act/ActBt;->mListMyActs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_9
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_a

    .line 379
    const-string v8, "gdy"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " ** 55 ActBt goPage    mPageCurrent = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/syu/bt/act/ActBt;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 374
    :cond_a
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/app/MyAct;

    .line 375
    .local v2, "myActTmp":Lcom/lsec/core/frame/app/MyAct;
    invoke-virtual {v2, p1}, Lcom/lsec/core/frame/app/MyAct;->doActionWhenGoPage(I)V

    .line 376
    invoke-virtual {v2, p1}, Lcom/lsec/core/frame/app/MyAct;->includePage(I)Z

    move-result v9

    if-nez v9, :cond_9

    .line 377
    iget-object v9, p0, Lcom/syu/bt/act/ActBt;->mPageMain:Landroid/view/ViewGroup;

    invoke-virtual {v2, v9}, Lcom/lsec/core/frame/app/MyAct;->removeChildFromParent(Landroid/view/ViewGroup;)V

    goto :goto_1
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 116
    iget-object v1, p0, Lcom/syu/bt/act/ActBt;->mListMyActs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    return-void

    .line 116
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/app/MyAct;

    .line 117
    .local v0, "myAct":Lcom/lsec/core/frame/app/MyAct;
    invoke-virtual {v0, p1, p0}, Lcom/lsec/core/frame/app/MyAct;->onNewIntent(Landroid/content/Intent;Lcom/lsec/core/frame/app/MyActivity;)V

    goto :goto_0
.end method

.method public handleSizeChanged()V
    .locals 5

    .prologue
    const/16 v4, 0x2713

    .line 210
    invoke-super {p0}, Lcom/lsec/core/frame/app/MyActivity;->handleSizeChanged()V

    .line 212
    const-string v1, "half1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 00 *** ActBt handleSizeChanged  ***   bHV_Kill = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/syu/bt/App_Bt;->bHV_Kill:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bHV_Kill_p = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/syu/bt/App_Bt;->bHV_Kill_p:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bHV_Kill:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/syu/bt/App_Bt;->bHV_Kill_p:Z

    if-eqz v1, :cond_0

    .line 214
    const/4 v1, 0x0

    sput-boolean v1, Lcom/syu/bt/App_Bt;->bHV_Kill_p:Z

    .line 215
    invoke-virtual {p0}, Lcom/syu/bt/act/ActBt;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 216
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/syu/bt/act/ActBt;->finish()V

    .line 217
    invoke-virtual {p0, v0}, Lcom/syu/bt/act/ActBt;->startActivity(Landroid/content/Intent;)V

    .line 221
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    sget-object v1, Lcom/syu/app/AppBluetooth;->mStrCustomer:Ljava/lang/String;

    const-string v2, "BT_NEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/syu/app/AppBluetooth;->mStrCustomer:Ljava/lang/String;

    const-string v2, "BT_NEW_YX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 222
    :cond_1
    sget v1, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    if-eq v1, v4, :cond_2

    sget v1, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    const/16 v2, 0x271a

    if-eq v1, v2, :cond_2

    sget v1, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    const/16 v2, 0x271b

    if-eq v1, v2, :cond_2

    .line 223
    invoke-virtual {p0, v4}, Lcom/syu/bt/act/ActBt;->goPage(I)V

    .line 226
    :cond_2
    return-void
.end method

.method public initSystemUI()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v5, 0x400

    const/4 v4, 0x0

    .line 71
    const-string v1, "gdy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 00 initSystemUI mStrCustomer = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/syu/app/AppBluetooth;->mStrCustomer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    sget-object v1, Lcom/syu/app/AppBluetooth;->mStrCustomer:Ljava/lang/String;

    const-string v2, "YF_BT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/syu/app/AppBluetooth;->mStrCustomer:Ljava/lang/String;

    const-string v2, "zhtd_benz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/syu/app/AppBluetooth;->mStrCustomer:Ljava/lang/String;

    const-string v2, "lexus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    sget-object v1, Lcom/syu/app/AppBluetooth;->mStrCustomer:Ljava/lang/String;

    const-string v2, "CASKA_7731_5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/syu/app/AppBluetooth;->mStrCustomer:Ljava/lang/String;

    const-string v2, "BT_OLD_9853"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/syu/app/AppBluetooth;->mStrCustomer:Ljava/lang/String;

    const-string v2, "BT_NEW_YX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    sget-object v1, Lcom/syu/app/AppBluetooth;->mStrCustomer:Ljava/lang/String;

    const-string v2, "BT_VWColor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/syu/app/AppBluetooth;->mStrCustomer:Ljava/lang/String;

    const-string v2, "NEW_BT_1920_2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    sget-object v1, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 78
    const-string v1, "gdy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 11 initSystemUI mStrCustomer = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/syu/app/AppBluetooth;->mStrCustomer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mStrFolderAsset =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-object v1, Lcom/syu/app/AppBluetooth;->mStrCustomer:Ljava/lang/String;

    const-string v2, "bba"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    :cond_2
    const-string v1, "gdy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 11 initSystemUI mStrCustomer = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/syu/app/AppBluetooth;->mStrCustomer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsTranslucent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/syu/app/AppBluetooth;->mIsTranslucent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget v1, Lcom/syu/app/AppBluetooth;->mIsTranslucent:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 87
    invoke-virtual {p0}, Lcom/syu/bt/act/ActBt;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    .line 88
    :cond_3
    sget v1, Lcom/syu/app/AppBluetooth;->mIsTranslucent:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 92
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/syu/bt/act/ActBt;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 94
    .local v0, "window":Landroid/view/Window;
    const/high16 v1, 0xc000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 95
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 96
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 97
    invoke-virtual {v0, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 98
    invoke-virtual {v0, v4}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/syu/bt/act/ActBt;->mListMyActs:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/syu/bt/act/ActBt;->mActBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {p0}, Lcom/syu/bt/act/ActBt;->initSystemUI()V

    .line 65
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    mul-int/lit16 v0, v0, 0x9a

    div-int/lit16 v0, v0, 0x300

    iput v0, p0, Lcom/syu/bt/act/ActBt;->menu_step:I

    .line 66
    invoke-super {p0, p1}, Lcom/lsec/core/frame/app/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 107
    const-string v1, "gdyy"

    const-string v2, " 00 ActBt onDestroy "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v1, p0, Lcom/syu/bt/act/ActBt;->mListMyActs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    invoke-super {p0}, Lcom/lsec/core/frame/app/MyActivity;->onDestroy()V

    .line 112
    return-void

    .line 108
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/app/MyAct;

    .line 109
    .local v0, "myAct":Lcom/lsec/core/frame/app/MyAct;
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyAct;->onDestroy()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 230
    sget v1, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    invoke-virtual {p0, v1}, Lcom/syu/bt/act/ActBt;->getFixAct(I)Lcom/lsec/core/frame/app/MyAct;

    move-result-object v0

    .line 231
    .local v0, "myAct":Lcom/lsec/core/frame/app/MyAct;
    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0, p1, p2}, Lcom/lsec/core/frame/app/MyAct;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    const/4 v1, 0x1

    .line 236
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/lsec/core/frame/app/MyActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 241
    sget v1, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    invoke-virtual {p0, v1}, Lcom/syu/bt/act/ActBt;->getFixAct(I)Lcom/lsec/core/frame/app/MyAct;

    move-result-object v0

    .line 242
    .local v0, "myAct":Lcom/lsec/core/frame/app/MyAct;
    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0, p1, p2}, Lcom/lsec/core/frame/app/MyAct;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    const/4 v1, 0x1

    .line 247
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/lsec/core/frame/app/MyActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 193
    invoke-super {p0}, Lcom/lsec/core/frame/app/MyActivity;->onPause()V

    .line 194
    const-string v1, "gdyy"

    const-string v2, " 00 ActBt onPause "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v1, "gdy6"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "11 ActBt onPause: sPage_WillBe = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    const-string v2, "page_id"

    sget v3, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    invoke-virtual {v1, v2, v3}, Lcom/lsec/core/util/MySharePreference2;->saveIntValue(Ljava/lang/String;I)V

    .line 198
    sget v1, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    invoke-virtual {p0, v1}, Lcom/syu/bt/act/ActBt;->getFixAct(I)Lcom/lsec/core/frame/app/MyAct;

    move-result-object v0

    .line 199
    .local v0, "myAct":Lcom/lsec/core/frame/app/MyAct;
    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyAct;->onPause()V

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/syu/bt/act/ActBt;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/syu/bt/act/ActBt;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JPage;->pause()V

    .line 205
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 123
    invoke-super {p0}, Lcom/lsec/core/frame/app/MyActivity;->onResume()V

    .line 127
    const-string v2, "gdy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  22 ActBt onResume    sPage_WillBe = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget v2, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    invoke-static {v2}, Lcom/syu/bt/App_Bt;->includePage(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    const/16 v2, 0x2713

    sput v2, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    .line 135
    :cond_0
    const-string v2, "sel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 00 ActBt onResume    sPage_WillBe = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " App_Bt.mStrCustomer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v3, "BT_23NEW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v3, 0x9

    aget v2, v2, v3

    if-nez v2, :cond_1

    .line 138
    sget v2, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    const/16 v3, 0x271b

    if-eq v2, v3, :cond_1

    .line 139
    const/16 v2, 0x271c

    sput v2, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    .line 141
    :cond_1
    const-string v2, "sel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 11 ActBt onResume  showMenuSel  sPage_WillBe = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v2, 0x1

    new-instance v3, Lcom/syu/bt/act/ActBt$2;

    invoke-direct {v3, p0}, Lcom/syu/bt/act/ActBt$2;-><init>(Lcom/syu/bt/act/ActBt;)V

    invoke-static {v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 165
    :cond_2
    sget v2, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    invoke-virtual {p0, v2}, Lcom/syu/bt/act/ActBt;->getFixAct(I)Lcom/lsec/core/frame/app/MyAct;

    move-result-object v0

    .line 166
    .local v0, "myAct":Lcom/lsec/core/frame/app/MyAct;
    if-eqz v0, :cond_3

    .line 167
    iget-object v2, v0, Lcom/lsec/core/frame/app/MyAct;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    if-nez v2, :cond_3

    .line 168
    invoke-virtual {v0, p0}, Lcom/lsec/core/frame/app/MyAct;->onCreate(Lcom/lsec/core/frame/app/MyActivity;)V

    .line 172
    :cond_3
    const-string v2, "gdy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " ** 00 goPage    sPage_WillBe = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sget v2, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    invoke-virtual {p0, v2}, Lcom/syu/bt/act/ActBt;->goPage(I)V

    .line 174
    if-eqz v0, :cond_4

    .line 175
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyAct;->onResume()V

    .line 177
    :cond_4
    const-string v2, "gdyy"

    const-string v3, " 00 ActBt onResume mediaPlayer "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v3, "BT_LXZ"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 179
    const-string v2, "gdyy"

    const-string v3, " 11 ActBt onResume mediaPlayer "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v2, p0, Lcom/syu/bt/act/ActBt;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_5

    .line 181
    iget-object v2, p0, Lcom/syu/bt/act/ActBt;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 183
    :cond_5
    const-string v2, "android.resource://com.syu.bt/raw/mute"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 184
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "gdyy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 22 ActBt onResume mediaPlayer uri = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v2

    iput-object v2, p0, Lcom/syu/bt/act/ActBt;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 186
    iget-object v2, p0, Lcom/syu/bt/act/ActBt;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 188
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_6
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 252
    sget v1, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    invoke-virtual {p0, v1}, Lcom/syu/bt/act/ActBt;->getFixAct(I)Lcom/lsec/core/frame/app/MyAct;

    move-result-object v0

    .line 253
    .local v0, "myAct":Lcom/lsec/core/frame/app/MyAct;
    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0, p1}, Lcom/lsec/core/frame/app/MyAct;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 256
    :cond_0
    invoke-super {p0, p1}, Lcom/lsec/core/frame/app/MyActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public requestAppIdRight()V
    .locals 2

    .prologue
    .line 261
    sget v1, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    invoke-virtual {p0, v1}, Lcom/syu/bt/act/ActBt;->getFixApp(I)Lcom/lsec/core/frame/app/MyApp;

    move-result-object v0

    .line 262
    .local v0, "myApp":Lcom/lsec/core/frame/app/MyApp;
    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyApp;->requestAppIdRight()V

    .line 266
    :cond_0
    return-void
.end method

.method public showMenuSel(I)V
    .locals 7
    .param p1, "page_id"    # I

    .prologue
    .line 404
    const-string v1, "sel"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 00 ActBt showMenuSel  page_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v1, p0, Lcom/syu/bt/act/ActBt;->ivMenuSel:Lcom/lsec/core/frame/ctrl/JView;

    if-eqz v1, :cond_0

    .line 406
    const-string v1, "sel"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 11 ActBt showMenuSel  page_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ivMenuSel!=null "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v1, p0, Lcom/syu/bt/act/ActBt;->ivMenuSel:Lcom/lsec/core/frame/ctrl/JView;

    const-string v2, "translationX"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/syu/bt/act/ActBt;->getShowId(I)I

    move-result v5

    iget v6, p0, Lcom/syu/bt/act/ActBt;->menu_step:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 408
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 409
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 411
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void
.end method
