.class public Lcom/lsec/core/ipc/module/main/Canbus;
.super Lcom/syu/ipc/IModuleCallback$Stub;
.source "Canbus.java"

# interfaces
.implements Lcom/lsec/core/ipc/IConnStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/ipc/module/main/Canbus$Runnable_Update;
    }
.end annotation


# static fields
.field public static Album:Ljava/lang/String; = null

.field public static Artist:Ljava/lang/String; = null

.field public static final CHANNEL_CNT_MAX:I = 0x6

.field public static CHANNEL_FREQ_PRESET:[I = null

.field public static CarCdText:Ljava/lang/String; = null

.field public static CarFrameNum:Ljava/lang/String; = null

.field public static CarRadioText:Ljava/lang/String; = null

.field public static CdTextInfo:Ljava/lang/String; = null

.field public static CdTextType:I = 0x0

.field public static CdUsbList:Ljava/lang/String; = null

.field public static CdUsbListType:I = 0x0

.field public static DATA:[I = null

.field public static final DEBUG_AIR:Z = true

.field public static final DEBUG_DOOR:Z = true

.field private static INSTANCE:Lcom/lsec/core/ipc/module/main/Canbus; = null

.field public static MCU_CANBUS_SUPPORT:[I = null

.field public static final MINUTEOILEXPENDMAX:I = 0xf

.field public static MenuList:Ljava/lang/String; = null

.field public static MenuListType:I = 0x0

.field public static PROXY:Lcom/lsec/core/ipc/ModuleProxy; = null

.field public static Songname:Ljava/lang/String; = null

.field public static Str1:Ljava/lang/String; = null

.field public static Str2:Ljava/lang/String; = null

.field public static Str3:Ljava/lang/String; = null

.field public static Str4:Ljava/lang/String; = null

.field public static Str5:Ljava/lang/String; = null

.field public static Str6:Ljava/lang/String; = null

.field public static final TRIPOILEXPENDMAX:I = 0x5

.field public static TelTextInfo:Ljava/lang/String;

.field public static TelTextType:I

.field public static Title:Ljava/lang/String;

.field public static WifiName:Ljava/lang/String;

.field public static WifiPsword:Ljava/lang/String;

.field public static anjixingNumber:Ljava/lang/String;

.field public static btNumber:Ljava/lang/String;

.field public static btPassWord:Ljava/lang/String;

.field public static canVersion:Ljava/lang/String;

.field public static canbusId:I

.field public static carId:I

.field public static cdId3Album:Ljava/lang/String;

.field public static cdId3Artist:Ljava/lang/String;

.field public static cdId3Track:Ljava/lang/String;

.field public static cdid3charset:I

.field public static cdid3type:I

.field public static current_playtime:Ljava/lang/String;

.field public static delay:Z

.field public static freq:[I

.field public static id3infoflag:I

.field public static infoIndex:I

.field public static infoType:I

.field public static jump:Z

.field public static mBlower_Time:[I

.field public static mCanbusLast:I

.field public static mCarId:Ljava/lang/String;

.field public static mId3DiscName:Ljava/lang/String;

.field public static mId3Name:Ljava/lang/String;

.field public static mId3Type:I

.field public static mIdArtist3Name:Ljava/lang/String;

.field public static mMinuteoilexpend:[[I

.field public static mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

.field public static mTRACK_INFO:[I

.field public static mTRACK_TIME_INFO:[I

.field public static mTripoilexpend:[[I

.field public static mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

.field public static onStarPhoneNumber:Ljava/lang/String;

.field public static onStarTTS:Ljava/lang/String;

.field public static sCanbusId:I

.field public static sMcuCanbusSupportCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    sput-object v6, Lcom/lsec/core/ipc/module/main/Canbus;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .line 17
    new-instance v0, Lcom/lsec/core/ipc/module/main/Canbus;

    invoke-direct {v0}, Lcom/lsec/core/ipc/module/main/Canbus;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/main/Canbus;->INSTANCE:Lcom/lsec/core/ipc/module/main/Canbus;

    .line 27
    new-instance v0, Lcom/lsec/core/util/UiNotifyEvent;

    invoke-direct {v0}, Lcom/lsec/core/util/UiNotifyEvent;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/main/Canbus;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    .line 28
    new-instance v0, Lcom/lsec/core/ipc/ModuleProxy;

    invoke-direct {v0}, Lcom/lsec/core/ipc/ModuleProxy;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/main/Canbus;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    .line 29
    const/16 v0, 0x4b0

    new-array v0, v0, [I

    sput-object v0, Lcom/lsec/core/ipc/module/main/Canbus;->DATA:[I

    .line 31
    sget-object v0, Lcom/lsec/core/ipc/module/main/Canbus;->DATA:[I

    const/16 v1, 0x3e9

    aput v3, v0, v1

    .line 32
    sget-object v0, Lcom/lsec/core/ipc/module/main/Canbus;->DATA:[I

    const/16 v1, 0x3ea

    aput v3, v0, v1

    .line 40
    sput v2, Lcom/lsec/core/ipc/module/main/Canbus;->mCanbusLast:I

    .line 43
    const/16 v0, 0x3e8

    new-array v0, v0, [I

    sput-object v0, Lcom/lsec/core/ipc/module/main/Canbus;->MCU_CANBUS_SUPPORT:[I

    .line 57
    const-string v0, ""

    sput-object v0, Lcom/lsec/core/ipc/module/main/Canbus;->canVersion:Ljava/lang/String;

    .line 75
    const-string v0, ""

    sput-object v0, Lcom/lsec/core/ipc/module/main/Canbus;->CarFrameNum:Ljava/lang/String;

    .line 84
    const-string v0, ""

    sput-object v0, Lcom/lsec/core/ipc/module/main/Canbus;->CarCdText:Ljava/lang/String;

    .line 85
    const-string v0, ""

    sput-object v0, Lcom/lsec/core/ipc/module/main/Canbus;->CarRadioText:Ljava/lang/String;

    .line 90
    sput-object v6, Lcom/lsec/core/ipc/module/main/Canbus;->mCarId:Ljava/lang/String;

    .line 91
    new-array v0, v5, [I

    sput-object v0, Lcom/lsec/core/ipc/module/main/Canbus;->mBlower_Time:[I

    .line 93
    new-array v0, v4, [I

    sput-object v0, Lcom/lsec/core/ipc/module/main/Canbus;->mTRACK_TIME_INFO:[I

    .line 94
    new-array v0, v4, [I

    sput-object v0, Lcom/lsec/core/ipc/module/main/Canbus;->mTRACK_INFO:[I

    .line 97
    const/4 v0, 0x7

    new-array v0, v0, [I

    sput-object v0, Lcom/lsec/core/ipc/module/main/Canbus;->CHANNEL_FREQ_PRESET:[I

    .line 100
    new-array v0, v5, [[I

    sput-object v0, Lcom/lsec/core/ipc/module/main/Canbus;->mTripoilexpend:[[I

    .line 103
    const/16 v0, 0xf

    new-array v0, v0, [[I

    sput-object v0, Lcom/lsec/core/ipc/module/main/Canbus;->mMinuteoilexpend:[[I

    .line 105
    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Lcom/lsec/core/ipc/module/main/Canbus;->freq:[I

    .line 107
    sput-boolean v2, Lcom/lsec/core/ipc/module/main/Canbus;->jump:Z

    .line 108
    sput-boolean v2, Lcom/lsec/core/ipc/module/main/Canbus;->delay:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/syu/ipc/IModuleCallback$Stub;-><init>()V

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/lsec/core/ipc/module/main/Canbus;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/lsec/core/ipc/module/main/Canbus;->INSTANCE:Lcom/lsec/core/ipc/module/main/Canbus;

    return-object v0
.end method

.method public static mcuCanbusSupportCnt(I[I[F[Ljava/lang/String;)V
    .locals 7
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    const/16 v6, 0x3e8

    const/4 v5, 0x0

    .line 120
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    sget v0, Lcom/lsec/core/ipc/module/main/Canbus;->sMcuCanbusSupportCnt:I

    aget v1, p1, v5

    if-eq v0, v1, :cond_1

    .line 122
    aget v0, p1, v5

    if-nez v0, :cond_0

    .line 123
    sput v5, Lcom/lsec/core/ipc/module/main/Canbus;->sMcuCanbusSupportCnt:I

    .line 125
    :cond_0
    sget v0, Lcom/lsec/core/ipc/module/main/Canbus;->sMcuCanbusSupportCnt:I

    aget v1, p1, v5

    if-lt v0, v1, :cond_2

    .line 132
    :goto_0
    sget-object v0, Lcom/lsec/core/ipc/module/main/Canbus;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 135
    :cond_1
    return-void

    .line 126
    :cond_2
    sget-object v0, Lcom/lsec/core/ipc/module/main/Canbus;->MCU_CANBUS_SUPPORT:[I

    sget v1, Lcom/lsec/core/ipc/module/main/Canbus;->sMcuCanbusSupportCnt:I

    sget-object v2, Lcom/lsec/core/ipc/module/main/Canbus;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    .line 127
    sget v3, Lcom/lsec/core/ipc/module/main/Canbus;->sMcuCanbusSupportCnt:I

    const/4 v4, -0x1

    .line 126
    invoke-virtual {v2, v6, v3, v4}, Lcom/lsec/core/ipc/ModuleProxy;->getI(III)I

    move-result v2

    aput v2, v0, v1

    .line 128
    sget v0, Lcom/lsec/core/ipc/module/main/Canbus;->sMcuCanbusSupportCnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lsec/core/ipc/module/main/Canbus;->sMcuCanbusSupportCnt:I

    .line 129
    sget v0, Lcom/lsec/core/ipc/module/main/Canbus;->sMcuCanbusSupportCnt:I

    if-lt v0, v6, :cond_0

    goto :goto_0
.end method

.method public static updateNotify(I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 111
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lcom/lsec/core/ipc/module/main/Canbus;->DATA:[I

    aget v0, v0, p0

    aget v1, p1, v2

    if-eq v0, v1, :cond_0

    .line 113
    sget-object v0, Lcom/lsec/core/ipc/module/main/Canbus;->DATA:[I

    aget v1, p1, v2

    aput v1, v0, p0

    .line 114
    sget-object v0, Lcom/lsec/core/ipc/module/main/Canbus;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 117
    :cond_0
    return-void
.end method


# virtual methods
.method public onConnected(Lcom/syu/ipc/IRemoteToolkit;)V
    .locals 5
    .param p1, "toolkit"    # Lcom/syu/ipc/IRemoteToolkit;

    .prologue
    .line 145
    :try_start_0
    sget-object v3, Lcom/lsec/core/ipc/module/main/Canbus;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v4, 0x7

    invoke-interface {p1, v4}, Lcom/syu/ipc/IRemoteToolkit;->getRemoteModule(I)Lcom/syu/ipc/IRemoteModule;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lsec/core/ipc/ModuleProxy;->setRemoteModule(Lcom/syu/ipc/IRemoteModule;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    invoke-static {}, Lcom/lsec/core/ipc/module/main/Canbus;->getInstance()Lcom/lsec/core/ipc/module/main/Canbus;

    move-result-object v0

    .line 151
    .local v0, "callback":Lcom/lsec/core/ipc/module/main/Canbus;
    sget-object v3, Lcom/lsec/core/ipc/module/main/Canbus;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    if-eqz v3, :cond_1

    .line 152
    sget-object v3, Lcom/lsec/core/ipc/module/main/Canbus;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    invoke-interface {v3, v0}, Lcom/lsec/core/ipc/IRegisterModuleCallBack;->register(Lcom/syu/ipc/IModuleCallback;)V

    .line 157
    :cond_0
    return-void

    .line 146
    .end local v0    # "callback":Lcom/lsec/core/ipc/module/main/Canbus;
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 154
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "callback":Lcom/lsec/core/ipc/module/main/Canbus;
    :cond_1
    const/16 v2, 0x3e8

    .local v2, "i":I
    :goto_1
    const/16 v3, 0x4b0

    if-ge v2, v3, :cond_0

    .line 155
    sget-object v3, Lcom/lsec/core/ipc/module/main/Canbus;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v2, v4}, Lcom/lsec/core/ipc/ModuleProxy;->register(Lcom/syu/ipc/IModuleCallback;II)V

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public onDisconnected()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 161
    sget-object v0, Lcom/lsec/core/ipc/module/main/Canbus;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    invoke-virtual {v0, v3}, Lcom/lsec/core/ipc/ModuleProxy;->setRemoteModule(Lcom/syu/ipc/IRemoteModule;)V

    .line 162
    sget-object v0, Lcom/lsec/core/ipc/module/main/Canbus;->DATA:[I

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 163
    const/16 v0, 0x3f2

    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-static {v0, v1, v3, v3}, Lcom/lsec/core/ipc/module/main/Canbus;->mcuCanbusSupportCnt(I[I[F[Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public setRegisterModuleCallBack(Lcom/lsec/core/ipc/IRegisterModuleCallBack;)V
    .locals 0
    .param p1, "registerModuleCallBack"    # Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .prologue
    .line 218
    sput-object p1, Lcom/lsec/core/ipc/module/main/Canbus;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .line 219
    return-void
.end method

.method public update(I[I[F[Ljava/lang/String;)V
    .locals 7
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 139
    const/4 v6, 0x0

    new-instance v0, Lcom/lsec/core/ipc/module/main/Canbus$Runnable_Update;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lsec/core/ipc/module/main/Canbus$Runnable_Update;-><init>(Lcom/lsec/core/ipc/module/main/Canbus;I[I[F[Ljava/lang/String;)V

    invoke-static {v6, v0}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 140
    return-void
.end method
