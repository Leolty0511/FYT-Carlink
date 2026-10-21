.class public Lcom/syu/app/AppBluetooth;
.super Lcom/lsec/core/frame/app/MyApplication;
.source "AppBluetooth.java"


# static fields
.field public static mIsTranslucent:I

.field public static mStatess:I

.field public static mStrCustomer:Ljava/lang/String;

.field public static mStrCustomerKH:Ljava/lang/String;


# instance fields
.field public mBtConn:Lcom/lsec/core/ipc786/module/Bt786;

.field public mConn:Lcom/lsec/core/ipc/Conn;

.field public mConnSys:Lcom/lsec/core/ipc/ConnSys;

.field public mMainConn:Lcom/lsec/core/ipc786/module/Main786;

.field public mRunnable_InitIpc:Ljava/lang/Runnable;

.field private notify_Bt:Lcom/lsec/core/util/IUiNotify;

.field private notify_Bt_786:Lcom/lsec/core/util/IUiNotify;

.field private notify_Main:Lcom/lsec/core/util/IUiNotify;

.field private notify_Main_786:Lcom/lsec/core/util/IUiNotify;

.field private notify_Sound:Lcom/lsec/core/util/IUiNotify;

.field private notify_Sys:Lcom/lsec/core/util/IUiNotify;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    const-string v0, ""

    sput-object v0, Lcom/syu/app/AppBluetooth;->mStrCustomer:Ljava/lang/String;

    .line 40
    const-string v0, ""

    sput-object v0, Lcom/syu/app/AppBluetooth;->mStrCustomerKH:Ljava/lang/String;

    .line 42
    sput v1, Lcom/syu/app/AppBluetooth;->mIsTranslucent:I

    .line 43
    sput v1, Lcom/syu/app/AppBluetooth;->mStatess:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Lcom/lsec/core/frame/app/MyApplication;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/syu/app/AppBluetooth;->mConn:Lcom/lsec/core/ipc/Conn;

    .line 36
    iput-object v0, p0, Lcom/syu/app/AppBluetooth;->mConnSys:Lcom/lsec/core/ipc/ConnSys;

    .line 37
    iput-object v0, p0, Lcom/syu/app/AppBluetooth;->mMainConn:Lcom/lsec/core/ipc786/module/Main786;

    .line 38
    iput-object v0, p0, Lcom/syu/app/AppBluetooth;->mBtConn:Lcom/lsec/core/ipc786/module/Bt786;

    .line 184
    new-instance v0, Lcom/syu/app/AppBluetooth$1;

    invoke-direct {v0, p0}, Lcom/syu/app/AppBluetooth$1;-><init>(Lcom/syu/app/AppBluetooth;)V

    iput-object v0, p0, Lcom/syu/app/AppBluetooth;->mRunnable_InitIpc:Ljava/lang/Runnable;

    .line 271
    new-instance v0, Lcom/syu/app/AppBluetooth$2;

    invoke-direct {v0, p0}, Lcom/syu/app/AppBluetooth$2;-><init>(Lcom/syu/app/AppBluetooth;)V

    iput-object v0, p0, Lcom/syu/app/AppBluetooth;->notify_Bt_786:Lcom/lsec/core/util/IUiNotify;

    .line 280
    new-instance v0, Lcom/syu/app/AppBluetooth$3;

    invoke-direct {v0, p0}, Lcom/syu/app/AppBluetooth$3;-><init>(Lcom/syu/app/AppBluetooth;)V

    iput-object v0, p0, Lcom/syu/app/AppBluetooth;->notify_Main_786:Lcom/lsec/core/util/IUiNotify;

    .line 289
    new-instance v0, Lcom/syu/app/AppBluetooth$4;

    invoke-direct {v0, p0}, Lcom/syu/app/AppBluetooth$4;-><init>(Lcom/syu/app/AppBluetooth;)V

    iput-object v0, p0, Lcom/syu/app/AppBluetooth;->notify_Bt:Lcom/lsec/core/util/IUiNotify;

    .line 298
    new-instance v0, Lcom/syu/app/AppBluetooth$5;

    invoke-direct {v0, p0}, Lcom/syu/app/AppBluetooth$5;-><init>(Lcom/syu/app/AppBluetooth;)V

    iput-object v0, p0, Lcom/syu/app/AppBluetooth;->notify_Main:Lcom/lsec/core/util/IUiNotify;

    .line 307
    new-instance v0, Lcom/syu/app/AppBluetooth$6;

    invoke-direct {v0, p0}, Lcom/syu/app/AppBluetooth$6;-><init>(Lcom/syu/app/AppBluetooth;)V

    iput-object v0, p0, Lcom/syu/app/AppBluetooth;->notify_Sound:Lcom/lsec/core/util/IUiNotify;

    .line 316
    new-instance v0, Lcom/syu/app/AppBluetooth$7;

    invoke-direct {v0, p0}, Lcom/syu/app/AppBluetooth$7;-><init>(Lcom/syu/app/AppBluetooth;)V

    iput-object v0, p0, Lcom/syu/app/AppBluetooth;->notify_Sys:Lcom/lsec/core/util/IUiNotify;

    .line 33
    return-void
.end method

.method public static getApp()Lcom/syu/app/AppBluetooth;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/syu/app/AppBluetooth;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    check-cast v0, Lcom/syu/app/AppBluetooth;

    return-object v0
.end method


# virtual methods
.method public ReadConf()V
    .locals 9

    .prologue
    .line 219
    :try_start_0
    invoke-virtual {p0}, Lcom/syu/app/AppBluetooth;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "conf_platform"

    const-string v7, "raw"

    .line 220
    invoke-virtual {p0}, Lcom/syu/app/AppBluetooth;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 219
    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 221
    .local v0, "id":I
    if-ltz v0, :cond_2

    .line 222
    invoke-virtual {p0}, Lcom/syu/app/AppBluetooth;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 223
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 222
    invoke-static {v5}, Lcom/lsec/core/util/FuncUtils;->readStrFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "strXml":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 225
    new-instance v4, Lcom/lsec/core/util/Markup;

    invoke-direct {v4}, Lcom/lsec/core/util/Markup;-><init>()V

    .line 226
    .local v4, "xml":Lcom/lsec/core/util/Markup;
    invoke-virtual {v4, v3}, Lcom/lsec/core/util/Markup;->ReadXML(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v4}, Lcom/lsec/core/util/Markup;->IntoItem()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 231
    :cond_0
    const-string v5, "name"

    invoke-virtual {v4, v5}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "strTemp":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 232
    const-string v5, "platform"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 233
    const-string v5, "value"

    invoke-virtual {v4, v5}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 234
    invoke-static {v1}, Lcom/lsec/core/ipc/module/main/Main;->initPlatForm(Ljava/lang/String;)V

    .line 261
    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {v4}, Lcom/lsec/core/util/Markup;->NextItem()Z

    move-result v5

    if-nez v5, :cond_0

    .line 262
    invoke-virtual {v4}, Lcom/lsec/core/util/Markup;->ExitItem()V

    .line 269
    .end local v0    # "id":I
    .end local v2    # "strTemp":Ljava/lang/String;
    .end local v3    # "strXml":Ljava/lang/String;
    .end local v4    # "xml":Lcom/lsec/core/util/Markup;
    :cond_2
    :goto_1
    return-void

    .line 235
    .restart local v0    # "id":I
    .restart local v2    # "strTemp":Ljava/lang/String;
    .restart local v3    # "strXml":Ljava/lang/String;
    .restart local v4    # "xml":Lcom/lsec/core/util/Markup;
    :cond_3
    const-string v5, "old_service"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 236
    const-string v5, "value"

    invoke-virtual {v4, v5}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "str":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 237
    const-string v5, "1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 238
    const/4 v5, 0x1

    sput-boolean v5, Lcom/syu/app/AppBluetooth;->mIsOldService:Z

    goto :goto_0

    .line 266
    .end local v0    # "id":I
    .end local v1    # "str":Ljava/lang/String;
    .end local v2    # "strTemp":Ljava/lang/String;
    .end local v3    # "strXml":Ljava/lang/String;
    .end local v4    # "xml":Lcom/lsec/core/util/Markup;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 240
    .restart local v0    # "id":I
    .restart local v2    # "strTemp":Ljava/lang/String;
    .restart local v3    # "strXml":Ljava/lang/String;
    .restart local v4    # "xml":Lcom/lsec/core/util/Markup;
    :cond_4
    const-string v5, "customer"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 241
    const-string v5, "value"

    invoke-virtual {v4, v5}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "str":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 242
    sput-object v1, Lcom/syu/app/AppBluetooth;->mStrCustomer:Ljava/lang/String;

    goto :goto_0

    .line 244
    .end local v1    # "str":Ljava/lang/String;
    :cond_5
    const-string v5, "customer_kh"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 245
    const-string v5, "value"

    invoke-virtual {v4, v5}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "str":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 246
    sput-object v1, Lcom/syu/app/AppBluetooth;->mStrCustomerKH:Ljava/lang/String;

    goto :goto_0

    .line 248
    .end local v1    # "str":Ljava/lang/String;
    :cond_6
    const-string v5, "Translucent"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 249
    const-string v5, "value"

    invoke-virtual {v4, v5}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "str":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 250
    const-string v5, "1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 251
    const/4 v5, 0x1

    sput v5, Lcom/syu/app/AppBluetooth;->mIsTranslucent:I

    goto :goto_0

    .line 252
    :cond_7
    const-string v5, "2"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 253
    const/4 v5, 0x2

    sput v5, Lcom/syu/app/AppBluetooth;->mIsTranslucent:I

    goto :goto_0

    .line 254
    :cond_8
    const-string v5, "3"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 255
    const/4 v5, 0x3

    sput v5, Lcom/syu/app/AppBluetooth;->mIsTranslucent:I

    goto/16 :goto_0

    .line 256
    :cond_9
    const-string v5, "4"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 257
    const/4 v5, 0x4

    sput v5, Lcom/syu/app/AppBluetooth;->mIsTranslucent:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method public initIpc()V
    .locals 4

    .prologue
    .line 192
    sget-boolean v0, Lcom/syu/app/AppBluetooth;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 193
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    iget-object v1, p0, Lcom/syu/app/AppBluetooth;->notify_Bt_786:Lcom/lsec/core/util/IUiNotify;

    iput-object v1, v0, Lcom/lsec/core/util/UiNotifyEvent;->uiNotify:Lcom/lsec/core/util/IUiNotify;

    .line 194
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    iget-object v1, p0, Lcom/syu/app/AppBluetooth;->notify_Main_786:Lcom/lsec/core/util/IUiNotify;

    iput-object v1, v0, Lcom/lsec/core/util/UiNotifyEvent;->uiNotify:Lcom/lsec/core/util/IUiNotify;

    .line 196
    new-instance v0, Lcom/lsec/core/ipc786/module/Main786;

    invoke-static {}, Lcom/syu/app/AppBluetooth;->getApp()Lcom/syu/app/AppBluetooth;

    move-result-object v1

    .line 197
    invoke-static {}, Lcom/syu/app/AppBluetooth;->getApp()Lcom/syu/app/AppBluetooth;

    move-result-object v2

    sget-object v3, Lcom/syu/app/RegCode;->mRegister_Main_786:Lcom/syu/ipc/IRegisterCallBack;

    invoke-direct {v0, v1, v2, v3}, Lcom/lsec/core/ipc786/module/Main786;-><init>(Lcom/lsec/core/util/InterfaceApp;Landroid/content/Context;Lcom/syu/ipc/IRegisterCallBack;)V

    .line 196
    iput-object v0, p0, Lcom/syu/app/AppBluetooth;->mMainConn:Lcom/lsec/core/ipc786/module/Main786;

    .line 198
    new-instance v0, Lcom/lsec/core/ipc786/module/Bt786;

    invoke-static {}, Lcom/syu/app/AppBluetooth;->getApp()Lcom/syu/app/AppBluetooth;

    move-result-object v1

    invoke-static {}, Lcom/syu/app/AppBluetooth;->getApp()Lcom/syu/app/AppBluetooth;

    move-result-object v2

    .line 199
    sget-object v3, Lcom/syu/app/RegCode;->mRegister_Bt_786:Lcom/syu/ipc/IRegisterCallBack;

    invoke-direct {v0, v1, v2, v3}, Lcom/lsec/core/ipc786/module/Bt786;-><init>(Lcom/lsec/core/util/InterfaceApp;Landroid/content/Context;Lcom/syu/ipc/IRegisterCallBack;)V

    .line 198
    iput-object v0, p0, Lcom/syu/app/AppBluetooth;->mBtConn:Lcom/lsec/core/ipc786/module/Bt786;

    .line 215
    :goto_0
    return-void

    .line 201
    :cond_0
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    iget-object v1, p0, Lcom/syu/app/AppBluetooth;->notify_Main:Lcom/lsec/core/util/IUiNotify;

    iput-object v1, v0, Lcom/lsec/core/util/UiNotifyEvent;->uiNotify:Lcom/lsec/core/util/IUiNotify;

    .line 202
    sget-object v0, Lcom/lsec/core/ipc/module/main/Sound;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    iget-object v1, p0, Lcom/syu/app/AppBluetooth;->notify_Sound:Lcom/lsec/core/util/IUiNotify;

    iput-object v1, v0, Lcom/lsec/core/util/UiNotifyEvent;->uiNotify:Lcom/lsec/core/util/IUiNotify;

    .line 203
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    iget-object v1, p0, Lcom/syu/app/AppBluetooth;->notify_Bt:Lcom/lsec/core/util/IUiNotify;

    iput-object v1, v0, Lcom/lsec/core/util/UiNotifyEvent;->uiNotify:Lcom/lsec/core/util/IUiNotify;

    .line 204
    sget-object v0, Lcom/lsec/core/ipc/module/sys/Sys;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    iget-object v1, p0, Lcom/syu/app/AppBluetooth;->notify_Sys:Lcom/lsec/core/util/IUiNotify;

    iput-object v1, v0, Lcom/lsec/core/util/UiNotifyEvent;->uiNotify:Lcom/lsec/core/util/IUiNotify;

    .line 206
    new-instance v0, Lcom/lsec/core/ipc/Conn;

    invoke-static {}, Lcom/syu/app/AppBluetooth;->getApp()Lcom/syu/app/AppBluetooth;

    move-result-object v1

    invoke-static {}, Lcom/syu/app/AppBluetooth;->getApp()Lcom/syu/app/AppBluetooth;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lsec/core/ipc/Conn;-><init>(Lcom/lsec/core/util/InterfaceApp;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/syu/app/AppBluetooth;->mConn:Lcom/lsec/core/ipc/Conn;

    .line 207
    iget-object v0, p0, Lcom/syu/app/AppBluetooth;->mConn:Lcom/lsec/core/ipc/Conn;

    invoke-static {}, Lcom/lsec/core/ipc/module/main/Main;->getInstance()Lcom/lsec/core/ipc/module/main/Main;

    move-result-object v1

    sget-object v2, Lcom/syu/app/RegCode;->mRegister_Main:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/ipc/Conn;->addObserver(Lcom/lsec/core/ipc/IConnStateListener;Lcom/lsec/core/ipc/IRegisterModuleCallBack;)V

    .line 209
    iget-object v0, p0, Lcom/syu/app/AppBluetooth;->mConn:Lcom/lsec/core/ipc/Conn;

    invoke-static {}, Lcom/lsec/core/ipc/module/main/Bt;->getInstance()Lcom/lsec/core/ipc/module/main/Bt;

    move-result-object v1

    sget-object v2, Lcom/syu/app/RegCode;->mRegister_Bt:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/ipc/Conn;->addObserver(Lcom/lsec/core/ipc/IConnStateListener;Lcom/lsec/core/ipc/IRegisterModuleCallBack;)V

    .line 210
    iget-object v0, p0, Lcom/syu/app/AppBluetooth;->mConn:Lcom/lsec/core/ipc/Conn;

    invoke-static {}, Lcom/lsec/core/ipc/module/main/Sound;->getInstance()Lcom/lsec/core/ipc/module/main/Sound;

    move-result-object v1

    sget-object v2, Lcom/syu/app/RegCode;->mRegister_Sound:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/ipc/Conn;->addObserver(Lcom/lsec/core/ipc/IConnStateListener;Lcom/lsec/core/ipc/IRegisterModuleCallBack;)V

    .line 212
    new-instance v0, Lcom/lsec/core/ipc/ConnSys;

    invoke-static {}, Lcom/syu/app/AppBluetooth;->getApp()Lcom/syu/app/AppBluetooth;

    move-result-object v1

    invoke-static {}, Lcom/syu/app/AppBluetooth;->getApp()Lcom/syu/app/AppBluetooth;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lsec/core/ipc/ConnSys;-><init>(Lcom/lsec/core/util/InterfaceApp;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/syu/app/AppBluetooth;->mConnSys:Lcom/lsec/core/ipc/ConnSys;

    .line 213
    iget-object v0, p0, Lcom/syu/app/AppBluetooth;->mConnSys:Lcom/lsec/core/ipc/ConnSys;

    invoke-static {}, Lcom/lsec/core/ipc/module/sys/Sys;->getInstance()Lcom/lsec/core/ipc/module/sys/Sys;

    move-result-object v1

    sget-object v2, Lcom/syu/app/RegCode;->mRegister_Sys:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/ipc/ConnSys;->addObserver(Lcom/lsec/core/ipc/IConnStateListener;Lcom/lsec/core/ipc/IRegisterModuleCallBack;)V

    goto :goto_0
.end method

.method public onConnected_Main()V
    .locals 3

    .prologue
    .line 334
    sget-object v1, Lcom/syu/app/AppBluetooth;->mListConnectedMain:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 336
    return-void

    .line 334
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/util/IConnectedMain;

    .line 335
    .local v0, "connectedMain":Lcom/lsec/core/util/IConnectedMain;
    invoke-interface {v0}, Lcom/lsec/core/util/IConnectedMain;->onConnected_Main()V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/syu/app/AppBluetooth;->ReadConf()V

    .line 52
    invoke-virtual {p0}, Lcom/syu/app/AppBluetooth;->setThemeColor()V

    .line 78
    const-string v0, "theme"

    const-string v1, " 00 App  *** AppBluetooth  onCreate "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-super {p0}, Lcom/lsec/core/frame/app/MyApplication;->onCreate()V

    .line 80
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/syu/bt/App_Bt;->onCreate(Lcom/lsec/core/frame/app/MyApplication;)V

    .line 81
    iget-object v0, p0, Lcom/syu/app/AppBluetooth;->mRunnable_InitIpc:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 82
    return-void
.end method

.method public requestAppIdRight()V
    .locals 2

    .prologue
    .line 327
    invoke-static {}, Lcom/syu/app/AppBluetooth;->getApp()Lcom/syu/app/AppBluetooth;

    move-result-object v1

    invoke-virtual {v1}, Lcom/syu/app/AppBluetooth;->getTopActivity()Lcom/lsec/core/frame/app/MyActivity;

    move-result-object v0

    .line 328
    .local v0, "activity":Lcom/lsec/core/frame/app/MyActivity;
    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyActivity;->requestAppIdRight()V

    .line 330
    :cond_0
    return-void
.end method

.method public setThemeColor()V
    .locals 18

    .prologue
    .line 87
    const-string v13, "theme"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, " 00 App  *** setThemeColor  mStrCustomer = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Lcom/syu/app/AppBluetooth;->mStrCustomer:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget-object v13, Lcom/syu/app/AppBluetooth;->mStrCustomer:Ljava/lang/String;

    const-string v14, "TZY_NEW"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 89
    const-string v13, "persist.fyt.themefortzy"

    .line 90
    const-string v14, "gradientpurple"

    .line 89
    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "colorType":Ljava/lang/String;
    const-string v13, "gradientpurple"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 93
    const-string v13, "spro"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 94
    :cond_0
    const-string v13, "UI1"

    sput-object v13, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    .line 182
    .end local v3    # "colorType":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 95
    .restart local v3    # "colorType":Ljava/lang/String;
    :cond_2
    const-string v13, "gradientblue"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 96
    const-string v13, "UI3"

    sput-object v13, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    goto :goto_0

    .line 97
    :cond_3
    const-string v13, "blackgold"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 98
    const-string v13, "UI4"

    sput-object v13, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    goto :goto_0

    .line 99
    :cond_4
    const-string v13, "black"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 100
    const-string v13, "UI2"

    sput-object v13, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    goto :goto_0

    .line 101
    :cond_5
    const-string v13, "dn_day"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 102
    const-string v13, "UI5"

    sput-object v13, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    goto :goto_0

    .line 103
    :cond_6
    const-string v13, "dn_night"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 104
    const-string v13, "UI6"

    sput-object v13, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    goto :goto_0

    .line 105
    :cond_7
    const-string v13, "dn_auto"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 106
    const-string v13, "UI7"

    sput-object v13, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    goto :goto_0

    .line 109
    .end local v3    # "colorType":Ljava/lang/String;
    :cond_8
    sget-object v13, Lcom/syu/app/AppBluetooth;->mStrCustomer:Ljava/lang/String;

    const-string v14, "bba"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 110
    const-string v13, "persist.lsec.bbatype"

    const-string v14, ""

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 111
    .restart local v3    # "colorType":Ljava/lang/String;
    const-string v13, "gdyy"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, " setThemeColor 01 colorType:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v13, "UI6"

    sput-object v13, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    goto :goto_0

    .line 131
    .end local v3    # "colorType":Ljava/lang/String;
    :cond_9
    sget-object v13, Lcom/syu/app/AppBluetooth;->mStrCustomer:Ljava/lang/String;

    const-string v14, "NEW_BT_1920"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 133
    :try_start_0
    const-string v13, "theme"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, " 11 App  *** setThemeColor  mStrCustomer = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Lcom/syu/app/AppBluetooth;->mStrCustomer:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v11, Landroid/util/DisplayMetrics;

    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    .line 135
    .local v11, "metric":Landroid/util/DisplayMetrics;
    const-string v13, "window"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/syu/app/AppBluetooth;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 136
    .local v10, "mWindowManager":Landroid/view/WindowManager;
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 137
    iget v12, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 138
    .local v12, "width":I
    iget v6, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 139
    .local v6, "height":I
    const-string v13, "sys.lsec.navi_bar_height"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 140
    .local v2, "barHeight":I
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    int-to-double v0, v12

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    int-to-double v0, v6

    move-wide/from16 v16, v0

    div-double v8, v14, v16

    .line 141
    .local v8, "mScreenWchuH":D
    const-wide v14, 0x400599999999999aL    # 2.7

    cmpl-double v13, v8, v14

    if-gtz v13, :cond_a

    const/16 v13, 0x64

    if-lt v2, v13, :cond_b

    .line 142
    :cond_a
    const-string v13, "UI1"

    sput-object v13, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    .line 143
    :cond_b
    const-string v13, "theme"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, " 22 App  *** setThemeColor  screenWidth = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " screenHeight = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  ** mScreenWchuH = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 144
    const-string v15, "barHeight = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " mStrFolderAsset = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 143
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 146
    .end local v2    # "barHeight":I
    .end local v6    # "height":I
    .end local v8    # "mScreenWchuH":D
    .end local v10    # "mWindowManager":Landroid/view/WindowManager;
    .end local v11    # "metric":Landroid/util/DisplayMetrics;
    .end local v12    # "width":I
    :catch_0
    move-exception v4

    .line 147
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 150
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_c
    sget-object v13, Lcom/syu/app/AppBluetooth;->mStrCustomer:Ljava/lang/String;

    const-string v14, "BT_23NEW"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 152
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/syu/app/AppBluetooth;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    .line 153
    const-string v14, "fonts/COMPASSE.OTF"

    .line 152
    invoke-static {v13, v14}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    .line 155
    .local v7, "mTypeface":Landroid/graphics/Typeface;
    const-class v13, Landroid/graphics/Typeface;

    const-string v14, "MONOSPACE"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 156
    .local v5, "field":Ljava/lang/reflect/Field;
    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 157
    const/4 v13, 0x0

    invoke-virtual {v5, v13, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 162
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "mTypeface":Landroid/graphics/Typeface;
    :goto_1
    :try_start_2
    sget-object v13, Lcom/syu/app/AppBluetooth;->mStrCustomerKH:Ljava/lang/String;

    const-string v14, "yl_zz"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    .line 163
    const-string v13, "theme"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, " 11 App  *** setThemeColor  mStrCustomer = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Lcom/syu/app/AppBluetooth;->mStrCustomer:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_d
    new-instance v11, Landroid/util/DisplayMetrics;

    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    .line 165
    .restart local v11    # "metric":Landroid/util/DisplayMetrics;
    const-string v13, "window"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/syu/app/AppBluetooth;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 166
    .restart local v10    # "mWindowManager":Landroid/view/WindowManager;
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 167
    iget v12, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 168
    .restart local v12    # "width":I
    iget v6, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 169
    .restart local v6    # "height":I
    const-string v13, "sys.lsec.navi_bar_height"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 170
    .restart local v2    # "barHeight":I
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    int-to-double v0, v12

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    int-to-double v0, v6

    move-wide/from16 v16, v0

    div-double v8, v14, v16

    .line 171
    .restart local v8    # "mScreenWchuH":D
    const-wide v14, 0x4001333333333333L    # 2.15

    cmpl-double v13, v8, v14

    if-lez v13, :cond_e

    .line 172
    const-string v13, "UI1"

    sput-object v13, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    .line 173
    :cond_e
    const/16 v13, 0xb40

    if-ne v12, v13, :cond_f

    const/16 v13, 0x64

    if-lt v2, v13, :cond_f

    .line 174
    const-string v13, "UI1"

    sput-object v13, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    .line 175
    :cond_f
    const-string v13, "theme"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, " 22 App  *** setThemeColor  screenWidth = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " screenHeight = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  ** mScreenWchuH = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 176
    const-string v15, "barHeight = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " mStrFolderAsset = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 175
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 178
    .end local v2    # "barHeight":I
    .end local v6    # "height":I
    .end local v8    # "mScreenWchuH":D
    .end local v10    # "mWindowManager":Landroid/view/WindowManager;
    .end local v11    # "metric":Landroid/util/DisplayMetrics;
    .end local v12    # "width":I
    :catch_1
    move-exception v4

    .line 179
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 158
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 159
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method
