.class public Lcom/syu/bt/page/Page_Pair;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_Pair.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/bt/page/Page_Pair$HideText;,
        Lcom/syu/bt/page/Page_Pair$RunnableHideText;,
        Lcom/syu/bt/page/Page_Pair$RunnableHideText2;
    }
.end annotation


# instance fields
.field public actBt:Lcom/syu/bt/Act_Bt;

.field auto:Lcom/lsec/core/frame/ctrl/JSwitchButton;

.field private bRegisterReceiver:Z

.field bTop:Z

.field btnPairCut:Lcom/lsec/core/frame/ctrl/JButton;

.field btnPairDel:Lcom/lsec/core/frame/ctrl/JButton;

.field btnPairLink:Lcom/lsec/core/frame/ctrl/JButton;

.field btnPairSearch:Lcom/lsec/core/frame/ctrl/JButton;

.field public isBtavStop:Z

.field public isConnectBt:Z

.field public isSelfLink:Z

.field public isStartDiscovey:Z

.field mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

.field mHideText:Lcom/syu/bt/page/Page_Pair$HideText;

.field mPairedView:Lcom/lsec/core/frame/ctrl/JGridView;

.field private mPosFocusCpy:I

.field private mPosMoveTo:I

.field public mRunnJumpTalking:Ljava/lang/Runnable;

.field mRunnableHideText:Lcom/syu/bt/page/Page_Pair$RunnableHideText;

.field mRunnableHideText2:Lcom/syu/bt/page/Page_Pair$RunnableHideText2;

.field public mRunnable_refreshPaired:Ljava/lang/Runnable;

.field private nightBtn:[I

.field private nightText:[I

.field private nightView:[I

.field public random:Ljava/util/Random;

.field private searchDevices:Landroid/content/BroadcastReceiver;

.field public str_PairIcon:[Ljava/lang/String;

.field tipText:Lcom/lsec/core/frame/ctrl/JText;

.field vNoData:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
    .locals 5
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "actBt"    # Lcom/syu/bt/Act_Bt;

    .prologue
    const/4 v4, 0x4

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 84
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 55
    iput-boolean v2, p0, Lcom/syu/bt/page/Page_Pair;->isSelfLink:Z

    .line 56
    iput-boolean v2, p0, Lcom/syu/bt/page/Page_Pair;->isStartDiscovey:Z

    .line 57
    iput-boolean v2, p0, Lcom/syu/bt/page/Page_Pair;->isBtavStop:Z

    .line 58
    iput-boolean v2, p0, Lcom/syu/bt/page/Page_Pair;->isConnectBt:Z

    .line 62
    iput v3, p0, Lcom/syu/bt/page/Page_Pair;->mPosMoveTo:I

    .line 63
    iput v3, p0, Lcom/syu/bt/page/Page_Pair;->mPosFocusCpy:I

    .line 64
    iput-boolean v2, p0, Lcom/syu/bt/page/Page_Pair;->bTop:Z

    .line 68
    iput-object v1, p0, Lcom/syu/bt/page/Page_Pair;->btnPairSearch:Lcom/lsec/core/frame/ctrl/JButton;

    .line 69
    iput-object v1, p0, Lcom/syu/bt/page/Page_Pair;->btnPairLink:Lcom/lsec/core/frame/ctrl/JButton;

    .line 70
    iput-object v1, p0, Lcom/syu/bt/page/Page_Pair;->btnPairCut:Lcom/lsec/core/frame/ctrl/JButton;

    .line 71
    iput-object v1, p0, Lcom/syu/bt/page/Page_Pair;->btnPairDel:Lcom/lsec/core/frame/ctrl/JButton;

    .line 74
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 76
    iput-object v0, p0, Lcom/syu/bt/page/Page_Pair;->nightBtn:[I

    .line 78
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/syu/bt/page/Page_Pair;->nightView:[I

    .line 80
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/syu/bt/page/Page_Pair;->nightText:[I

    .line 200
    new-instance v0, Lcom/syu/bt/page/Page_Pair$1;

    invoke-direct {v0, p0}, Lcom/syu/bt/page/Page_Pair$1;-><init>(Lcom/syu/bt/page/Page_Pair;)V

    iput-object v0, p0, Lcom/syu/bt/page/Page_Pair;->mRunnJumpTalking:Ljava/lang/Runnable;

    .line 330
    new-instance v0, Lcom/syu/bt/page/Page_Pair$2;

    invoke-direct {v0, p0}, Lcom/syu/bt/page/Page_Pair$2;-><init>(Lcom/syu/bt/page/Page_Pair;)V

    iput-object v0, p0, Lcom/syu/bt/page/Page_Pair;->mRunnable_refreshPaired:Ljava/lang/Runnable;

    .line 379
    new-instance v0, Lcom/syu/bt/page/Page_Pair$HideText;

    invoke-direct {v0, p0}, Lcom/syu/bt/page/Page_Pair$HideText;-><init>(Lcom/syu/bt/page/Page_Pair;)V

    iput-object v0, p0, Lcom/syu/bt/page/Page_Pair;->mHideText:Lcom/syu/bt/page/Page_Pair$HideText;

    .line 391
    new-instance v0, Lcom/syu/bt/page/Page_Pair$RunnableHideText;

    invoke-direct {v0, p0}, Lcom/syu/bt/page/Page_Pair$RunnableHideText;-><init>(Lcom/syu/bt/page/Page_Pair;)V

    iput-object v0, p0, Lcom/syu/bt/page/Page_Pair;->mRunnableHideText:Lcom/syu/bt/page/Page_Pair$RunnableHideText;

    .line 410
    new-instance v0, Lcom/syu/bt/page/Page_Pair$RunnableHideText2;

    invoke-direct {v0, p0}, Lcom/syu/bt/page/Page_Pair$RunnableHideText2;-><init>(Lcom/syu/bt/page/Page_Pair;)V

    iput-object v0, p0, Lcom/syu/bt/page/Page_Pair;->mRunnableHideText2:Lcom/syu/bt/page/Page_Pair$RunnableHideText2;

    .line 621
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pair_icon1"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "pair_icon2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pair_icon3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pair_icon4"

    aput-object v2, v0, v1

    const-string v1, "pair_icon5"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/syu/bt/page/Page_Pair;->str_PairIcon:[Ljava/lang/String;

    .line 622
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/page/Page_Pair;->random:Ljava/util/Random;

    .line 1334
    new-instance v0, Lcom/syu/bt/page/Page_Pair$3;

    invoke-direct {v0, p0}, Lcom/syu/bt/page/Page_Pair$3;-><init>(Lcom/syu/bt/page/Page_Pair;)V

    iput-object v0, p0, Lcom/syu/bt/page/Page_Pair;->searchDevices:Landroid/content/BroadcastReceiver;

    .line 85
    iput-object p2, p0, Lcom/syu/bt/page/Page_Pair;->actBt:Lcom/syu/bt/Act_Bt;

    .line 86
    return-void

    .line 74
    :array_0
    .array-data 4
        0x28cd
        0x28ce
        0x28cf
        0x28d0
        0x2744
        0x2745
        0x274e
        0x2746
        0x274c
        0x274d
    .end array-data

    .line 78
    :array_1
    .array-data 4
        0x2988
        0x2989
        0x298a
        0x273d
    .end array-data

    .line 80
    :array_2
    .array-data 4
        0x27e8
        0x27e9
        0x27ea
        0x27eb
        0x27f6
        0x27f7
        0x27f8
        0x28d5
        0x28d6
    .end array-data
.end method

.method private getBindObdDevice()Ljava/util/Set;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1008
    :try_start_0
    sget v3, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 1009
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->myApplication:Lcom/lsec/core/frame/app/MyApplication;

    const-string v4, "bluetooth"

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/app/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 1010
    .local v0, "bluetoothManager":Landroid/bluetooth/BluetoothManager;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1017
    .end local v0    # "bluetoothManager":Landroid/bluetooth/BluetoothManager;
    :goto_0
    return-object v1

    .line 1013
    :catch_0
    move-exception v2

    .line 1014
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1017
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isAudioVideoType(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p0, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1396
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    .line 1397
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v1

    .line 1398
    .local v1, "majorDeviceClass":I
    const/4 v0, 0x0

    .line 1399
    .local v0, "bRet":Z
    const/16 v2, 0x200

    if-ne v1, v2, :cond_0

    .line 1400
    const/4 v0, 0x1

    .line 1402
    :cond_0
    return v0
.end method

.method public static isPhoneType(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p0, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1386
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    .line 1387
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v1

    .line 1388
    .local v1, "majorDeviceClass":I
    const/4 v0, 0x0

    .line 1389
    .local v0, "bRet":Z
    const/16 v2, 0x200

    if-ne v1, v2, :cond_0

    .line 1390
    const/4 v0, 0x1

    .line 1392
    :cond_0
    return v0
.end method

.method private registerSearchDevicesReceiver()V
    .locals 3

    .prologue
    .line 1314
    sget v1, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 1325
    :goto_0
    return-void

    .line 1317
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1318
    .local v0, "intent":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1320
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1321
    const-string v1, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1322
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1323
    iget-object v1, p0, Lcom/syu/bt/page/Page_Pair;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v2, p0, Lcom/syu/bt/page/Page_Pair;->searchDevices:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/lsec/core/frame/app/MyActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1324
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/syu/bt/page/Page_Pair;->bRegisterReceiver:Z

    goto :goto_0
.end method

.method public static removeBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 1407
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "removeBond"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1408
    .local v0, "createBondMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 1409
    .local v2, "returnValue":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1414
    .end local v0    # "createBondMethod":Ljava/lang/reflect/Method;
    .end local v2    # "returnValue":Ljava/lang/Boolean;
    :goto_0
    return v3

    .line 1410
    :catch_0
    move-exception v1

    .line 1411
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private unregisterSearchDevicesReceiver()V
    .locals 2

    .prologue
    .line 1328
    iget-boolean v0, p0, Lcom/syu/bt/page/Page_Pair;->bRegisterReceiver:Z

    if-eqz v0, :cond_0

    .line 1329
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v1, p0, Lcom/syu/bt/page/Page_Pair;->searchDevices:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/MyActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1331
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/syu/bt/page/Page_Pair;->bRegisterReceiver:Z

    .line 1332
    return-void
.end method


# virtual methods
.method public GridClick(Lcom/lsec/core/frame/ctrl/JGridView;)V
    .locals 11
    .param p1, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;

    .prologue
    const/4 v7, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 1024
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getId()I

    move-result v1

    .line 1025
    .local v1, "id":I
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getPosition()I

    move-result v2

    .line 1026
    .local v2, "position":I
    sparse-switch v1, :sswitch_data_0

    .line 1190
    :cond_0
    :goto_0
    return-void

    .line 1028
    :sswitch_0
    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListPair:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v2, :cond_0

    .line 1029
    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListPair:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    const/16 v6, 0x28da

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1030
    .local v0, "addr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1031
    iput v7, p0, Lcom/syu/bt/page/Page_Pair;->mPosMoveTo:I

    .line 1033
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v5

    if-nez v5, :cond_1

    sget v5, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v6, 0x42

    if-ne v5, v6, :cond_2

    .line 1034
    :cond_1
    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1035
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->cut()V

    .line 1051
    :cond_2
    :goto_1
    sget-object v5, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v6, "BT_23NEW"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1052
    const/16 v4, 0x64

    .line 1053
    .local v4, "time":I
    sget-boolean v5, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v5, :cond_7

    .line 1054
    sget-object v5, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v5, v5, v10

    if-lt v5, v9, :cond_3

    sget-object v5, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v5, v5, v8

    if-lt v5, v9, :cond_3

    .line 1055
    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-static {v5}, Lcom/syu/app/ipc/Bt_IpcObj;->cut(Ljava/lang/String;)V

    .line 1056
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v5

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    iget-object v6, v6, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v7, "bt_unpaired_dev"

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    .line 1057
    const/16 v4, 0x7d0

    .line 1076
    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    .line 1077
    invoke-static {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->setChoiceAddr(Ljava/lang/String;)V

    .line 1078
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v5, p0, v4}, Lcom/syu/app/ipc/Bt_IpcObj;->FuncPairLinkRun(Lcom/syu/bt/page/Page_Pair;I)V

    .line 1093
    .end local v4    # "time":I
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->resetBtnEnable()V

    goto/16 :goto_0

    .line 1037
    :cond_5
    invoke-static {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->setChoiceAddr(Ljava/lang/String;)V

    .line 1039
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v5, p0}, Lcom/syu/app/ipc/Bt_IpcObj;->FuncPairLink(Lcom/syu/bt/page/Page_Pair;)V

    .line 1041
    iget-object v5, p0, Lcom/syu/bt/page/Page_Pair;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v5, :cond_6

    .line 1042
    iget-object v5, p0, Lcom/syu/bt/page/Page_Pair;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    if-eqz v5, :cond_6

    .line 1043
    iget-object v5, p0, Lcom/syu/bt/page/Page_Pair;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->notifyDataSetChanged()V

    .line 1045
    :cond_6
    iget-object v5, p0, Lcom/syu/bt/page/Page_Pair;->mPairedView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v5, :cond_2

    .line 1046
    iget-object v5, p0, Lcom/syu/bt/page/Page_Pair;->mPairedView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    if-eqz v5, :cond_2

    .line 1047
    iget-object v5, p0, Lcom/syu/bt/page/Page_Pair;->mPairedView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 1068
    .restart local v4    # "time":I
    :cond_7
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1069
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->cut()V

    .line 1070
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v5

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    iget-object v6, v6, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v7, "bt_unpaired_dev"

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    .line 1071
    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1072
    const/4 v4, 0x0

    goto :goto_2

    .line 1074
    :cond_8
    const/16 v4, 0x7d0

    goto :goto_2

    .line 1081
    .end local v4    # "time":I
    :cond_9
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getChoiceAddr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1082
    invoke-static {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->setChoiceAddr(Ljava/lang/String;)V

    .line 1084
    iget-object v5, p0, Lcom/syu/bt/page/Page_Pair;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v5, :cond_a

    .line 1085
    iget-object v5, p0, Lcom/syu/bt/page/Page_Pair;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    if-eqz v5, :cond_a

    .line 1086
    iget-object v5, p0, Lcom/syu/bt/page/Page_Pair;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->notifyDataSetChanged()V

    .line 1088
    :cond_a
    iget-object v5, p0, Lcom/syu/bt/page/Page_Pair;->mPairedView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v5, :cond_4

    .line 1089
    iget-object v5, p0, Lcom/syu/bt/page/Page_Pair;->mPairedView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    if-eqz v5, :cond_4

    .line 1090
    iget-object v5, p0, Lcom/syu/bt/page/Page_Pair;->mPairedView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->notifyDataSetChanged()V

    goto/16 :goto_3

    .line 1100
    .end local v0    # "addr":Ljava/lang/String;
    :sswitch_1
    const-string v5, "con3"

    const-string v6, " 00 Paired_ListView "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v2, :cond_0

    .line 1102
    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    const/16 v6, 0x28e4

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1103
    .restart local v0    # "addr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1104
    iput v7, p0, Lcom/syu/bt/page/Page_Pair;->mPosMoveTo:I

    .line 1106
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1107
    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1108
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->cut()V

    .line 1124
    :cond_b
    :goto_4
    const-string v5, "con3"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " 11 Paired_ListView addr = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    sget-object v5, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v6, "BT_23NEW"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1128
    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    const/16 v6, 0x28e5

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1129
    .local v3, "strName":Ljava/lang/String;
    const-string v5, "lsec_gps"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1133
    const/16 v4, 0x64

    .line 1134
    .restart local v4    # "time":I
    sget-boolean v5, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v5, :cond_14

    .line 1135
    sget-object v5, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v5, v5, v10

    if-ge v5, v9, :cond_c

    sget-object v5, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v5, v5, v8

    if-lt v5, v9, :cond_d

    .line 1137
    :cond_c
    sget-object v5, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v5, v5, v10

    if-lt v5, v9, :cond_12

    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    aget-object v5, v5, v10

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1138
    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    aget-object v5, v5, v10

    invoke-static {v5}, Lcom/syu/app/ipc/Bt_IpcObj;->cut(Ljava/lang/String;)V

    .line 1139
    const/4 v4, 0x0

    .line 1153
    :cond_d
    :goto_5
    const-string v5, "con3"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " 22 Paired_ListView time = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " addr = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    :cond_e
    :goto_6
    if-eqz v4, :cond_f

    .line 1167
    invoke-static {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->setChoiceAddr(Ljava/lang/String;)V

    .line 1168
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v5, p0, v4}, Lcom/syu/app/ipc/Bt_IpcObj;->FuncPairLinkRun(Lcom/syu/bt/page/Page_Pair;I)V

    .line 1184
    .end local v3    # "strName":Ljava/lang/String;
    .end local v4    # "time":I
    :cond_f
    :goto_7
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->resetBtnEnable()V

    goto/16 :goto_0

    .line 1110
    :cond_10
    invoke-static {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->setChoiceAddr(Ljava/lang/String;)V

    .line 1112
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v5, p0}, Lcom/syu/app/ipc/Bt_IpcObj;->FuncPairLink(Lcom/syu/bt/page/Page_Pair;)V

    .line 1114
    iget-object v5, p0, Lcom/syu/bt/page/Page_Pair;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v5, :cond_11

    .line 1115
    iget-object v5, p0, Lcom/syu/bt/page/Page_Pair;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    if-eqz v5, :cond_11

    .line 1116
    iget-object v5, p0, Lcom/syu/bt/page/Page_Pair;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->notifyDataSetChanged()V

    .line 1118
    :cond_11
    iget-object v5, p0, Lcom/syu/bt/page/Page_Pair;->mPairedView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v5, :cond_b

    .line 1119
    iget-object v5, p0, Lcom/syu/bt/page/Page_Pair;->mPairedView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    if-eqz v5, :cond_b

    .line 1120
    iget-object v5, p0, Lcom/syu/bt/page/Page_Pair;->mPairedView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->notifyDataSetChanged()V

    goto/16 :goto_4

    .line 1140
    .restart local v3    # "strName":Ljava/lang/String;
    .restart local v4    # "time":I
    :cond_12
    sget-object v5, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v5, v5, v8

    if-lt v5, v9, :cond_13

    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1141
    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-static {v5}, Lcom/syu/app/ipc/Bt_IpcObj;->cut(Ljava/lang/String;)V

    .line 1142
    const/4 v4, 0x0

    .line 1143
    goto :goto_5

    .line 1144
    :cond_13
    sget-object v5, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v5, v5, v10

    if-lt v5, v9, :cond_d

    sget-object v5, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v5, v5, v8

    if-lt v5, v9, :cond_d

    .line 1145
    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-static {v5}, Lcom/syu/app/ipc/Bt_IpcObj;->cut(Ljava/lang/String;)V

    .line 1146
    const/16 v4, 0x7d0

    goto/16 :goto_5

    .line 1156
    :cond_14
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1157
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->cut()V

    .line 1158
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v5

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    iget-object v6, v6, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v7, "bt_unpaired_dev"

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    .line 1159
    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1160
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 1162
    :cond_15
    const/16 v4, 0x7d0

    goto/16 :goto_6

    .line 1171
    .end local v3    # "strName":Ljava/lang/String;
    .end local v4    # "time":I
    :cond_16
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getChoiceAddr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 1172
    invoke-static {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->setChoiceAddr(Ljava/lang/String;)V

    .line 1174
    iget-object v5, p0, Lcom/syu/bt/page/Page_Pair;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v5, :cond_17

    .line 1175
    iget-object v5, p0, Lcom/syu/bt/page/Page_Pair;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    if-eqz v5, :cond_17

    .line 1176
    iget-object v5, p0, Lcom/syu/bt/page/Page_Pair;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->notifyDataSetChanged()V

    .line 1178
    :cond_17
    iget-object v5, p0, Lcom/syu/bt/page/Page_Pair;->mPairedView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v5, :cond_f

    .line 1179
    iget-object v5, p0, Lcom/syu/bt/page/Page_Pair;->mPairedView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    if-eqz v5, :cond_f

    .line 1180
    iget-object v5, p0, Lcom/syu/bt/page/Page_Pair;->mPairedView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->notifyDataSetChanged()V

    goto/16 :goto_7

    .line 1026
    :sswitch_data_0
    .sparse-switch
        0x28d3 -> :sswitch_0
        0x28e1 -> :sswitch_1
    .end sparse-switch
.end method

.method public GridLongClick(Lcom/lsec/core/frame/ctrl/JGridView;)V
    .locals 7
    .param p1, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;

    .prologue
    .line 1297
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getId()I

    move-result v0

    .line 1298
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 1311
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 1302
    :sswitch_1
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getPosition()I

    move-result v2

    .line 1303
    .local v2, "position":I
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 1304
    .local v1, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 1305
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1306
    iget-object v3, p0, Lcom/syu/bt/page/Page_Pair;->actBt:Lcom/syu/bt/Act_Bt;

    const/16 v4, 0x9

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v6, "bt_is_delete_onepaired"

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    goto :goto_0

    .line 1298
    :sswitch_data_0
    .sparse-switch
        0x28d3 -> :sswitch_0
        0x28e1 -> :sswitch_1
    .end sparse-switch
.end method

.method public InitGridItem(Lcom/lsec/core/frame/ctrl/JGridView;Lcom/lsec/core/frame/ctrl/JPage;Landroid/util/SparseArray;I)V
    .locals 30
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
    .line 625
    .local p3, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getId()I

    move-result v10

    .line 627
    .local v10, "id":I
    const-string v25, "a2dp"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, " 01 InitGridItem position = "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " id = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    sparse-switch v10, :sswitch_data_0

    .line 1003
    :cond_0
    :goto_0
    return-void

    .line 632
    :sswitch_0
    if-eqz p2, :cond_1

    sget-object v25, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v26, "changecolor"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 633
    const-string v25, "key"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, " 00 InitGridItem set App_Bt.color = "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v27, Lcom/syu/bt/App_Bt;->color:I

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v8, v0, [I

    const/16 v25, 0x0

    .line 635
    sget v26, Lcom/syu/bt/App_Bt;->color:I

    aput v26, v8, v25

    const/16 v25, 0x1

    .line 636
    sget v26, Lcom/syu/bt/App_Bt;->color:I

    aput v26, v8, v25

    const/16 v25, 0x2

    .line 637
    sget v26, Lcom/syu/bt/App_Bt;->color:I

    aput v26, v8, v25

    const/16 v25, 0x3

    .line 638
    sget v26, Lcom/syu/bt/App_Bt;->color:I

    aput v26, v8, v25

    .line 640
    .local v8, "colors":[I
    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v11, v0, [[I

    const/16 v25, 0x0

    .line 641
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const v28, 0x10100a7

    aput v28, v26, v27

    aput-object v26, v11, v25

    const/16 v25, 0x1

    .line 642
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const v28, 0x10100a1

    aput v28, v26, v27

    aput-object v26, v11, v25

    const/16 v25, 0x2

    .line 643
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const v28, 0x1010367

    aput v28, v26, v27

    aput-object v26, v11, v25

    const/16 v25, 0x3

    .line 644
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const v28, 0x101009c

    aput v28, v26, v27

    aput-object v26, v11, v25

    .line 646
    .local v11, "states":[[I
    new-instance v25, Landroid/content/res/ColorStateList;

    move-object/from16 v0, v25

    invoke-direct {v0, v11, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 647
    sget-object v25, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 651
    .end local v8    # "colors":[I
    .end local v11    # "states":[[I
    :cond_1
    sget-boolean v25, Lcom/syu/bt/App_Bt;->bUI_NightColour:Z

    if-eqz v25, :cond_2

    .line 652
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/ctrl/JPage;->getStrDrawable()Ljava/lang/String;

    move-result-object v12

    .line 653
    .local v12, "str":Ljava/lang/String;
    const-string v25, "gdy66"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "222 Page_History InitGridItem mColorType = "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v27, Lcom/syu/bt/App_Bt;->mColorType:I

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " str = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    sget v25, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v25, :cond_3

    .line 655
    const-string v25, "night_"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_2

    .line 656
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "night_"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->setStrDrawable(Ljava/lang/String;Z)V

    .line 664
    .end local v12    # "str":Ljava/lang/String;
    :cond_2
    :goto_1
    const/16 v25, 0x28d8

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v23

    .line 665
    .local v23, "viewContent":Landroid/view/View;
    if-eqz v23, :cond_5

    .line 666
    invoke-virtual/range {p3 .. p3}, Landroid/util/SparseArray;->size()I

    move-result v25

    if-nez v25, :cond_4

    .line 667
    const/16 v25, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setFocus(Z)V

    .line 668
    const/16 v25, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 659
    .end local v23    # "viewContent":Landroid/view/View;
    .restart local v12    # "str":Ljava/lang/String;
    :cond_3
    const-string v25, "night_"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 660
    const-string v25, "night_"

    const-string v26, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->setStrDrawable(Ljava/lang/String;Z)V

    goto :goto_1

    .line 671
    .end local v12    # "str":Ljava/lang/String;
    .restart local v23    # "viewContent":Landroid/view/View;
    :cond_4
    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 674
    :cond_5
    const/4 v9, 0x0

    .line 675
    .local v9, "flag":Z
    const/16 v25, 0x28da

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 677
    .local v13, "strAddr":Ljava/lang/String;
    const/16 v25, 0x28da

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/lsec/core/frame/ctrl/JText;

    .line 678
    .local v15, "textAddr":Lcom/lsec/core/frame/ctrl/JText;
    const/16 v25, 0x28db

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/lsec/core/frame/ctrl/JText;

    .line 679
    .local v16, "textName":Lcom/lsec/core/frame/ctrl/JText;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_8

    .line 680
    move-object/from16 v0, p0

    iget v0, v0, Lcom/syu/bt/page/Page_Pair;->mPosMoveTo:I

    move/from16 v25, v0

    if-ltz v25, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/syu/bt/page/Page_Pair;->mPosMoveTo:I

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, p4

    if-ne v0, v1, :cond_6

    .line 681
    invoke-static {v13}, Lcom/syu/app/ipc/Bt_IpcObj;->setChoiceAddr(Ljava/lang/String;)V

    .line 684
    :cond_6
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getChoiceAddr()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_17

    .line 685
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getChoiceAddr()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 686
    const/4 v9, 0x1

    .line 697
    :cond_7
    :goto_2
    sget-object v25, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v26, "BT_8581"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 698
    sget-object v25, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_18

    .line 699
    const/16 v25, 0x0

    const/16 v26, 0x96

    const/16 v27, 0xff

    invoke-static/range {v25 .. v27}, Landroid/graphics/Color;->rgb(III)I

    move-result v25

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 700
    const/16 v25, 0x0

    const/16 v26, 0x96

    const/16 v27, 0xff

    invoke-static/range {v25 .. v27}, Landroid/graphics/Color;->rgb(III)I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 707
    :cond_8
    :goto_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/lsec/core/frame/ctrl/JPage;->setFocus(Z)V

    .line 709
    if-eqz v16, :cond_b

    .line 710
    if-eqz v9, :cond_19

    sget-object v25, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    :goto_4
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 711
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/lsec/core/frame/ctrl/JText;->setFocus(Z)V

    .line 712
    sget-object v25, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v26, "TZY_NEW"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 713
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 714
    sget-object v25, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    const-string v26, "UI7"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 715
    sget v25, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v25, :cond_1a

    const/16 v25, -0x1

    :goto_5
    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 718
    :cond_9
    const-string v25, "gdy1"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, " 00 mColorType = "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v27, Lcom/syu/bt/App_Bt;->mColorType:I

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    sget-object v25, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v26, "YL_3"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_a

    sget-object v25, Lcom/syu/bt/App_Bt;->mUi_Name:Ljava/lang/String;

    const-string v26, "yl_dn1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_a

    .line 720
    sget-object v25, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v26, "BT_XYQ_HB"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_a

    sget-object v25, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v26, "SYU-XN"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 722
    :cond_a
    const-string v25, "gdy1"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, " 01 mColorType = "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v27, Lcom/syu/bt/App_Bt;->mColorType:I

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    sget v25, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v25, :cond_1b

    const/16 v25, -0x1

    :goto_6
    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 724
    const-string v25, "gdy1"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, " 02 mColorType = "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v27, Lcom/syu/bt/App_Bt;->mColorType:I

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_b
    if-eqz v15, :cond_e

    .line 729
    if-eqz v9, :cond_1c

    sget-object v25, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    :goto_7
    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/lsec/core/frame/ctrl/JText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 730
    invoke-virtual {v15, v9}, Lcom/lsec/core/frame/ctrl/JText;->setFocus(Z)V

    .line 731
    sget-object v25, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v26, "TZY_NEW"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 732
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 733
    sget-object v25, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    const-string v26, "UI7"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 734
    sget v25, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v25, :cond_1d

    const/16 v25, -0x1

    :goto_8
    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 737
    :cond_c
    sget-object v25, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v26, "YL_3"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_d

    sget-object v25, Lcom/syu/bt/App_Bt;->mUi_Name:Ljava/lang/String;

    const-string v26, "yl_dn1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_d

    .line 738
    sget-object v25, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v26, "BT_XYQ_HB"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_d

    sget-object v25, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v26, "SYU-XN"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_e

    .line 740
    :cond_d
    sget v25, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v25, :cond_1e

    const/16 v25, -0x1

    :goto_9
    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 744
    :cond_e
    const/16 v25, 0x28dc

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v19

    .line 745
    .local v19, "view":Landroid/view/View;
    if-eqz v19, :cond_11

    .line 746
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getPhoneAddr()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_f

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isDisConnect()Z

    move-result v25

    if-eqz v25, :cond_23

    .line 747
    :cond_f
    sget-object v25, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v26, "TZY_NEW"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1f

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v25

    const/16 v26, 0x0

    aget v25, v25, v26

    const/16 v26, 0x7d0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1f

    .line 748
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v25

    const-string v26, "bt2000_icocut"

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v25 .. v28}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 762
    :goto_a
    sget-boolean v25, Lcom/syu/bt/App_Bt;->bPopObdFlag:Z

    if-eqz v25, :cond_11

    .line 763
    invoke-direct/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getBindObdDevice()Ljava/util/Set;

    move-result-object v4

    .line 764
    .local v4, "bindObdDevice":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v4, :cond_11

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v25

    if-eqz v25, :cond_11

    .line 765
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_10
    :goto_b
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_28

    .line 774
    .end local v4    # "bindObdDevice":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_11
    const/16 v25, 0x28dd

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v20

    .line 775
    .local v20, "view2":Landroid/view/View;
    if-eqz v20, :cond_13

    .line 776
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getPhoneAddr()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_12

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isDisConnect()Z

    move-result v25

    if-eqz v25, :cond_29

    .line 777
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v25

    const-string v26, "bt_device"

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v25 .. v28}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 782
    :cond_13
    :goto_c
    const/16 v25, 0x28de

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v21

    .line 783
    .local v21, "view3":Landroid/view/View;
    if-eqz v21, :cond_14

    .line 784
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v26

    sget v25, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v25, :cond_2a

    const-string v25, "night_pair_icon"

    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 788
    :cond_14
    const/16 v25, 0x28df

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v24

    .line 789
    .local v24, "view_head_Icon":Landroid/view/View;
    if-eqz v24, :cond_15

    .line 790
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Pair;->str_PairIcon:[Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Pair;->random:Ljava/util/Random;

    move-object/from16 v27, v0

    const/16 v28, 0x5

    invoke-virtual/range {v27 .. v28}, Ljava/util/Random;->nextInt(I)I

    move-result v27

    aget-object v26, v26, v27

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v25 .. v28}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 792
    :cond_15
    const/16 v25, 0x28e0

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 793
    .local v18, "txt":Landroid/widget/TextView;
    if-eqz v18, :cond_0

    .line 794
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getPhoneAddr()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_16

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isDisConnect()Z

    move-result v25

    if-eqz v25, :cond_2b

    .line 795
    :cond_16
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v25, v0

    const-string v26, "bt_disconnected"

    invoke-virtual/range {v25 .. v26}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    :goto_e
    sget-object v25, Lcom/syu/bt/App_Bt;->mUi_Name:Ljava/lang/String;

    const-string v26, "yl_dn1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 801
    sget v25, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v25, :cond_2c

    const/16 v25, -0x1

    :goto_f
    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 689
    .end local v18    # "txt":Landroid/widget/TextView;
    .end local v19    # "view":Landroid/view/View;
    .end local v20    # "view2":Landroid/view/View;
    .end local v21    # "view3":Landroid/view/View;
    .end local v24    # "view_head_Icon":Landroid/view/View;
    :cond_17
    sget-object v25, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v26, "BT_8581"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 690
    sget-object v25, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 691
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 702
    :cond_18
    const/16 v25, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 703
    const/16 v25, -0x1

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    goto/16 :goto_3

    .line 710
    :cond_19
    sget-object v25, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_4

    .line 715
    :cond_1a
    const/high16 v25, -0x1000000

    goto/16 :goto_5

    .line 723
    :cond_1b
    const/high16 v25, -0x1000000

    goto/16 :goto_6

    .line 729
    :cond_1c
    sget-object v25, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_7

    .line 734
    :cond_1d
    const/high16 v25, -0x1000000

    goto/16 :goto_8

    .line 740
    :cond_1e
    const/high16 v25, -0x1000000

    goto/16 :goto_9

    .line 749
    .restart local v19    # "view":Landroid/view/View;
    :cond_1f
    sget-object v25, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v26, "YL_3"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_20

    sget-object v25, Lcom/syu/bt/App_Bt;->mUi_Name:Ljava/lang/String;

    const-string v26, "yl_dn1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_20

    sget-object v25, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v26, "SYU-XN"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_22

    .line 750
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v26

    sget v25, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v25, :cond_21

    const-string v25, "night_bt_icocut"

    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a

    :cond_21
    const-string v25, "bt_icocut"

    goto :goto_10

    .line 752
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v25

    const-string v26, "bt_icocut"

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v25 .. v28}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a

    .line 754
    :cond_23
    sget-object v25, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v26, "TZY_NEW"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_24

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v25

    const/16 v26, 0x0

    aget v25, v25, v26

    const/16 v26, 0x7d0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_24

    .line 755
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v25

    const-string v26, "bt2000_icolink"

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v25 .. v28}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a

    .line 756
    :cond_24
    sget-object v25, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v26, "YL_3"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_25

    sget-object v25, Lcom/syu/bt/App_Bt;->mUi_Name:Ljava/lang/String;

    const-string v26, "yl_dn1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_25

    sget-object v25, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v26, "SYU-XN"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_27

    .line 757
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v26

    sget v25, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v25, :cond_26

    const-string v25, "night_bt_icolink"

    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a

    :cond_26
    const-string v25, "bt_icolink"

    goto :goto_11

    .line 759
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v25

    const-string v26, "bt_icolink"

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v25 .. v28}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a

    .line 765
    .restart local v4    # "bindObdDevice":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_28
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    .line 766
    .local v5, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_10

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getPhoneAddr()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_10

    .line 767
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v26

    const-string v27, "bt_icolinkobd"

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v26 .. v29}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_b

    .line 779
    .end local v4    # "bindObdDevice":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v5    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    .restart local v20    # "view2":Landroid/view/View;
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v25

    const-string v26, "bt_device_p"

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v25 .. v28}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_c

    .line 784
    .restart local v21    # "view3":Landroid/view/View;
    :cond_2a
    const-string v25, "pair_icon"

    goto/16 :goto_d

    .line 797
    .restart local v18    # "txt":Landroid/widget/TextView;
    .restart local v24    # "view_head_Icon":Landroid/view/View;
    :cond_2b
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v25, v0

    const-string v26, "bt_connected"

    invoke-virtual/range {v25 .. v26}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 801
    :cond_2c
    const/high16 v25, -0x1000000

    goto/16 :goto_f

    .line 808
    .end local v9    # "flag":Z
    .end local v13    # "strAddr":Ljava/lang/String;
    .end local v15    # "textAddr":Lcom/lsec/core/frame/ctrl/JText;
    .end local v16    # "textName":Lcom/lsec/core/frame/ctrl/JText;
    .end local v18    # "txt":Landroid/widget/TextView;
    .end local v19    # "view":Landroid/view/View;
    .end local v20    # "view2":Landroid/view/View;
    .end local v21    # "view3":Landroid/view/View;
    .end local v23    # "viewContent":Landroid/view/View;
    .end local v24    # "view_head_Icon":Landroid/view/View;
    :sswitch_1
    if-eqz p2, :cond_2d

    sget-object v25, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v26, "changecolor"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_2d

    .line 809
    const-string v25, "key"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, " 00 InitGridItem set App_Bt.color = "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v27, Lcom/syu/bt/App_Bt;->color:I

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v8, v0, [I

    const/16 v25, 0x0

    .line 811
    sget v26, Lcom/syu/bt/App_Bt;->color:I

    aput v26, v8, v25

    const/16 v25, 0x1

    .line 812
    sget v26, Lcom/syu/bt/App_Bt;->color:I

    aput v26, v8, v25

    const/16 v25, 0x2

    .line 813
    sget v26, Lcom/syu/bt/App_Bt;->color:I

    aput v26, v8, v25

    const/16 v25, 0x3

    .line 814
    sget v26, Lcom/syu/bt/App_Bt;->color:I

    aput v26, v8, v25

    .line 816
    .restart local v8    # "colors":[I
    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v11, v0, [[I

    const/16 v25, 0x0

    .line 817
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const v28, 0x10100a7

    aput v28, v26, v27

    aput-object v26, v11, v25

    const/16 v25, 0x1

    .line 818
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const v28, 0x10100a1

    aput v28, v26, v27

    aput-object v26, v11, v25

    const/16 v25, 0x2

    .line 819
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const v28, 0x1010367

    aput v28, v26, v27

    aput-object v26, v11, v25

    const/16 v25, 0x3

    .line 820
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const v28, 0x101009c

    aput v28, v26, v27

    aput-object v26, v11, v25

    .line 822
    .restart local v11    # "states":[[I
    new-instance v25, Landroid/content/res/ColorStateList;

    move-object/from16 v0, v25

    invoke-direct {v0, v11, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 823
    sget-object v25, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 826
    .end local v8    # "colors":[I
    .end local v11    # "states":[[I
    :cond_2d
    const-string v25, "a2dp"

    const-string v26, " 111 A2DP_STATUS Paired_ListView "

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    sget-boolean v25, Lcom/syu/bt/App_Bt;->bUI_NightColour:Z

    if-eqz v25, :cond_2e

    .line 828
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/ctrl/JPage;->getStrDrawable()Ljava/lang/String;

    move-result-object v12

    .line 829
    .restart local v12    # "str":Ljava/lang/String;
    const-string v25, "gdy66"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "222 Page_History InitGridItem mColorType = "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v27, Lcom/syu/bt/App_Bt;->mColorType:I

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " str = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    sget v25, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v25, :cond_2f

    .line 831
    const-string v25, "night_"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_2e

    .line 832
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "night_"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->setStrDrawable(Ljava/lang/String;Z)V

    .line 841
    .end local v12    # "str":Ljava/lang/String;
    :cond_2e
    :goto_12
    const/16 v25, 0x28e2

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v23

    .line 842
    .restart local v23    # "viewContent":Landroid/view/View;
    if-eqz v23, :cond_31

    .line 843
    invoke-virtual/range {p3 .. p3}, Landroid/util/SparseArray;->size()I

    move-result v25

    if-nez v25, :cond_30

    .line 844
    const/16 v25, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setFocus(Z)V

    .line 845
    const/16 v25, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 835
    .end local v23    # "viewContent":Landroid/view/View;
    .restart local v12    # "str":Ljava/lang/String;
    :cond_2f
    const-string v25, "night_"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_2e

    .line 836
    const-string v25, "night_"

    const-string v26, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->setStrDrawable(Ljava/lang/String;Z)V

    goto :goto_12

    .line 848
    .end local v12    # "str":Ljava/lang/String;
    .restart local v23    # "viewContent":Landroid/view/View;
    :cond_30
    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 851
    :cond_31
    const/4 v9, 0x0

    .line 852
    .restart local v9    # "flag":Z
    const/16 v25, 0x28e4

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 853
    .restart local v13    # "strAddr":Ljava/lang/String;
    const/16 v25, 0x28e5

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 854
    .local v14, "strName":Ljava/lang/String;
    const/16 v25, 0x28e4

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/lsec/core/frame/ctrl/JText;

    .line 855
    .restart local v15    # "textAddr":Lcom/lsec/core/frame/ctrl/JText;
    const/16 v25, 0x28e5

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/lsec/core/frame/ctrl/JText;

    .line 856
    .restart local v16    # "textName":Lcom/lsec/core/frame/ctrl/JText;
    const/16 v25, 0x28e6

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/lsec/core/frame/ctrl/JText;

    .line 857
    .local v17, "textState":Lcom/lsec/core/frame/ctrl/JText;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_33

    .line 858
    move-object/from16 v0, p0

    iget v0, v0, Lcom/syu/bt/page/Page_Pair;->mPosMoveTo:I

    move/from16 v25, v0

    if-ltz v25, :cond_32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/syu/bt/page/Page_Pair;->mPosMoveTo:I

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, p4

    if-ne v0, v1, :cond_32

    .line 859
    invoke-static {v13}, Lcom/syu/app/ipc/Bt_IpcObj;->setChoiceAddr(Ljava/lang/String;)V

    .line 862
    :cond_32
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getChoiceAddr()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_33

    .line 863
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getChoiceAddr()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_33

    .line 864
    const/4 v9, 0x1

    .line 868
    :cond_33
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/lsec/core/frame/ctrl/JPage;->setFocus(Z)V

    .line 869
    sget-object v25, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v26, "BT_23NEW"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_34

    .line 870
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getPhoneAddr()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_44

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v25

    if-eqz v25, :cond_44

    .line 871
    const/16 v25, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setFocus(Z)V

    .line 876
    :cond_34
    :goto_13
    if-eqz v16, :cond_36

    .line 877
    if-eqz v9, :cond_45

    sget-object v25, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    :goto_14
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 878
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/lsec/core/frame/ctrl/JText;->setFocus(Z)V

    .line 879
    sget-object v25, Lcom/syu/bt/App_Bt;->mUi_Name:Ljava/lang/String;

    const-string v26, "yl_dn1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_35

    sget-object v25, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v26, "BT_XYQ_HB"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_35

    sget-object v25, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v26, "SYU-XN"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_36

    .line 880
    :cond_35
    sget v25, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v25, :cond_46

    const/16 v25, -0x1

    :goto_15
    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 885
    :cond_36
    if-eqz v17, :cond_38

    .line 886
    if-eqz v9, :cond_47

    sget-object v25, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    :goto_16
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 887
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/lsec/core/frame/ctrl/JText;->setFocus(Z)V

    .line 889
    sget-boolean v25, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v25, :cond_4a

    .line 890
    const-string v25, "hfp"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, " 111 Page_Pair PairedItem_State sPhone2_MAC = "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v27, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    const/16 v28, 0x0

    aget-object v27, v27, v28

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "-"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    const/16 v28, 0x1

    aget-object v27, v27, v28

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " strAddr = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    sget-object v25, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    const/16 v26, 0x0

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_48

    sget-object v25, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    const/16 v26, 0x0

    aget v25, v25, v26

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_48

    .line 892
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "P1 "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v26, v0

    const-string v27, "bt_connected"

    invoke-virtual/range {v26 .. v27}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 893
    sget-object v25, Lcom/syu/bt/App_Bt;->sPhone2_NAME:[Ljava/lang/String;

    const/16 v26, 0x0

    aput-object v14, v25, v26

    .line 909
    :goto_17
    sget-object v25, Lcom/syu/bt/App_Bt;->mUi_Name:Ljava/lang/String;

    const-string v26, "yl_dn1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_37

    sget-object v25, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v26, "BT_XYQ_HB"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_37

    sget-object v25, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v26, "SYU-XN"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_38

    .line 910
    :cond_37
    sget v25, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v25, :cond_4d

    const/16 v25, -0x1

    :goto_18
    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 914
    :cond_38
    if-eqz v15, :cond_3a

    .line 915
    if-eqz v9, :cond_4e

    sget-object v25, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    :goto_19
    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/lsec/core/frame/ctrl/JText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 916
    invoke-virtual {v15, v9}, Lcom/lsec/core/frame/ctrl/JText;->setFocus(Z)V

    .line 917
    sget-object v25, Lcom/syu/bt/App_Bt;->mUi_Name:Ljava/lang/String;

    const-string v26, "yl_dn1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_39

    sget-object v25, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v26, "BT_XYQ_HB"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_39

    sget-object v25, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v26, "SYU-XN"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_3a

    .line 918
    :cond_39
    sget v25, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v25, :cond_4f

    const/16 v25, -0x1

    :goto_1a
    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 921
    :cond_3a
    sget-boolean v25, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v25, :cond_3d

    .line 922
    const/16 v25, 0x28eb

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v7

    .line 923
    .local v7, "btnBtav":Landroid/view/View;
    if-eqz v7, :cond_3d

    .line 924
    sget-boolean v25, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v25, :cond_3d

    .line 925
    const-string v25, "a2dp"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, " 222 Page_Pair PairedItem_Btav App_Bt.bPhone2_A2DP_Mac = "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v27, Lcom/syu/bt/App_Bt;->bPhone2_A2DP_Mac:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " strAddr = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    sget-object v25, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    const/16 v26, 0x0

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3b

    sget-object v25, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    const/16 v26, 0x0

    aget v25, v25, v26

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_3c

    :cond_3b
    sget-object v25, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    const/16 v26, 0x1

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_51

    sget-object v25, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    const/16 v26, 0x1

    aget v25, v25, v26

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_51

    .line 927
    :cond_3c
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 928
    sget-object v25, Lcom/syu/bt/App_Bt;->bPhone2_A2DP_Mac:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_50

    .line 929
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v25

    const-string v26, "item_btav_p"

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v25 .. v28}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 940
    .end local v7    # "btnBtav":Landroid/view/View;
    :cond_3d
    :goto_1b
    const/16 v25, 0x28e7

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v19

    .line 941
    .restart local v19    # "view":Landroid/view/View;
    if-eqz v19, :cond_3f

    .line 942
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getPhoneAddr()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3e

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isDisConnect()Z

    move-result v25

    if-eqz v25, :cond_55

    .line 943
    :cond_3e
    sget-object v25, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v26, "TZY_NEW"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_52

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v25

    const/16 v26, 0x0

    aget v25, v25, v26

    const/16 v26, 0x7d0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_52

    .line 944
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v25

    const-string v26, "bt2000_icocut"

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v25 .. v28}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 962
    :cond_3f
    :goto_1c
    const-string v25, "gdy1"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, " 00 PairedItem_Delete1 = "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v27, Lcom/syu/bt/App_Bt;->mColorType:I

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    const/16 v25, 0x28ea

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v22

    .line 964
    .local v22, "view4":Landroid/view/View;
    if-eqz v22, :cond_40

    .line 965
    const-string v25, "gdy1"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, " 11 PairedItem_Delete1 = "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v27, Lcom/syu/bt/App_Bt;->mColorType:I

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v26

    sget v25, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v25, :cond_59

    const-string v25, "night_bt_pairclear_ico1"

    :goto_1d
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 969
    :cond_40
    const/16 v25, 0x28e9

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lsec/core/frame/ctrl/JButton;

    .line 970
    .local v6, "btn":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v6, :cond_41

    .line 971
    sget-object v25, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v26, "SYU-XN"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_41

    .line 972
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v26

    sget v25, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v25, :cond_5a

    const-string v25, "night_bt_pairclear_ico"

    :goto_1e
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 987
    :cond_41
    const/16 v25, 0x28e8

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 988
    .restart local v18    # "txt":Landroid/widget/TextView;
    if-eqz v18, :cond_0

    .line 990
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getPhoneAddr()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_42

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isDisConnect()Z

    move-result v25

    if-eqz v25, :cond_5b

    .line 991
    :cond_42
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v25, v0

    const-string v26, "bt_disconnected"

    invoke-virtual/range {v25 .. v26}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 995
    :goto_1f
    sget-object v25, Lcom/syu/bt/App_Bt;->mUi_Name:Ljava/lang/String;

    const-string v26, "yl_dn1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_43

    sget-object v25, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v26, "BT_XYQ_HB"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_43

    sget-object v25, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v26, "SYU-XN"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 996
    :cond_43
    sget v25, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v25, :cond_5c

    const/16 v25, -0x1

    :goto_20
    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 873
    .end local v6    # "btn":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v18    # "txt":Landroid/widget/TextView;
    .end local v19    # "view":Landroid/view/View;
    .end local v22    # "view4":Landroid/view/View;
    :cond_44
    const/16 v25, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setFocus(Z)V

    goto/16 :goto_13

    .line 877
    :cond_45
    sget-object v25, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_14

    .line 880
    :cond_46
    const/high16 v25, -0x1000000

    goto/16 :goto_15

    .line 886
    :cond_47
    sget-object v25, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_16

    .line 895
    :cond_48
    sget-object v25, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    const/16 v26, 0x1

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_49

    sget-object v25, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    const/16 v26, 0x1

    aget v25, v25, v26

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_49

    .line 896
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "P2 "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v26, v0

    const-string v27, "bt_connected"

    invoke-virtual/range {v26 .. v27}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 897
    sget-object v25, Lcom/syu/bt/App_Bt;->sPhone2_NAME:[Ljava/lang/String;

    const/16 v26, 0x1

    aput-object v14, v25, v26

    goto/16 :goto_17

    .line 900
    :cond_49
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v25, v0

    const-string v26, "bt_disconnected"

    invoke-virtual/range {v25 .. v26}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_17

    .line 904
    :cond_4a
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getPhoneAddr()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4b

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isDisConnect()Z

    move-result v25

    if-eqz v25, :cond_4c

    .line 905
    :cond_4b
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v25, v0

    const-string v26, "bt_disconnected"

    invoke-virtual/range {v25 .. v26}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_17

    .line 907
    :cond_4c
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v25, v0

    const-string v26, "bt_connected"

    invoke-virtual/range {v25 .. v26}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_17

    .line 910
    :cond_4d
    const/high16 v25, -0x1000000

    goto/16 :goto_18

    .line 915
    :cond_4e
    sget-object v25, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_19

    .line 918
    :cond_4f
    const/high16 v25, -0x1000000

    goto/16 :goto_1a

    .line 931
    .restart local v7    # "btnBtav":Landroid/view/View;
    :cond_50
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v25

    const-string v26, "item_btav"

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v25 .. v28}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1b

    .line 934
    :cond_51
    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1b

    .line 945
    .end local v7    # "btnBtav":Landroid/view/View;
    .restart local v19    # "view":Landroid/view/View;
    :cond_52
    sget-object v25, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v26, "SYU-XN"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_54

    .line 946
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v26

    sget v25, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v25, :cond_53

    const-string v25, "night_bt_icocut"

    :goto_21
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1c

    :cond_53
    const-string v25, "bt_icocut"

    goto :goto_21

    .line 948
    :cond_54
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v25

    const-string v26, "bt_icocut"

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v25 .. v28}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1c

    .line 952
    :cond_55
    sget-object v25, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v26, "TZY_NEW"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_56

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v25

    const/16 v26, 0x0

    aget v25, v25, v26

    const/16 v26, 0x7d0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_56

    .line 953
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v25

    const-string v26, "bt2000_icolink"

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v25 .. v28}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1c

    .line 954
    :cond_56
    sget-object v25, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v26, "SYU-XN"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_58

    .line 955
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v26

    sget v25, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v25, :cond_57

    const-string v25, "night_bt_icolink"

    :goto_22
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1c

    :cond_57
    const-string v25, "bt_icolink"

    goto :goto_22

    .line 957
    :cond_58
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v25

    const-string v26, "bt_icolink"

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v25 .. v28}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1c

    .line 966
    .restart local v22    # "view4":Landroid/view/View;
    :cond_59
    const-string v25, "bt_pairclear_ico1"

    goto/16 :goto_1d

    .line 972
    .restart local v6    # "btn":Lcom/lsec/core/frame/ctrl/JButton;
    :cond_5a
    const-string v25, "bt_pairclear_ico"

    goto/16 :goto_1e

    .line 993
    .restart local v18    # "txt":Landroid/widget/TextView;
    :cond_5b
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v25, v0

    const-string v26, "bt_connected"

    invoke-virtual/range {v25 .. v26}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1f

    .line 996
    :cond_5c
    const/high16 v25, -0x1000000

    goto/16 :goto_20

    .line 628
    nop

    :sswitch_data_0
    .sparse-switch
        0x28d3 -> :sswitch_0
        0x28e1 -> :sswitch_1
    .end sparse-switch
.end method

.method public ResponseClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 506
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/syu/bt/util/BTUtil;->IsConnectCarplay()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 510
    .local v3, "id":I
    sparse-switch v3, :sswitch_data_0

    .line 618
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/syu/bt/page/Page_Pair;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v4, p1}, Lcom/syu/bt/Act_Bt;->MenuClick(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 512
    :sswitch_0
    sget v6, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 513
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->cut()V

    goto :goto_1

    .line 514
    :cond_3
    sget v6, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_5

    .line 515
    iget-boolean v6, p0, Lcom/syu/bt/page/Page_Pair;->isStartDiscovey:Z

    if-eqz v6, :cond_4

    .line 516
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->stopDiscover()V

    .line 517
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v6, "bt_discover_end"

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/syu/bt/page/Page_Pair;->showDiscover(ZLjava/lang/String;)V

    goto :goto_1

    .line 519
    :cond_4
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->startDiscover()V

    .line 520
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v6, "bt_discovering"

    invoke-virtual {v4, v6}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Lcom/syu/bt/page/Page_Pair;->showDiscover(ZLjava/lang/String;)V

    goto :goto_1

    .line 523
    :cond_5
    iget-boolean v6, p0, Lcom/syu/bt/page/Page_Pair;->isStartDiscovey:Z

    if-eqz v6, :cond_7

    move v1, v4

    .line 524
    .local v1, "flag":Z
    :goto_2
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 525
    iget-object v6, p0, Lcom/syu/bt/page/Page_Pair;->tipText:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v6, :cond_6

    .line 526
    iget-boolean v6, p0, Lcom/syu/bt/page/Page_Pair;->isStartDiscovey:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/syu/bt/page/Page_Pair;->tipText:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v6}, Lcom/lsec/core/frame/ctrl/JText;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_6

    .line 528
    const-string v6, "hfp3"

    const-string v7, " 33 bt_linking "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    iget-object v6, v6, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v7, "bt_linking"

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v6}, Lcom/syu/bt/page/Page_Pair;->showConnectTip(ZLjava/lang/String;)V

    .line 530
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    iget-object v6, v6, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v7, "bt_discovering"

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/syu/bt/page/Page_Pair;->showDiscover(ZLjava/lang/String;)V

    .line 535
    :cond_6
    if-eqz v1, :cond_8

    .line 536
    sget-object v6, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v6, v6, Lcom/syu/bt/db/Bt_Info;->mListPair:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 537
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->refreshList()V

    .line 538
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->startDiscover()V

    .line 540
    const-string v6, "hfp3"

    const-string v7, " 44 bt_linking "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    iget-object v6, v6, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v7, "bt_linking"

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v6}, Lcom/syu/bt/page/Page_Pair;->showConnectTip(ZLjava/lang/String;)V

    .line 542
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v6, "bt_discovering"

    invoke-virtual {v4, v6}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Lcom/syu/bt/page/Page_Pair;->showDiscover(ZLjava/lang/String;)V

    goto/16 :goto_1

    .end local v1    # "flag":Z
    :cond_7
    move v1, v5

    .line 523
    goto :goto_2

    .line 544
    .restart local v1    # "flag":Z
    :cond_8
    iget-boolean v4, p0, Lcom/syu/bt/page/Page_Pair;->isStartDiscovey:Z

    if-eqz v4, :cond_2

    sget v4, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_2

    .line 545
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->stopDiscover()V

    goto/16 :goto_1

    .line 550
    .end local v1    # "flag":Z
    :sswitch_1
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v6

    if-nez v6, :cond_0

    .line 555
    sget-boolean v6, Lcom/syu/bt/App_Bt;->bCarLinkAutoConnect:Z

    if-eqz v6, :cond_9

    :goto_3
    invoke-static {v4}, Lcom/syu/app/ipc/Bt_IpcObj;->setCarLinkAutoConnect(Z)V

    goto/16 :goto_1

    :cond_9
    move v4, v5

    goto :goto_3

    .line 558
    :sswitch_2
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v4, p0}, Lcom/syu/app/ipc/Bt_IpcObj;->FuncPairLink(Lcom/syu/bt/page/Page_Pair;)V

    goto/16 :goto_1

    .line 561
    :sswitch_3
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 562
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->cut()V

    goto/16 :goto_1

    .line 564
    :cond_a
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->removeBond()V

    goto/16 :goto_1

    .line 568
    :sswitch_4
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isZhangConfig()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 569
    const/4 v0, 0x0

    .line 570
    .local v0, "delete":Z
    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v4, v4, Lcom/syu/bt/db/Bt_Info;->mListPair:Ljava/util/List;

    if-eqz v4, :cond_10

    .line 571
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v4, v4, Lcom/syu/bt/db/Bt_Info;->mListPair:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_b

    .line 579
    :goto_5
    if-eqz v0, :cond_d

    .line 580
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->refreshList()V

    goto/16 :goto_1

    .line 572
    :cond_b
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getChoiceAddr()Ljava/lang/String;

    move-result-object v5

    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v4, v4, Lcom/syu/bt/db/Bt_Info;->mListPair:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    const/16 v6, 0x28da

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 573
    const/4 v0, 0x1

    .line 574
    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v4, v4, Lcom/syu/bt/db/Bt_Info;->mListPair:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 575
    const-string v4, ""

    invoke-static {v4}, Lcom/syu/app/ipc/Bt_IpcObj;->setChoiceAddr(Ljava/lang/String;)V

    goto :goto_5

    .line 571
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 582
    :cond_d
    const/4 v2, 0x0

    :goto_6
    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v4, v4, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_e

    .line 592
    :goto_7
    if-eqz v0, :cond_2

    .line 593
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v4}, Lcom/syu/app/ipc/Bt_IpcObj;->queryPairList()V

    .line 594
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->refreshPairedList()V

    goto/16 :goto_1

    .line 583
    :cond_e
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getChoiceAddr()Ljava/lang/String;

    move-result-object v5

    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v4, v4, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    const/16 v6, 0x28e4

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 584
    const/4 v0, 0x1

    .line 585
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getChoiceAddr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syu/app/ipc/Bt_IpcObj;->deleteConnectedDevice(Ljava/lang/String;)V

    .line 586
    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v4, v4, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 587
    const-string v4, ""

    invoke-static {v4}, Lcom/syu/app/ipc/Bt_IpcObj;->setChoiceAddr(Ljava/lang/String;)V

    goto :goto_7

    .line 582
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 600
    .end local v2    # "i":I
    :cond_10
    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v4, v4, Lcom/syu/bt/db/Bt_Info;->mListPair:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 601
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->refreshList()V

    goto/16 :goto_1

    .line 604
    .end local v0    # "delete":Z
    :cond_11
    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v4, v4, Lcom/syu/bt/db/Bt_Info;->mListPair:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 605
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->refreshList()V

    goto/16 :goto_1

    .line 609
    :sswitch_5
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    invoke-virtual {v5}, Lcom/syu/bt/App_Bt;->isHalfScreenAble()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 610
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/syu/bt/App_Bt;->setFullScreenMode(I)V

    goto/16 :goto_1

    .line 614
    :sswitch_6
    iget-object v4, p0, Lcom/syu/bt/page/Page_Pair;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v4}, Lcom/syu/bt/Act_Bt;->Func_Back()Z

    goto/16 :goto_1

    .line 510
    nop

    :sswitch_data_0
    .sparse-switch
        0x278f -> :sswitch_5
        0x28cd -> :sswitch_0
        0x28ce -> :sswitch_2
        0x28cf -> :sswitch_3
        0x28d0 -> :sswitch_4
        0x28d1 -> :sswitch_1
        0x2937 -> :sswitch_6
    .end sparse-switch
.end method

.method public clickItem(Lcom/lsec/core/frame/ctrl/JGridView;I)V
    .locals 3
    .param p1, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;
    .param p2, "position"    # I

    .prologue
    .line 1193
    if-ltz p2, :cond_1

    .line 1194
    sget-object v1, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListPair:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p2, :cond_1

    .line 1195
    sget-object v1, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListPair:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    const/16 v2, 0x28da

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1196
    .local v0, "addr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1197
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getChoiceAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1198
    invoke-static {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->setChoiceAddr(Ljava/lang/String;)V

    .line 1200
    iget-object v1, p1, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    if-eqz v1, :cond_0

    .line 1201
    iget-object v1, p1, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->notifyDataSetChanged()V

    .line 1203
    :cond_0
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->resetBtnEnable()V

    .line 1207
    .end local v0    # "addr":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public getChoiceName(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 8
    .param p1, "mChoiceAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/16 v7, 0x28e4

    const/16 v6, 0x28da

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v4

    .line 121
    :goto_0
    return-object v2

    .line 103
    :cond_0
    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v3, Lcom/syu/bt/db/Bt_Info;->mListPair:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 104
    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v3, Lcom/syu/bt/db/Bt_Info;->mListPair:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 112
    :cond_2
    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v3, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 113
    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v3, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move-object v2, v4

    .line 121
    goto :goto_0

    .line 104
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 105
    .local v2, "entity":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    .local v0, "addr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 107
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 113
    .end local v0    # "addr":Ljava/lang/String;
    .end local v2    # "entity":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 114
    .restart local v2    # "entity":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 115
    .local v1, "addr2":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 116
    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public init()V
    .locals 10

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    const/16 v7, 0x275e

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    .line 224
    .local v5, "view_40":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 225
    sget v6, Lcom/syu/bt/App_Bt;->iDensity:I

    const/16 v7, 0xf0

    if-lt v6, v7, :cond_5

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    .line 228
    const/16 v7, 0x28d3

    .line 227
    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lsec/core/frame/ctrl/JGridView;

    iput-object v6, p0, Lcom/syu/bt/page/Page_Pair;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    .line 229
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    .line 230
    const/16 v7, 0x28e1

    .line 229
    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lsec/core/frame/ctrl/JGridView;

    iput-object v6, p0, Lcom/syu/bt/page/Page_Pair;->mPairedView:Lcom/lsec/core/frame/ctrl/JGridView;

    .line 231
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    .line 232
    const/16 v7, 0x28cc

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lsec/core/frame/ctrl/JText;

    .line 231
    iput-object v6, p0, Lcom/syu/bt/page/Page_Pair;->tipText:Lcom/lsec/core/frame/ctrl/JText;

    .line 233
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    const/16 v7, 0x28cd

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v6, p0, Lcom/syu/bt/page/Page_Pair;->btnPairSearch:Lcom/lsec/core/frame/ctrl/JButton;

    .line 234
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    const/16 v7, 0x28ce

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v6, p0, Lcom/syu/bt/page/Page_Pair;->btnPairLink:Lcom/lsec/core/frame/ctrl/JButton;

    .line 235
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    const/16 v7, 0x28cf

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v6, p0, Lcom/syu/bt/page/Page_Pair;->btnPairCut:Lcom/lsec/core/frame/ctrl/JButton;

    .line 236
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    const/16 v7, 0x28d0

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v6, p0, Lcom/syu/bt/page/Page_Pair;->btnPairDel:Lcom/lsec/core/frame/ctrl/JButton;

    .line 237
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    const/16 v7, 0x29a2

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/syu/bt/page/Page_Pair;->vNoData:Landroid/view/View;

    .line 240
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->refreshList()V

    .line 241
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->refreshPairedList()V

    .line 242
    sget v6, Lcom/syu/bt/App_Bt;->color:I

    invoke-virtual {p0, v6}, Lcom/syu/bt/page/Page_Pair;->setButtonColor(I)V

    .line 243
    sget v6, Lcom/syu/bt/App_Bt;->mColorType:I

    invoke-virtual {p0, v6}, Lcom/syu/bt/page/Page_Pair;->setDayOrNight(I)V

    .line 245
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    const/16 v7, 0x28d1

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lsec/core/frame/ctrl/JSwitchButton;

    iput-object v6, p0, Lcom/syu/bt/page/Page_Pair;->auto:Lcom/lsec/core/frame/ctrl/JSwitchButton;

    .line 246
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_OEM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 247
    :cond_1
    iget-object v6, p0, Lcom/syu/bt/page/Page_Pair;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v6, :cond_2

    .line 249
    :try_start_0
    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_OEM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 253
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    const-string v7, "grid_verthumb"

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    iget-object v8, v8, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    iget-object v9, v9, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v6, v7, v8, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 254
    .local v0, "drawableVerthumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 255
    const-class v6, Landroid/view/View;

    const-string v7, "mScrollCache"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 256
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 257
    iget-object v6, p0, Lcom/syu/bt/page/Page_Pair;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 258
    .local v4, "scrollabilityCache":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "scrollBar"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 259
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 260
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 261
    .local v3, "scrollBarDrawable":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "mVerticalThumb"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 262
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 263
    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v0    # "drawableVerthumb":Landroid/graphics/drawable/Drawable;
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "scrollBarDrawable":Ljava/lang/Object;
    .end local v4    # "scrollabilityCache":Ljava/lang/Object;
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/syu/bt/page/Page_Pair;->mPairedView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v6, :cond_3

    .line 273
    :try_start_1
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    const-string v7, "grid_verthumb"

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    iget-object v8, v8, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    iget-object v9, v9, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v6, v7, v8, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 274
    .restart local v0    # "drawableVerthumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 275
    const-class v6, Landroid/view/View;

    const-string v7, "mScrollCache"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 276
    .restart local v2    # "f":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 277
    iget-object v6, p0, Lcom/syu/bt/page/Page_Pair;->mPairedView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 278
    .restart local v4    # "scrollabilityCache":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "scrollBar"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 279
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 280
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 281
    .restart local v3    # "scrollBarDrawable":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "mVerticalThumb"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 282
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 283
    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 290
    .end local v0    # "drawableVerthumb":Landroid/graphics/drawable/Drawable;
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "scrollBarDrawable":Ljava/lang/Object;
    .end local v4    # "scrollabilityCache":Ljava/lang/Object;
    :cond_3
    :goto_2
    sget-boolean v6, Lcom/syu/bt/App_Bt;->bShowPairedBt2:Z

    if-nez v6, :cond_4

    .line 291
    iget-object v6, p0, Lcom/syu/bt/page/Page_Pair;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v6, :cond_4

    .line 292
    iget-object v6, p0, Lcom/syu/bt/page/Page_Pair;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    new-instance v7, Lcom/syu/bt/page/Page_Pair$4;

    invoke-direct {v7, p0}, Lcom/syu/bt/page/Page_Pair$4;-><init>(Lcom/syu/bt/page/Page_Pair;)V

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JGridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 314
    :cond_4
    return-void

    .line 225
    :cond_5
    const/16 v6, 0x8

    goto/16 :goto_0

    .line 265
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 285
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 286
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public onNotify(I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Bt_IpcObj;->onNotify(Lcom/syu/bt/page/Page_Pair;I[I[F[Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/syu/bt/page/Page_Pair;->bTop:Z

    .line 216
    invoke-super {p0}, Lcom/lsec/core/frame/page/MyPage;->pause()V

    .line 217
    invoke-direct {p0}, Lcom/syu/bt/page/Page_Pair;->unregisterSearchDevicesReceiver()V

    .line 218
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->pauseTone()V

    .line 219
    return-void
.end method

.method public popPwd()V
    .locals 5

    .prologue
    .line 89
    iget-object v1, p0, Lcom/syu/bt/page/Page_Pair;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x2728

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getPopDlg(ILjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    .line 90
    .local v0, "popDlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 92
    :cond_0
    return-void
.end method

.method public pressGridItem(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/ctrl/JPage;Z)V
    .locals 3
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "pagePressed"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p3, "pressed"    # Z

    .prologue
    .line 1219
    if-eqz p3, :cond_5

    if-ne p1, p2, :cond_5

    const/4 v0, 0x1

    .line 1221
    .local v0, "bFocus":Z
    :goto_0
    const/16 v2, 0x28da

    invoke-virtual {p1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    .line 1220
    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 1222
    .local v1, "txt":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_0

    .line 1223
    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JText;->setFocus(Z)V

    .line 1225
    :cond_0
    const/16 v2, 0x28db

    invoke-virtual {p1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "txt":Lcom/lsec/core/frame/ctrl/JText;
    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 1226
    .restart local v1    # "txt":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_1

    .line 1227
    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JText;->setFocus(Z)V

    .line 1229
    :cond_1
    const/16 v2, 0x28e4

    invoke-virtual {p1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "txt":Lcom/lsec/core/frame/ctrl/JText;
    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 1230
    .restart local v1    # "txt":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_2

    .line 1231
    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JText;->setFocus(Z)V

    .line 1233
    :cond_2
    const/16 v2, 0x28e5

    invoke-virtual {p1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "txt":Lcom/lsec/core/frame/ctrl/JText;
    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 1234
    .restart local v1    # "txt":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_3

    .line 1235
    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JText;->setFocus(Z)V

    .line 1237
    :cond_3
    const/16 v2, 0x28e6

    invoke-virtual {p1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "txt":Lcom/lsec/core/frame/ctrl/JText;
    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 1238
    .restart local v1    # "txt":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_4

    .line 1239
    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JText;->setFocus(Z)V

    .line 1240
    :cond_4
    return-void

    .line 1219
    .end local v0    # "bFocus":Z
    .end local v1    # "txt":Lcom/lsec/core/frame/ctrl/JText;
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshList()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    sget-object v1, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListPair:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/syu/bt/page/Page_Pair;->resetList(Lcom/lsec/core/frame/ctrl/JGridView;Ljava/util/List;)V

    .line 329
    :cond_0
    return-void
.end method

.method public refreshPairedList()V
    .locals 4

    .prologue
    .line 373
    const-string v0, "hfp11"

    const-string v1, " ** Page_Pair 22   refreshPairedList "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->mRunnable_refreshPaired:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 375
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/syu/bt/page/Page_Pair;->mRunnable_refreshPaired:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 377
    return-void
.end method

.method public removeBond()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1370
    sget v4, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 1372
    :try_start_0
    sget-object v4, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    const-string v5, "bluetooth"

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/app/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothManager;

    .line 1373
    .local v2, "bluetoothManager":Landroid/bluetooth/BluetoothManager;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1374
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getChoiceAddr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 1376
    .local v1, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getChoiceAddr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1377
    invoke-static {v1}, Lcom/syu/bt/page/Page_Pair;->removeBond(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1383
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v1    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "bluetoothManager":Landroid/bluetooth/BluetoothManager;
    :cond_0
    :goto_0
    return-void

    .line 1379
    :catch_0
    move-exception v3

    .line 1380
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public resetBtnEnable()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1242
    sget-boolean v0, Lcom/syu/bt/App_Bt;->hideBtnWhenDisconnect:Z

    if-eqz v0, :cond_5

    .line 1243
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->btnPairSearch:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->btnPairSearch:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    .line 1245
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->btnPairLink:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_1

    .line 1246
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->btnPairLink:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    .line 1247
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->btnPairCut:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_2

    .line 1248
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->btnPairCut:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    .line 1249
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->btnPairDel:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_3

    .line 1250
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->btnPairDel:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    .line 1252
    :cond_3
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getChoiceAddr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1254
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getChoiceAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1255
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isDisConnect()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1256
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->btnPairSearch:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_4

    .line 1257
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->btnPairSearch:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    .line 1259
    :cond_4
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->btnPairLink:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_5

    .line 1260
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->btnPairLink:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    .line 1293
    :cond_5
    :goto_0
    return-void

    .line 1262
    :cond_6
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->btnPairCut:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_5

    .line 1263
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->btnPairCut:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    goto :goto_0

    .line 1266
    :cond_7
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isDisConnect()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1267
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->btnPairCut:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_5

    .line 1268
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->btnPairCut:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    goto :goto_0

    .line 1270
    :cond_8
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->btnPairSearch:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_9

    .line 1271
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->btnPairSearch:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    .line 1273
    :cond_9
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->btnPairCut:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_5

    .line 1274
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->btnPairCut:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    goto :goto_0

    .line 1278
    :cond_a
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getChoiceAddr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1279
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isDisConnect()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1280
    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListPair:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_b

    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    .line 1281
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 1282
    :cond_b
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->btnPairSearch:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_c

    .line 1283
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->btnPairSearch:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    .line 1285
    :cond_c
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->btnPairLink:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_d

    .line 1286
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->btnPairLink:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    .line 1287
    :cond_d
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->btnPairCut:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_e

    .line 1288
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->btnPairCut:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    .line 1289
    :cond_e
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->btnPairDel:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_5

    .line 1290
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->btnPairDel:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method public resetList(Lcom/lsec/core/frame/ctrl/JGridView;Ljava/util/List;)V
    .locals 2
    .param p1, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lsec/core/frame/ctrl/JGridView;",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 317
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->resetBtnEnable()V

    .line 318
    if-eqz p1, :cond_0

    .line 319
    invoke-static {p1, p2}, Lcom/lsec/core/frame/app/MyApplication;->resetList(Lcom/lsec/core/frame/ctrl/JGridView;Ljava/util/List;)V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->vNoData:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 322
    iget-object v1, p0, Lcom/syu/bt/page/Page_Pair;->vNoData:Landroid/view/View;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 324
    :cond_1
    return-void

    .line 322
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resume()V
    .locals 13

    .prologue
    const/4 v12, 0x6

    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 127
    iget-object v5, p0, Lcom/syu/bt/page/Page_Pair;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v5, v5, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-boolean v5, v5, Lcom/lsec/core/frame/app/MyActivity;->bTop:Z

    if-nez v5, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    sget-boolean v5, Lcom/syu/bt/App_Bt;->bNo_Pair:Z

    if-eqz v5, :cond_2

    .line 130
    iget-object v5, p0, Lcom/syu/bt/page/Page_Pair;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v5, v5, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    const/16 v6, 0x271b

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    goto :goto_0

    .line 134
    :cond_2
    const-string v5, "hfp4"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " Page_Pair resume mListHasPaired = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v7, v7, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v5, "gdy5"

    const-string v6, " 00 Page_Pair resume "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iput-boolean v9, p0, Lcom/syu/bt/page/Page_Pair;->bTop:Z

    .line 137
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v5}, Lcom/syu/app/ipc/Bt_IpcObj;->recoverAppId()V

    .line 138
    iget-object v5, p0, Lcom/syu/bt/page/Page_Pair;->mPairedView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v5, :cond_3

    sget-boolean v5, Lcom/syu/bt/App_Bt;->bShowPairedBt:Z

    if-eqz v5, :cond_3

    .line 139
    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 140
    iget-object v5, p0, Lcom/syu/bt/page/Page_Pair;->mPairedView:Lcom/lsec/core/frame/ctrl/JGridView;

    sget-object v6, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v6, v6, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    invoke-virtual {p0, v5, v6}, Lcom/syu/bt/page/Page_Pair;->resetList(Lcom/lsec/core/frame/ctrl/JGridView;Ljava/util/List;)V

    .line 141
    const-string v5, "hfp"

    const-string v6, " 11 Page_Pair resumequeryPairList "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_3
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v5}, Lcom/syu/app/ipc/Bt_IpcObj;->queryPairList()V

    .line 145
    sget-object v5, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v6, "BT_8581"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 146
    const-string v5, ""

    invoke-static {v5}, Lcom/syu/app/ipc/Bt_IpcObj;->setChoiceAddr(Ljava/lang/String;)V

    .line 149
    :cond_4
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v6, 0x28d5

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JText;

    .line 150
    .local v3, "text_Name":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v3, :cond_5

    .line 151
    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sDevName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :cond_5
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v6, 0x28d6

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 153
    .local v1, "text_Addr":Lcom/lsec/core/frame/ctrl/JText;
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v6, 0x28d7

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JText;

    .line 155
    .local v2, "text_Err":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_6

    .line 156
    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 157
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    .line 158
    .local v4, "value":Ljava/lang/String;
    const-string v5, "gdy3"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " U_LOCAL_MAC_ADDR value = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_9

    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 161
    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 162
    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 163
    const/16 v6, 0x8

    invoke-virtual {v4, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 164
    const/16 v6, 0x8

    const/16 v7, 0xa

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 165
    const/16 v6, 0xa

    const/16 v7, 0xc

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 160
    invoke-virtual {v1, v5}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :goto_1
    if-eqz v2, :cond_6

    .line 169
    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x14

    if-le v5, v6, :cond_a

    .line 170
    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 177
    .end local v4    # "value":Ljava/lang/String;
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->refreshList()V

    .line 178
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->refreshPairedList()V

    .line 179
    invoke-direct {p0}, Lcom/syu/bt/page/Page_Pair;->registerSearchDevicesReceiver()V

    .line 180
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->resetBtnEnable()V

    .line 182
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-boolean v5, v5, Lcom/syu/bt/App_Bt;->bPopBtRingSet:Z

    if-eqz v5, :cond_7

    .line 183
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/syu/bt/App_Bt;->popBtRingSet(Z)V

    .line 185
    :cond_7
    sget-boolean v5, Lcom/syu/bt/App_Bt;->bDelMenuFromBtAv:Z

    if-eqz v5, :cond_8

    .line 186
    iget-object v5, p0, Lcom/syu/bt/page/Page_Pair;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v5, v5, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v5, v5, Lcom/lsec/core/frame/app/MyUi;->mPages:Landroid/util/SparseArray;

    const/16 v6, 0x2712

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JPage;

    .line 187
    .local v0, "pageMenu":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v0, :cond_8

    .line 188
    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JPage;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_8

    .line 189
    invoke-virtual {v0, v8}, Lcom/lsec/core/frame/ctrl/JPage;->setVisibility(I)V

    .line 192
    .end local v0    # "pageMenu":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_8
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->resumeTone()V

    .line 193
    sget-boolean v5, Lcom/syu/bt/App_Bt;->bCarLinkAutoConnect:Z

    invoke-virtual {p0, v5}, Lcom/syu/bt/page/Page_Pair;->updateCarplayAuto(Z)V

    .line 195
    sget-object v5, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v6, "BT_23NEW"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 196
    iget-object v5, p0, Lcom/syu/bt/page/Page_Pair;->mRunnJumpTalking:Ljava/lang/Runnable;

    invoke-static {v5}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 197
    iget-object v5, p0, Lcom/syu/bt/page/Page_Pair;->mRunnJumpTalking:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    invoke-static {v9, v5, v6, v7}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 167
    .restart local v4    # "value":Ljava/lang/String;
    :cond_9
    invoke-virtual {v1, v4}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 172
    :cond_a
    const-string v5, ""

    invoke-virtual {v2, v5}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public scrollOk()Z
    .locals 2

    .prologue
    .line 1464
    iget-boolean v0, p0, Lcom/syu/bt/page/Page_Pair;->bTop:Z

    if-eqz v0, :cond_0

    .line 1465
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, p0, Lcom/syu/bt/page/Page_Pair;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v0, v1}, Lcom/syu/bt/Act_Bt;->isFocus(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1466
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget v1, p0, Lcom/syu/bt/page/Page_Pair;->mPosMoveTo:I

    invoke-virtual {p0, v0, v1}, Lcom/syu/bt/page/Page_Pair;->clickItem(Lcom/lsec/core/frame/ctrl/JGridView;I)V

    .line 1467
    const/4 v0, 0x1

    .line 1471
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollToNext()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1441
    iget-boolean v1, p0, Lcom/syu/bt/page/Page_Pair;->bTop:Z

    if-eqz v1, :cond_1

    .line 1442
    iget-object v1, p0, Lcom/syu/bt/page/Page_Pair;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v2, p0, Lcom/syu/bt/page/Page_Pair;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v1, v2}, Lcom/syu/bt/Act_Bt;->isFocus(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1443
    iget v1, p0, Lcom/syu/bt/page/Page_Pair;->mPosFocusCpy:I

    iget-object v2, p0, Lcom/syu/bt/page/Page_Pair;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget v2, v2, Lcom/lsec/core/frame/ctrl/JGridView;->mIndexFocus:I

    if-eq v1, v2, :cond_0

    .line 1444
    iget-object v1, p0, Lcom/syu/bt/page/Page_Pair;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget v1, v1, Lcom/lsec/core/frame/ctrl/JGridView;->mIndexFocus:I

    iput v1, p0, Lcom/syu/bt/page/Page_Pair;->mPosFocusCpy:I

    .line 1445
    iget v1, p0, Lcom/syu/bt/page/Page_Pair;->mPosFocusCpy:I

    iput v1, p0, Lcom/syu/bt/page/Page_Pair;->mPosMoveTo:I

    .line 1448
    :cond_0
    iget v1, p0, Lcom/syu/bt/page/Page_Pair;->mPosMoveTo:I

    if-gez v1, :cond_2

    .line 1449
    iput v0, p0, Lcom/syu/bt/page/Page_Pair;->mPosMoveTo:I

    .line 1455
    :goto_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget v1, p0, Lcom/syu/bt/page/Page_Pair;->mPosMoveTo:I

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JGridView;->scrollToPosition(I)V

    .line 1456
    const/4 v0, 0x1

    .line 1460
    :cond_1
    return v0

    .line 1450
    :cond_2
    iget v1, p0, Lcom/syu/bt/page/Page_Pair;->mPosMoveTo:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/syu/bt/page/Page_Pair;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1451
    iget v0, p0, Lcom/syu/bt/page/Page_Pair;->mPosMoveTo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/syu/bt/page/Page_Pair;->mPosMoveTo:I

    goto :goto_0
.end method

.method public scrollToPrev()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1418
    iget-boolean v1, p0, Lcom/syu/bt/page/Page_Pair;->bTop:Z

    if-eqz v1, :cond_1

    .line 1419
    iget-object v1, p0, Lcom/syu/bt/page/Page_Pair;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v2, p0, Lcom/syu/bt/page/Page_Pair;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v1, v2}, Lcom/syu/bt/Act_Bt;->isFocus(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1420
    iget v1, p0, Lcom/syu/bt/page/Page_Pair;->mPosFocusCpy:I

    iget-object v2, p0, Lcom/syu/bt/page/Page_Pair;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget v2, v2, Lcom/lsec/core/frame/ctrl/JGridView;->mIndexFocus:I

    if-eq v1, v2, :cond_0

    .line 1421
    iget-object v1, p0, Lcom/syu/bt/page/Page_Pair;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget v1, v1, Lcom/lsec/core/frame/ctrl/JGridView;->mIndexFocus:I

    iput v1, p0, Lcom/syu/bt/page/Page_Pair;->mPosFocusCpy:I

    .line 1422
    iget v1, p0, Lcom/syu/bt/page/Page_Pair;->mPosFocusCpy:I

    iput v1, p0, Lcom/syu/bt/page/Page_Pair;->mPosMoveTo:I

    .line 1425
    :cond_0
    iget v1, p0, Lcom/syu/bt/page/Page_Pair;->mPosMoveTo:I

    if-gez v1, :cond_2

    .line 1426
    iput v0, p0, Lcom/syu/bt/page/Page_Pair;->mPosMoveTo:I

    .line 1432
    :goto_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget v1, p0, Lcom/syu/bt/page/Page_Pair;->mPosMoveTo:I

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JGridView;->scrollToPosition(I)V

    .line 1433
    const/4 v0, 0x1

    .line 1437
    :cond_1
    return v0

    .line 1427
    :cond_2
    iget v1, p0, Lcom/syu/bt/page/Page_Pair;->mPosMoveTo:I

    if-lez v1, :cond_1

    .line 1428
    iget v0, p0, Lcom/syu/bt/page/Page_Pair;->mPosMoveTo:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/syu/bt/page/Page_Pair;->mPosMoveTo:I

    goto :goto_0
.end method

.method public setButtonColor(I)V
    .locals 11
    .param p1, "color"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1476
    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "changecolor"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1518
    :cond_0
    :goto_0
    return-void

    .line 1485
    :cond_1
    new-array v0, v10, [I

    .line 1486
    aput p1, v0, v8

    .line 1487
    aput p1, v0, v9

    .line 1489
    .local v0, "colors":[I
    new-array v5, v10, [[I

    .line 1490
    new-array v6, v9, [I

    const v7, 0x10100a7

    aput v7, v6, v8

    aput-object v6, v5, v8

    .line 1491
    new-array v6, v9, [I

    const v7, 0x101009c

    aput v7, v6, v8

    aput-object v6, v5, v9

    .line 1494
    .local v5, "states":[[I
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    const/16 v7, 0x28cd

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1495
    .local v4, "search":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v4, :cond_2

    .line 1496
    new-instance v6, Landroid/content/res/ColorStateList;

    invoke-direct {v6, v5, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v4, v6}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1497
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v6}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1500
    :cond_2
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    const/16 v7, 0x28ce

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1501
    .local v3, "link":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v3, :cond_3

    .line 1502
    new-instance v6, Landroid/content/res/ColorStateList;

    invoke-direct {v6, v5, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1503
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1506
    :cond_3
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    const/16 v7, 0x28cf

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1507
    .local v1, "cut":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v1, :cond_4

    .line 1508
    new-instance v6, Landroid/content/res/ColorStateList;

    invoke-direct {v6, v5, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v1, v6}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1509
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v6}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1512
    :cond_4
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    const/16 v7, 0x28d0

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1513
    .local v2, "del":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v2, :cond_0

    .line 1514
    new-instance v6, Landroid/content/res/ColorStateList;

    invoke-direct {v6, v5, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v2, v6}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1515
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0
.end method

.method public setDayOrNight(I)V
    .locals 13
    .param p1, "value"    # I

    .prologue
    const/4 v9, -0x1

    const/high16 v10, -0x1000000

    const/4 v12, 0x1

    .line 1520
    sget-object v8, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v11, "BT_NEW"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1522
    if-lez p1, :cond_1

    .line 1523
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v9

    iget-object v9, v9, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v10, "bt_night"

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v11

    iget-object v11, v11, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v12

    iget-object v12, v12, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v9, v10, v11, v12}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lsec/core/frame/ctrl/JPage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1591
    :cond_0
    :goto_0
    return-void

    .line 1526
    :cond_1
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v9

    iget-object v9, v9, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v10, "bk_day"

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v11

    iget-object v11, v11, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v12

    iget-object v12, v12, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v9, v10, v11, v12}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lsec/core/frame/ctrl/JPage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1528
    :cond_2
    sget-boolean v8, Lcom/syu/bt/App_Bt;->bUI_NightColour:Z

    if-eqz v8, :cond_0

    .line 1529
    if-lez p1, :cond_6

    const-string v5, "night_"

    .line 1531
    .local v5, "str":Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v8, p0, Lcom/syu/bt/page/Page_Pair;->nightBtn:[I

    array-length v8, v8

    if-lt v2, v8, :cond_7

    .line 1550
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    iget-object v8, p0, Lcom/syu/bt/page/Page_Pair;->nightView:[I

    array-length v8, v8

    if-lt v3, v8, :cond_d

    .line 1566
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_4
    iget-object v8, p0, Lcom/syu/bt/page/Page_Pair;->nightText:[I

    array-length v8, v8

    if-lt v4, v8, :cond_10

    .line 1573
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    const/16 v11, 0x28d4

    invoke-virtual {v8, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lsec/core/frame/ctrl/JText;

    .line 1574
    .local v6, "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v6, :cond_3

    .line 1575
    if-lez p1, :cond_13

    :goto_5
    invoke-virtual {v6, v9}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 1578
    :cond_3
    iget-object v8, p0, Lcom/syu/bt/page/Page_Pair;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v8, :cond_4

    .line 1580
    iget-object v8, p0, Lcom/syu/bt/page/Page_Pair;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v8}, Lcom/lsec/core/frame/ctrl/JGridView;->notifyDataSetChanged()V

    .line 1582
    :cond_4
    iget-object v8, p0, Lcom/syu/bt/page/Page_Pair;->mPairedView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v8, :cond_5

    .line 1584
    iget-object v8, p0, Lcom/syu/bt/page/Page_Pair;->mPairedView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v8}, Lcom/lsec/core/frame/ctrl/JGridView;->notifyDataSetChanged()V

    .line 1586
    :cond_5
    sget-object v8, Lcom/syu/bt/App_Bt;->mUi_Name:Ljava/lang/String;

    const-string v9, "yl_dn1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1587
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->refreshList()V

    .line 1588
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->refreshPairedList()V

    goto :goto_0

    .line 1529
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "k":I
    .end local v5    # "str":Ljava/lang/String;
    .end local v6    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :cond_6
    const-string v5, ""

    goto :goto_1

    .line 1532
    .restart local v2    # "i":I
    .restart local v5    # "str":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    iget-object v11, p0, Lcom/syu/bt/page/Page_Pair;->nightBtn:[I

    aget v11, v11, v2

    invoke-virtual {v8, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1533
    .local v0, "button":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v0, :cond_a

    .line 1534
    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JButton;->getStrDrawable()Ljava/lang/String;

    move-result-object v1

    .line 1535
    .local v1, "drawableName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1536
    const-string v8, "night_"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1537
    const-string v8, "night_"

    const-string v11, ""

    invoke-virtual {v1, v8, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v12}, Lcom/lsec/core/frame/ctrl/JButton;->setStrDrawable(Ljava/lang/String;Z)V

    .line 1544
    :cond_8
    :goto_6
    iget-object v8, p0, Lcom/syu/bt/page/Page_Pair;->nightBtn:[I

    aget v8, v8, v2

    const/16 v11, 0x2744

    if-eq v8, v11, :cond_9

    iget-object v8, p0, Lcom/syu/bt/page/Page_Pair;->nightBtn:[I

    aget v8, v8, v2

    const/16 v11, 0x2746

    if-eq v8, v11, :cond_9

    iget-object v8, p0, Lcom/syu/bt/page/Page_Pair;->nightBtn:[I

    aget v8, v8, v2

    const/16 v11, 0x2745

    if-eq v8, v11, :cond_9

    .line 1545
    iget-object v8, p0, Lcom/syu/bt/page/Page_Pair;->nightBtn:[I

    aget v8, v8, v2

    const/16 v11, 0x274e

    if-eq v8, v11, :cond_9

    iget-object v8, p0, Lcom/syu/bt/page/Page_Pair;->nightBtn:[I

    aget v8, v8, v2

    const/16 v11, 0x274d

    if-ne v8, v11, :cond_a

    .line 1546
    :cond_9
    if-lez p1, :cond_c

    move v8, v9

    :goto_7
    invoke-virtual {v0, v8}, Lcom/lsec/core/frame/ctrl/JButton;->setTextColor(I)V

    .line 1531
    .end local v1    # "drawableName":Ljava/lang/String;
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 1540
    .restart local v1    # "drawableName":Ljava/lang/String;
    :cond_b
    const-string v8, "night_"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1541
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "night_"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v12}, Lcom/lsec/core/frame/ctrl/JButton;->setStrDrawable(Ljava/lang/String;Z)V

    goto :goto_6

    :cond_c
    move v8, v10

    .line 1546
    goto :goto_7

    .line 1551
    .end local v0    # "button":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v1    # "drawableName":Ljava/lang/String;
    .restart local v3    # "j":I
    :cond_d
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    iget-object v11, p0, Lcom/syu/bt/page/Page_Pair;->nightView:[I

    aget v11, v11, v3

    invoke-virtual {v8, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lsec/core/frame/ctrl/JView;

    .line 1552
    .local v7, "view":Lcom/lsec/core/frame/ctrl/JView;
    if-eqz v7, :cond_e

    .line 1553
    invoke-virtual {v7}, Lcom/lsec/core/frame/ctrl/JView;->getStrDrawable()Ljava/lang/String;

    move-result-object v1

    .line 1554
    .restart local v1    # "drawableName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1555
    const-string v8, "night_"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1556
    const-string v8, "night_"

    const-string v11, ""

    invoke-virtual {v1, v8, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v12}, Lcom/lsec/core/frame/ctrl/JView;->setStrDrawable(Ljava/lang/String;Z)V

    .line 1550
    .end local v1    # "drawableName":Ljava/lang/String;
    :cond_e
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 1559
    .restart local v1    # "drawableName":Ljava/lang/String;
    :cond_f
    const-string v8, "night_"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 1560
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "night_"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v12}, Lcom/lsec/core/frame/ctrl/JView;->setStrDrawable(Ljava/lang/String;Z)V

    goto :goto_8

    .line 1567
    .end local v1    # "drawableName":Ljava/lang/String;
    .end local v7    # "view":Lcom/lsec/core/frame/ctrl/JView;
    .restart local v4    # "k":I
    :cond_10
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    iget-object v11, p0, Lcom/syu/bt/page/Page_Pair;->nightText:[I

    aget v11, v11, v4

    invoke-virtual {v8, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lsec/core/frame/ctrl/JText;

    .line 1568
    .restart local v6    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v6, :cond_11

    .line 1569
    if-lez p1, :cond_12

    move v8, v9

    :goto_9
    invoke-virtual {v6, v8}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 1566
    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    :cond_12
    move v8, v10

    .line 1569
    goto :goto_9

    :cond_13
    move v9, v10

    .line 1575
    goto/16 :goto_5
.end method

.method public showConnectTip()V
    .locals 3

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/syu/bt/page/Page_Pair;->isConnectBt:Z

    if-eqz v0, :cond_0

    .line 478
    const-string v0, "hfp3"

    const-string v1, " 22 bt_linking "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/4 v0, 0x1

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_linking"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/syu/bt/page/Page_Pair;->showConnectTip(ZLjava/lang/String;)V

    .line 483
    :goto_0
    return-void

    .line 481
    :cond_0
    const/4 v0, 0x0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_connected"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/syu/bt/page/Page_Pair;->showConnectTip(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public showConnectTip(ZLjava/lang/String;)V
    .locals 4
    .param p1, "flag"    # Z
    .param p2, "txt"    # Ljava/lang/String;

    .prologue
    .line 486
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->tipText:Lcom/lsec/core/frame/ctrl/JText;

    if-nez v0, :cond_1

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    iput-boolean p1, p0, Lcom/syu/bt/page/Page_Pair;->isConnectBt:Z

    .line 490
    iget-boolean v0, p0, Lcom/syu/bt/page/Page_Pair;->isConnectBt:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->tipText:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JText;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 491
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->tipText:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v0, p2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 492
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->tipText:Lcom/lsec/core/frame/ctrl/JText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->tipText:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v1, p0, Lcom/syu/bt/page/Page_Pair;->mHideText:Lcom/syu/bt/page/Page_Pair$HideText;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 494
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->tipText:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v1, p0, Lcom/syu/bt/page/Page_Pair;->mRunnableHideText2:Lcom/syu/bt/page/Page_Pair$RunnableHideText2;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 495
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->tipText:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v1, p0, Lcom/syu/bt/page/Page_Pair;->mRunnableHideText2:Lcom/syu/bt/page/Page_Pair$RunnableHideText2;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Lcom/lsec/core/frame/ctrl/JText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 496
    :cond_2
    iget-boolean v0, p0, Lcom/syu/bt/page/Page_Pair;->isConnectBt:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/syu/bt/page/Page_Pair;->isStartDiscovey:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->tipText:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->tipText:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v0, p2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 498
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->tipText:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v1, p0, Lcom/syu/bt/page/Page_Pair;->mHideText:Lcom/syu/bt/page/Page_Pair$HideText;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 499
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->tipText:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v1, p0, Lcom/syu/bt/page/Page_Pair;->mRunnableHideText2:Lcom/syu/bt/page/Page_Pair$RunnableHideText2;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 500
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->tipText:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v1, p0, Lcom/syu/bt/page/Page_Pair;->mRunnableHideText:Lcom/syu/bt/page/Page_Pair$RunnableHideText;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/lsec/core/frame/ctrl/JText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public showDiscover()V
    .locals 3

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/syu/bt/page/Page_Pair;->isStartDiscovey:Z

    if-eqz v0, :cond_0

    .line 439
    const/4 v0, 0x1

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_discovering"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/syu/bt/page/Page_Pair;->showDiscover(ZLjava/lang/String;)V

    .line 443
    :goto_0
    return-void

    .line 441
    :cond_0
    const/4 v0, 0x0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_discover_end"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/syu/bt/page/Page_Pair;->showDiscover(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public showDiscover(ZLjava/lang/String;)V
    .locals 5
    .param p1, "flag"    # Z
    .param p2, "txt"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 446
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->tipText:Lcom/lsec/core/frame/ctrl/JText;

    if-nez v0, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    iput-boolean p1, p0, Lcom/syu/bt/page/Page_Pair;->isStartDiscovey:Z

    .line 450
    iget-boolean v0, p0, Lcom/syu/bt/page/Page_Pair;->isStartDiscovey:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->tipText:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JText;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 451
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->tipText:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v0, p2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->tipText:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v1, p0, Lcom/syu/bt/page/Page_Pair;->mHideText:Lcom/syu/bt/page/Page_Pair$HideText;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 453
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->tipText:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v1, p0, Lcom/syu/bt/page/Page_Pair;->mRunnableHideText2:Lcom/syu/bt/page/Page_Pair$RunnableHideText2;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 454
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->tipText:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v0, v4}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 462
    :cond_2
    :goto_1
    if-nez p1, :cond_5

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v1, "bt_discover_end"

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 463
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->releaseTone()V

    .line 468
    :cond_3
    :goto_2
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-boolean v0, p0, Lcom/syu/bt/page/Page_Pair;->isStartDiscovey:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->tipText:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->tipText:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v1, p0, Lcom/syu/bt/page/Page_Pair;->mHideText:Lcom/syu/bt/page/Page_Pair$HideText;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/lsec/core/frame/ctrl/JText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 455
    :cond_4
    iget-boolean v0, p0, Lcom/syu/bt/page/Page_Pair;->isStartDiscovey:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->tipText:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 456
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->tipText:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v0, p2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->tipText:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v1, p0, Lcom/syu/bt/page/Page_Pair;->mHideText:Lcom/syu/bt/page/Page_Pair$HideText;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 458
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->tipText:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v1, p0, Lcom/syu/bt/page/Page_Pair;->mRunnableHideText2:Lcom/syu/bt/page/Page_Pair$RunnableHideText2;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 459
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->tipText:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v1, p0, Lcom/syu/bt/page/Page_Pair;->mRunnableHideText:Lcom/syu/bt/page/Page_Pair$RunnableHideText;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/lsec/core/frame/ctrl/JText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 464
    :cond_5
    if-eqz p1, :cond_3

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v1, "bt_discovering"

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 465
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    const/16 v1, 0x64

    invoke-static {v0, v1, v4}, Lcom/syu/bt/util/BTUtil;->getBtTone(Landroid/content/Context;II)V

    goto :goto_2
.end method

.method public updateCarplayAuto(Z)V
    .locals 1
    .param p1, "bAuto"    # Z

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->auto:Lcom/lsec/core/frame/ctrl/JSwitchButton;

    if-eqz v0, :cond_0

    .line 1595
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair;->auto:Lcom/lsec/core/frame/ctrl/JSwitchButton;

    invoke-virtual {v0, p1}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->setChecked(Z)V

    .line 1597
    :cond_0
    return-void
.end method
