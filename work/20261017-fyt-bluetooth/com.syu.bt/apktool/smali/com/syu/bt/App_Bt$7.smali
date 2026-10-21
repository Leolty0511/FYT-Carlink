.class Lcom/syu/bt/App_Bt$7;
.super Ljava/lang/Object;
.source "App_Bt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/App_Bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/App_Bt;


# direct methods
.method constructor <init>(Lcom/syu/bt/App_Bt;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/App_Bt$7;->this$0:Lcom/syu/bt/App_Bt;

    .line 1320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v9, 0x3

    const/4 v14, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 1325
    sget-boolean v7, Lcom/syu/bt/App_Bt;->bShowFloatBtn:Z

    if-eqz v7, :cond_0

    .line 1326
    iget-object v7, p0, Lcom/syu/bt/App_Bt$7;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v7}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1327
    sget-object v7, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v8, 0x9

    aget v7, v7, v8

    sput v7, Lcom/lsec/core/ipc/module/main/Bt;->sLastPhoneState:I

    .line 1330
    :cond_0
    iget-object v7, p0, Lcom/syu/bt/App_Bt$7;->this$0:Lcom/syu/bt/App_Bt;

    iget-boolean v7, v7, Lcom/syu/bt/App_Bt;->bPopBtShow:Z

    if-eqz v7, :cond_3

    .line 1331
    iget-object v7, p0, Lcom/syu/bt/App_Bt$7;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v7, v12}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    .line 1332
    .local v5, "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-nez v5, :cond_1

    .line 1333
    iget-object v7, p0, Lcom/syu/bt/App_Bt$7;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v7, v9}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    .line 1335
    :cond_1
    if-eqz v5, :cond_2

    .line 1336
    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v6

    check-cast v6, Lcom/syu/bt/page/pop/Page_PopBt;

    .line 1337
    .local v6, "pagePopBt":Lcom/syu/bt/page/pop/Page_PopBt;
    if-eqz v6, :cond_2

    .line 1338
    sget-boolean v7, Lcom/syu/bt/App_Bt;->bShowKeyBoradWhenPopBt:Z

    invoke-virtual {v6, v7}, Lcom/syu/bt/page/pop/Page_PopBt;->showKeyBorad(Z)V

    .line 1413
    .end local v6    # "pagePopBt":Lcom/syu/bt/page/pop/Page_PopBt;
    :cond_2
    :goto_0
    return-void

    .line 1344
    .end local v5    # "page":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_3
    iget-object v7, p0, Lcom/syu/bt/App_Bt$7;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v7, v12, v12}, Lcom/lsec/core/frame/app/MyUi;->loadPage(ZI)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    .line 1345
    .restart local v5    # "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-nez v5, :cond_4

    .line 1346
    iget-object v7, p0, Lcom/syu/bt/App_Bt$7;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v7, v12, v9}, Lcom/lsec/core/frame/app/MyUi;->loadPage(ZI)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    .line 1348
    :cond_4
    if-eqz v5, :cond_2

    .line 1349
    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JPage;->resume()V

    .line 1351
    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JPage;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/app/MyUiItem;

    .line 1352
    .local v0, "item":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getPadding()[I

    move-result-object v4

    .line 1353
    .local v4, "padding":[I
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1355
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v7, 0x128

    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1358
    const/16 v7, 0x7ea

    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1360
    const/4 v2, 0x0

    .line 1361
    .local v2, "offsetX":I
    const/4 v3, 0x0

    .line 1362
    .local v3, "offsetY":I
    sget-object v7, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v8, "TZY_OEM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1363
    const/16 v2, 0xa

    .line 1364
    const/16 v3, 0xa

    .line 1366
    :cond_5
    iput v12, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1368
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getWidth()I

    move-result v7

    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1369
    sget-object v7, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v8, "YF_UI2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1370
    sget v7, Lcom/syu/bt/App_Bt;->iPhoneState:I

    if-ne v7, v14, :cond_8

    .line 1371
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getWidth()I

    move-result v7

    int-to-double v8, v7

    const-wide v10, 0x3fe23d70a3d70a3dL    # 0.57

    mul-double/2addr v8, v10

    double-to-int v7, v8

    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1375
    :cond_6
    :goto_1
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v7

    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1377
    const-string v7, "gdypop"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " 02 mRunnable_PopBt offsetX = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " width = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  iPhoneState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/syu/bt/App_Bt;->iPhoneState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    if-eqz v4, :cond_9

    array-length v7, v4

    if-lt v7, v14, :cond_9

    .line 1379
    aget v7, v4, v13

    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1380
    aget v7, v4, v12

    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1385
    :goto_2
    sget-boolean v7, Lcom/syu/bt/App_Bt;->bShow_PopBtTop:Z

    if-eqz v7, :cond_a

    .line 1386
    const/16 v7, 0x33

    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1390
    :goto_3
    const-string v7, "btpop"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " 00 mRunnable_PopBt barHeight="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v9, Lcom/syu/bt/App_Bt;->barHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ** layoutParams.y = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mStrPlatForm = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/syu/bt/App_Bt;->mStrPlatForm:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    const-string v7, "gdypop"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " 11 App_Bt getWindowManeger="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v9

    aget v9, v9, v13

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  mStrCustomer = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    sget v7, Lcom/syu/bt/App_Bt;->barHeight:I

    if-lez v7, :cond_7

    .line 1398
    sget v7, Lcom/syu/bt/App_Bt;->screenWidth:I

    sget v8, Lcom/syu/bt/App_Bt;->screenHeight:I

    if-le v7, v8, :cond_7

    .line 1399
    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    sget v8, Lcom/syu/bt/App_Bt;->barHeight:I

    add-int/2addr v7, v8

    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1402
    :cond_7
    const-string v7, "gdyy"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " 22  layoutParams.y = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " screenWidth = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/syu/bt/App_Bt;->screenWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " screenHeight = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/syu/bt/App_Bt;->screenHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    iget-object v7, p0, Lcom/syu/bt/App_Bt$7;->this$0:Lcom/syu/bt/App_Bt;

    iput-boolean v12, v7, Lcom/syu/bt/App_Bt;->bPopBtShow:Z

    .line 1405
    iget-object v7, p0, Lcom/syu/bt/App_Bt$7;->this$0:Lcom/syu/bt/App_Bt;

    iput-boolean v13, v7, Lcom/syu/bt/App_Bt;->bPopBtShowBak_Num:Z

    .line 1406
    sget-object v7, Lcom/lsec/core/frame/app/MyApplication;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v7, v5, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1407
    iget-object v7, p0, Lcom/syu/bt/App_Bt$7;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v7}, Lcom/syu/app/ipc/Bt_IpcObj;->addNotify_PopBt()V

    .line 1409
    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v6

    check-cast v6, Lcom/syu/bt/page/pop/Page_PopBt;

    .line 1410
    .restart local v6    # "pagePopBt":Lcom/syu/bt/page/pop/Page_PopBt;
    if-eqz v6, :cond_2

    .line 1411
    sget-boolean v7, Lcom/syu/bt/App_Bt;->bShowKeyBoradWhenPopBt:Z

    invoke-virtual {v6, v7}, Lcom/syu/bt/page/pop/Page_PopBt;->showKeyBorad(Z)V

    goto/16 :goto_0

    .line 1373
    .end local v6    # "pagePopBt":Lcom/syu/bt/page/pop/Page_PopBt;
    :cond_8
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getWidth()I

    move-result v7

    int-to-double v8, v7

    const-wide v10, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v8, v10

    double-to-int v7, v8

    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto/16 :goto_1

    .line 1382
    :cond_9
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1383
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_2

    .line 1388
    :cond_a
    const/16 v7, 0x53

    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_3
.end method
