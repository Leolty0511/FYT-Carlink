.class public Lcom/syu/app/ipc/Ipc_New;
.super Ljava/lang/Object;
.source "Ipc_New.java"


# static fields
.field public static HFP_state:[I

.field static final NOTIFYCODE_Bt:[I

.field public static final NOTIFYCODE_BtAV:[I

.field static final NOTIFYCODE_Bt_Will:[I

.field public static final NOTIFYCODE_DIAL:[I

.field static final NOTIFYCODE_Main_Will:[I

.field static final NOTIFYCODE_PopBt:[I

.field public static final NOTIFYCODE_SET:[I

.field public static final NOTIFYCODE_Sound:[I

.field public static final NOTIFYCODE_Sys_Will:[I

.field public static final NOTIFYCODE_UniCar:[I

.field static final NumCmd:[I

.field public static mRunnable_queryPair:Ljava/lang/Runnable;

.field public static state_p:I


# instance fields
.field CallsDATE:[Ljava/lang/Long;

.field CallsTYPE:[I

.field delay:I

.field public mNotify:Lcom/syu/app/ipc/Ipc_NewNotifyPage;

.field public mRunnable_updateHistoryList:Ljava/lang/Runnable;

.field private notify_Bt:Lcom/lsec/core/util/IUiNotify;

.field notify_Bt_Pop:Lcom/lsec/core/util/IUiNotify;

.field private notify_Main:Lcom/lsec/core/util/IUiNotify;

.field private notify_PopBt:Lcom/lsec/core/util/IUiNotify;

.field notify_Sound:Lcom/lsec/core/util/IUiNotify;

.field private notify_Sys:Lcom/lsec/core/util/IUiNotify;

.field private notify_UniCar:Lcom/lsec/core/util/IUiNotify;

.field page_PopLDD:Lcom/syu/bt/page/pop/Page_PopLDD;

.field phoneState_id:I

.field public talktime:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x7

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 70
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/syu/app/ipc/Ipc_New;->NumCmd:[I

    .line 84
    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 86
    aput v4, v0, v4

    .line 87
    aput v3, v0, v3

    .line 88
    const/16 v1, 0xc

    aput v1, v0, v6

    .line 89
    const/16 v1, 0x32

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 90
    const/16 v2, 0x2b

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 91
    const/16 v2, 0x3c

    aput v2, v0, v1

    .line 92
    aput v7, v0, v5

    const/16 v1, 0x8

    .line 93
    const/16 v2, 0xa6

    aput v2, v0, v1

    .line 84
    sput-object v0, Lcom/syu/app/ipc/Ipc_New;->NOTIFYCODE_Main_Will:[I

    .line 95
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/syu/app/ipc/Ipc_New;->NOTIFYCODE_PopBt:[I

    .line 106
    const/16 v0, 0x20

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 107
    const/16 v2, 0xd

    aput v2, v0, v1

    .line 109
    aput v4, v0, v3

    .line 110
    const/16 v1, 0x1a

    aput v1, v0, v6

    .line 111
    const/16 v1, 0x1c

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 112
    aput v3, v0, v1

    const/4 v1, 0x6

    .line 113
    const/16 v2, 0x9

    aput v2, v0, v1

    .line 114
    const/16 v1, 0x22

    aput v1, v0, v5

    const/16 v1, 0x8

    .line 115
    aput v5, v0, v1

    const/16 v1, 0x9

    .line 116
    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 117
    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 118
    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 119
    const/4 v2, 0x6

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 120
    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 121
    const/16 v2, 0x1f

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 122
    const/16 v2, 0x12

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 123
    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 124
    const/16 v2, 0x2a

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 125
    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0x13

    .line 126
    const/16 v2, 0x2c

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 127
    const/16 v2, 0x2e

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 128
    const/16 v2, 0x31

    aput v2, v0, v1

    const/16 v1, 0x16

    .line 129
    const/16 v2, 0x32

    aput v2, v0, v1

    const/16 v1, 0x17

    .line 130
    const/16 v2, 0x33

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 132
    const/16 v2, 0x3d

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 133
    const/16 v2, 0x3e

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 134
    const/16 v2, 0x3f

    aput v2, v0, v1

    const/16 v1, 0x1b

    .line 135
    const/16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 137
    const/16 v2, 0x41

    aput v2, v0, v1

    const/16 v1, 0x1d

    .line 139
    const/16 v2, 0x3a

    aput v2, v0, v1

    const/16 v1, 0x1e

    .line 140
    const/16 v2, 0x45

    aput v2, v0, v1

    const/16 v1, 0x1f

    .line 141
    const/16 v2, 0x43

    aput v2, v0, v1

    .line 106
    sput-object v0, Lcom/syu/app/ipc/Ipc_New;->NOTIFYCODE_Bt:[I

    .line 143
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/syu/app/ipc/Ipc_New;->NOTIFYCODE_Bt_Will:[I

    .line 153
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/syu/app/ipc/Ipc_New;->NOTIFYCODE_DIAL:[I

    .line 171
    const/16 v0, 0xd

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 172
    const/16 v2, 0xd

    aput v2, v0, v1

    .line 174
    aput v4, v0, v3

    .line 175
    const/16 v1, 0x22

    aput v1, v0, v6

    .line 176
    const/16 v1, 0x9

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 177
    const/16 v2, 0x1c

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 178
    aput v3, v0, v1

    .line 179
    const/16 v1, 0x2c

    aput v1, v0, v5

    const/16 v1, 0x8

    .line 180
    const/16 v2, 0x2f

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 181
    const/16 v2, 0x33

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 183
    const/16 v2, 0x3a

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 185
    const/16 v2, 0x3d

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 186
    const/16 v2, 0x3e

    aput v2, v0, v1

    .line 171
    sput-object v0, Lcom/syu/app/ipc/Ipc_New;->NOTIFYCODE_BtAV:[I

    .line 188
    new-array v0, v5, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/syu/app/ipc/Ipc_New;->NOTIFYCODE_SET:[I

    .line 197
    new-array v0, v4, [I

    sput-object v0, Lcom/syu/app/ipc/Ipc_New;->NOTIFYCODE_Sys_Will:[I

    .line 200
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/syu/app/ipc/Ipc_New;->NOTIFYCODE_Sound:[I

    .line 208
    new-array v0, v7, [I

    .line 210
    aput v4, v0, v4

    .line 211
    aput v3, v0, v3

    .line 212
    aput v6, v0, v6

    .line 208
    sput-object v0, Lcom/syu/app/ipc/Ipc_New;->NOTIFYCODE_UniCar:[I

    .line 945
    const/4 v0, 0x0

    sput v0, Lcom/syu/app/ipc/Ipc_New;->state_p:I

    .line 3077
    new-instance v0, Lcom/syu/app/ipc/Ipc_New$5;

    invoke-direct {v0}, Lcom/syu/app/ipc/Ipc_New$5;-><init>()V

    sput-object v0, Lcom/syu/app/ipc/Ipc_New;->mRunnable_queryPair:Ljava/lang/Runnable;

    .line 3085
    new-array v0, v3, [I

    sput-object v0, Lcom/syu/app/ipc/Ipc_New;->HFP_state:[I

    return-void

    .line 70
    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xd
        0xe
    .end array-data

    .line 95
    :array_1
    .array-data 4
        0x9
        0x8
        0xc
        0x3d
        0x3e
        0x43
        0x41
    .end array-data

    .line 143
    :array_2
    .array-data 4
        0x15
        0x16
        0x19
        0x1d
        0x18
        0x5
        0x3e
        0x43
    .end array-data

    .line 153
    :array_3
    .array-data 4
        0x9
        0x7
        0x8
        0x23
        0xc
        0xe
        0x6
        0x3d
        0x3e
        0x3f
        0x40
        0x12
        0x45
        0x41
        0x2e
    .end array-data

    .line 188
    :array_4
    .array-data 4
        0xf
        0x10
        0x14
        0x21
        0x1f
        0xc
        0x24
    .end array-data

    .line 200
    :array_5
    .array-data 4
        0x18
        0xc
        0xd
        0xb
        0xa
        0x3c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    new-instance v0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;

    invoke-direct {v0}, Lcom/syu/app/ipc/Ipc_NewNotifyPage;-><init>()V

    iput-object v0, p0, Lcom/syu/app/ipc/Ipc_New;->mNotify:Lcom/syu/app/ipc/Ipc_NewNotifyPage;

    .line 961
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/syu/app/ipc/Ipc_New;->delay:I

    .line 962
    iput v3, p0, Lcom/syu/app/ipc/Ipc_New;->phoneState_id:I

    .line 963
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/syu/app/ipc/Ipc_New;->CallsTYPE:[I

    .line 964
    new-array v0, v1, [Ljava/lang/Long;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/syu/app/ipc/Ipc_New;->CallsDATE:[Ljava/lang/Long;

    .line 1606
    iput v3, p0, Lcom/syu/app/ipc/Ipc_New;->talktime:I

    .line 1607
    new-instance v0, Lcom/syu/app/ipc/Ipc_New$1;

    invoke-direct {v0, p0}, Lcom/syu/app/ipc/Ipc_New$1;-><init>(Lcom/syu/app/ipc/Ipc_New;)V

    iput-object v0, p0, Lcom/syu/app/ipc/Ipc_New;->notify_PopBt:Lcom/lsec/core/util/IUiNotify;

    .line 2083
    new-instance v0, Lcom/syu/app/ipc/Ipc_New$2;

    invoke-direct {v0, p0}, Lcom/syu/app/ipc/Ipc_New$2;-><init>(Lcom/syu/app/ipc/Ipc_New;)V

    iput-object v0, p0, Lcom/syu/app/ipc/Ipc_New;->notify_Sound:Lcom/lsec/core/util/IUiNotify;

    .line 2138
    new-instance v0, Lcom/syu/app/ipc/Ipc_New$3;

    invoke-direct {v0, p0}, Lcom/syu/app/ipc/Ipc_New$3;-><init>(Lcom/syu/app/ipc/Ipc_New;)V

    iput-object v0, p0, Lcom/syu/app/ipc/Ipc_New;->notify_Main:Lcom/lsec/core/util/IUiNotify;

    .line 2324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syu/app/ipc/Ipc_New;->notify_Bt_Pop:Lcom/lsec/core/util/IUiNotify;

    .line 2325
    new-instance v0, Lcom/syu/app/ipc/Ipc_New$4;

    invoke-direct {v0, p0}, Lcom/syu/app/ipc/Ipc_New$4;-><init>(Lcom/syu/app/ipc/Ipc_New;)V

    iput-object v0, p0, Lcom/syu/app/ipc/Ipc_New;->notify_Bt:Lcom/lsec/core/util/IUiNotify;

    .line 3087
    new-instance v0, Lcom/syu/app/ipc/Ipc_New$6;

    invoke-direct {v0, p0}, Lcom/syu/app/ipc/Ipc_New$6;-><init>(Lcom/syu/app/ipc/Ipc_New;)V

    iput-object v0, p0, Lcom/syu/app/ipc/Ipc_New;->mRunnable_updateHistoryList:Ljava/lang/Runnable;

    .line 3162
    new-instance v0, Lcom/syu/app/ipc/Ipc_New$7;

    invoke-direct {v0, p0}, Lcom/syu/app/ipc/Ipc_New$7;-><init>(Lcom/syu/app/ipc/Ipc_New;)V

    iput-object v0, p0, Lcom/syu/app/ipc/Ipc_New;->notify_Sys:Lcom/lsec/core/util/IUiNotify;

    .line 3192
    new-instance v0, Lcom/syu/app/ipc/Ipc_New$8;

    invoke-direct {v0, p0}, Lcom/syu/app/ipc/Ipc_New$8;-><init>(Lcom/syu/app/ipc/Ipc_New;)V

    iput-object v0, p0, Lcom/syu/app/ipc/Ipc_New;->notify_UniCar:Lcom/lsec/core/util/IUiNotify;

    .line 69
    return-void
.end method

.method public static LongClick0()V
    .locals 1

    .prologue
    .line 697
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/syu/app/ipc/Ipc_New;->setNumKey(I)V

    .line 698
    return-void
.end method

.method public static PhoneVoice()V
    .locals 3

    .prologue
    .line 322
    const-string v0, "pv"

    const-string v1, " ** 22 Ipc dial  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v1, 0x85

    const/16 v2, 0x240

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(II)V

    .line 324
    return-void
.end method

.method public static Reset()V
    .locals 2

    .prologue
    .line 274
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I)V

    .line 275
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/syu/app/ipc/Ipc_New;->setAutoAnswer(Z)V

    .line 276
    return-void
.end method

.method public static SetBlackScreen()V
    .locals 3

    .prologue
    .line 314
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(II)V

    .line 315
    return-void
.end method

.method public static SetJumpNavi()V
    .locals 3

    .prologue
    .line 310
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(II)V

    .line 311
    return-void
.end method

.method public static SetMcuOff()V
    .locals 3

    .prologue
    .line 327
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(II)V

    .line 328
    return-void
.end method

.method public static SetRingLevel(I)V
    .locals 2
    .param p0, "RingLevel"    # I

    .prologue
    .line 306
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, p0}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(II)V

    .line 307
    return-void
.end method

.method public static SetStandBy()V
    .locals 3

    .prologue
    .line 318
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v1, 0x12

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(II)V

    .line 319
    return-void
.end method

.method static synthetic access$0(Lcom/syu/app/ipc/Ipc_New;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 3202
    invoke-direct {p0, p1}, Lcom/syu/app/ipc/Ipc_New;->sendService(Landroid/os/Bundle;)V

    return-void
.end method

.method public static appId()V
    .locals 3

    .prologue
    .line 676
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isAppIdBtPhone()Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/syu/bt/App_Bt;->bChangeAppIdWhenTalking:Z

    if-eqz v1, :cond_0

    .line 677
    sget-object v1, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sput v1, Lcom/syu/app/ipc/Bt_IpcObj;->bAppIdBefore:I

    .line 680
    :cond_0
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isAppIdBtAv()Z

    move-result v0

    .line 687
    .local v0, "bIsAppIdBtAv":Z
    sput-boolean v0, Lcom/syu/app/ipc/Bt_IpcObj;->bIsAppIdBtAv:Z

    .line 688
    const/16 v1, 0x5dc

    invoke-static {v1}, Lcom/syu/app/ipc/Ipc_New;->checkAppIdIsRight(I)V

    .line 689
    return-void
.end method

.method public static avCut()V
    .locals 3

    .prologue
    .line 528
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(II)V

    .line 529
    return-void
.end method

.method public static avLink()V
    .locals 3

    .prologue
    .line 524
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v1, 0x1f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(II)V

    .line 525
    return-void
.end method

.method public static avNext()V
    .locals 2

    .prologue
    .line 504
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I)V

    .line 505
    return-void
.end method

.method public static avPause()V
    .locals 2

    .prologue
    .line 516
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I)V

    .line 517
    return-void
.end method

.method public static avPlay()V
    .locals 2

    .prologue
    .line 512
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I)V

    .line 513
    return-void
.end method

.method public static avPlayPause()V
    .locals 2

    .prologue
    .line 508
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I)V

    .line 509
    return-void
.end method

.method public static avPrev()V
    .locals 2

    .prologue
    .line 500
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I)V

    .line 501
    return-void
.end method

.method public static avStop()V
    .locals 2

    .prologue
    .line 520
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I)V

    .line 521
    return-void
.end method

.method public static checkAppIdIsRight(I)V
    .locals 3
    .param p0, "delay"    # I

    .prologue
    .line 743
    sget-object v1, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 745
    return-void

    .line 743
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 744
    .local v0, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0, p0}, Lcom/syu/bt/InterfaceBt;->checkAppIdIsRight(I)V

    goto :goto_0
.end method

.method public static clearKey(Z)V
    .locals 8
    .param p0, "isLongClick"    # Z

    .prologue
    const/16 v7, 0xf

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 298
    const-string v0, "pop333"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  ** clearKey isLongClick = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sPhone2_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sPhone_callin_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v0, :cond_1

    .line 300
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    new-array v4, v1, [I

    if-eqz p0, :cond_0

    move v0, v1

    :goto_0
    aput v0, v4, v2

    const/4 v0, 0x0

    new-array v1, v1, [Ljava/lang/String;

    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    sget v6, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    aget-object v5, v5, v6

    aput-object v5, v1, v2

    invoke-virtual {v3, v7, v4, v0, v1}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    .line 303
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 300
    goto :goto_0

    .line 302
    :cond_1
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    if-eqz p0, :cond_2

    :goto_2
    invoke-virtual {v0, v7, v1}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(II)V

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public static connectDevice(Ljava/lang/String;)V
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 566
    const-string v0, "con3"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ** connectDevice C_CONNECT_DEVICE  str= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v1, 0x18

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v4, v4, v2}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    .line 568
    return-void
.end method

.method public static connectOBD(Ljava/lang/String;)V
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 562
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v1, 0x19

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v4, v4, v2}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    .line 563
    return-void
.end method

.method public static connectSMS()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 554
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v1, 0x32

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    .line 555
    return-void
.end method

.method public static cut()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0xd

    .line 378
    sget v0, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    packed-switch v0, :pswitch_data_0

    .line 391
    :pswitch_0
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    invoke-virtual {v0, v2, v4}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(II)V

    .line 394
    :goto_0
    return-void

    .line 381
    :pswitch_1
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    invoke-virtual {v0, v2, v3}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(II)V

    goto :goto_0

    .line 384
    :pswitch_2
    sget v0, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v1, 0x35

    if-ne v0, v1, :cond_0

    .line 385
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    invoke-virtual {v0, v2, v4}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(II)V

    goto :goto_0

    .line 387
    :cond_0
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    invoke-virtual {v0, v2, v3}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(II)V

    goto :goto_0

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static cut(Ljava/lang/String;)V
    .locals 6
    .param p0, "mac"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 396
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v1, 0xd

    new-array v2, v4, [I

    aput v4, v2, v5

    const/4 v3, 0x0

    new-array v4, v4, [Ljava/lang/String;

    aput-object p0, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public static deleteConnectedDevice(Ljava/lang/String;)V
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 572
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v1, 0x28

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v4, v4, v2}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    .line 573
    const-string v0, "gdy6"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ** Icp_New C_BT_DEL_RECORD_ONE  str= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    return-void
.end method

.method public static dial()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 453
    const-string v0, "pop3"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ** 22 Ipc dial  sPhone_mac = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/syu/bt/App_Bt;->sPhone_callin_mac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sPhone_callin_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v0, :cond_0

    .line 455
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    new-array v1, v3, [I

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/String;

    sget-object v4, Lcom/syu/bt/App_Bt;->sPhone_callin_mac:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    .line 458
    :goto_0
    return-void

    .line 457
    :cond_0
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    invoke-virtual {v0, v6, v5}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(II)V

    goto :goto_0
.end method

.method public static dial(Ljava/lang/String;)V
    .locals 7
    .param p0, "phoneNumer"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 462
    const-string v0, "con3"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ** dial C_DIAL phoneNumer = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sPhone_mac = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/syu/bt/App_Bt;->sPhone_callin_mac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v0, :cond_0

    .line 464
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/syu/bt/App_Bt;->sPhone_callin_mac:Ljava/lang/String;

    aput-object v2, v1, v4

    aput-object p0, v1, v5

    invoke-virtual {v0, v6, v3, v3, v1}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    .line 467
    :goto_0
    return-void

    .line 466
    :cond_0
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    new-array v1, v5, [Ljava/lang/String;

    aput-object p0, v1, v4

    invoke-virtual {v0, v6, v3, v3, v1}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static downDialLog()V
    .locals 2

    .prologue
    .line 931
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I)V

    .line 932
    return-void
.end method

.method public static downloadBook()V
    .locals 2

    .prologue
    .line 490
    const-string v0, "down"

    const-string v1, " --- 11  downloadPhoneBook 11  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I)V

    .line 492
    return-void
.end method

.method public static downloadBook(Ljava/lang/String;)V
    .locals 5
    .param p0, "mac"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 495
    const-string v0, "down"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " --- 22 downloadPhoneBook 11  mac = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v1, 0x1a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v4, v4, v2}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method private getLauncherPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 3244
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3245
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3246
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3247
    const/4 v4, 0x0

    .line 3246
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 3248
    .local v1, "res":Landroid/content/pm/ResolveInfo;
    if-nez v1, :cond_1

    .line 3257
    :cond_0
    :goto_0
    return-object v2

    .line 3251
    :cond_1
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    .line 3254
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3257
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static hang()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 439
    const-string v0, "sfth3"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " ** 22 Ipc hang  App_Bt.sPhone_mac = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/syu/bt/App_Bt;->sPhone_callin_mac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bLinkTwoPhone = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v0, :cond_3

    .line 441
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    new-array v3, v1, [I

    aput v1, v3, v2

    const/4 v4, 0x0

    new-array v5, v1, [Ljava/lang/String;

    sget-object v6, Lcom/syu/bt/App_Bt;->sPhone_callin_mac:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {v0, v7, v3, v4, v5}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    .line 443
    const-string v3, "sfth3"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, " ** 22 Ipc hang  sPhone_callin_id = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " bPhone2_HFP = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    sget v0, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    aget v0, v5, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    sget-object v0, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    sget v3, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    if-nez v3, :cond_2

    :goto_1
    aget v0, v0, v1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 445
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I)V

    .line 450
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 443
    goto :goto_0

    :cond_2
    move v1, v2

    .line 444
    goto :goto_1

    .line 449
    :cond_3
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    invoke-virtual {v0, v7, v1}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(II)V

    goto :goto_2
.end method

.method public static hang3rdPhoneCurrent()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x22

    .line 431
    const-string v0, "sfth3"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ** 33 Ipc hang3rdPhoneCurrent  App_Bt.sPhone_mac = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/syu/bt/App_Bt;->sPhone_callin_mac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v0, :cond_0

    .line 433
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/syu/bt/App_Bt;->sPhone_callin_mac:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v4, v5, v5, v1}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    .line 436
    :goto_0
    return-void

    .line 435
    :cond_0
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    invoke-virtual {v0, v4}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I)V

    goto :goto_0
.end method

.method public static hang3rdPhoneHold()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x21

    .line 421
    const-string v0, "sfth3"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ** 33 Ipc hang3rdPhoneHold  App_Bt.sPhone_mac = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/syu/bt/App_Bt;->sPhone_callin_mac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v0, :cond_0

    .line 424
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/syu/bt/App_Bt;->sPhone_callin_mac:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v4, v5, v5, v1}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    .line 428
    :goto_0
    return-void

    .line 427
    :cond_0
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    invoke-virtual {v0, v4}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I)V

    goto :goto_0
.end method

.method public static hangIpPhone()V
    .locals 2

    .prologue
    .line 402
    sget-object v0, Lcom/lsec/core/ipc/module/unicar/UniCar;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I)V

    .line 403
    return-void
.end method

.method public static hfp()V
    .locals 7

    .prologue
    const/16 v6, 0xe

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 474
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ** 11  hfp  sPhone_mac = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/syu/bt/App_Bt;->sPhone_callin_mac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v0, :cond_0

    .line 476
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    new-array v1, v3, [I

    aput v4, v1, v5

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/String;

    sget-object v4, Lcom/syu/bt/App_Bt;->sPhone_callin_mac:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    .line 479
    :goto_0
    return-void

    .line 478
    :cond_0
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    invoke-virtual {v0, v6, v4}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(II)V

    goto :goto_0
.end method

.method public static isAppIdBtAv()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 584
    sget-object v1, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    aget v1, v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isAppIdBtPhone()Z
    .locals 6

    .prologue
    const/16 v5, 0xf

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 588
    sget-object v2, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    aget v2, v2, v0

    if-ne v2, v5, :cond_2

    sget v2, Lcom/syu/bt/App_Bt;->mBtType:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isTZYConfig()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 590
    sget-object v2, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    aget v2, v2, v0

    if-eq v2, v4, :cond_0

    sget-object v2, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    aget v2, v2, v0

    if-ne v2, v5, :cond_1

    :cond_0
    move v0, v1

    .line 596
    :cond_1
    :goto_0
    return v0

    :cond_2
    sget-object v2, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    aget v2, v2, v0

    if-ne v2, v4, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public static isConnect()Z
    .locals 2

    .prologue
    .line 906
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    if-nez v0, :cond_0

    .line 907
    const/4 v0, 0x0

    .line 909
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isDisConnect()Z
    .locals 2

    .prologue
    .line 838
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    invoke-static {v0}, Lcom/syu/app/ipc/Ipc_New;->isDisConnect(I)Z

    move-result v0

    return v0
.end method

.method public static isDisConnect(I)Z
    .locals 1
    .param p0, "iState"    # I

    .prologue
    .line 827
    sparse-switch p0, :sswitch_data_0

    .line 834
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 831
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 827
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method private isExitMusicAndTimeWidget()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 3233
    const-string v1, "com.syu.widget"

    .line 3234
    .local v1, "packName":Ljava/lang/String;
    sget-object v5, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    invoke-virtual {v5}, Lcom/lsec/core/frame/app/MyApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3235
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 3236
    .local v2, "pinfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3240
    :goto_0
    return v4

    .line 3236
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 3237
    .local v0, "p":Landroid/content/pm/PackageInfo;
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3238
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isInCall()Z
    .locals 2

    .prologue
    .line 886
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 894
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 891
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 886
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isIpPhoneConnect()Z
    .locals 2

    .prologue
    .line 842
    sget-object v0, Lcom/lsec/core/ipc/module/unicar/UniCar;->DATA:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMerger()Z
    .locals 2

    .prologue
    .line 913
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 914
    const/4 v0, 0x1

    .line 916
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPairing()Z
    .locals 2

    .prologue
    .line 882
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPhoneConnect()Z
    .locals 2

    .prologue
    .line 920
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 921
    const/4 v0, 0x1

    .line 923
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isInCall()Z

    move-result v0

    goto :goto_0
.end method

.method public static isRightAppId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 600
    sget v1, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    if-eq v1, v0, :cond_0

    sget-boolean v1, Lcom/syu/bt/App_Bt;->bChangeAppIdWhenTalking:Z

    if-eqz v1, :cond_1

    .line 603
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isAppIdBtAv()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isAppIdBtPhone()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRing()Z
    .locals 2

    .prologue
    .line 902
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStateConnect()Z
    .locals 2

    .prologue
    .line 240
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    invoke-static {v0}, Lcom/syu/app/ipc/Ipc_New;->isStateConnect(I)Z

    move-result v0

    return v0
.end method

.method public static isStateConnect(I)Z
    .locals 1
    .param p0, "iState"    # I

    .prologue
    .line 244
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 245
    const/4 v0, 0x1

    .line 247
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStateDialAble()Z
    .locals 2

    .prologue
    .line 251
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 257
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 254
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isStateDisconnect()Z
    .locals 2

    .prologue
    .line 233
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    if-nez v0, :cond_0

    .line 234
    const/4 v0, 0x1

    .line 236
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTalk()Z
    .locals 2

    .prologue
    .line 898
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static link()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0xd

    .line 344
    sget v0, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    packed-switch v0, :pswitch_data_0

    .line 350
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isDisConnect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    sget v0, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    packed-switch v0, :pswitch_data_1

    .line 364
    :pswitch_0
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    invoke-virtual {v0, v2, v3}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(II)V

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 347
    :pswitch_1
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    invoke-virtual {v0, v2, v3}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(II)V

    goto :goto_0

    .line 354
    :pswitch_2
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    invoke-virtual {v0, v2, v4}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(II)V

    goto :goto_0

    .line 357
    :pswitch_3
    sget v0, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v1, 0x35

    if-ne v0, v1, :cond_1

    .line 358
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    invoke-virtual {v0, v2, v3}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(II)V

    goto :goto_0

    .line 360
    :cond_1
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    invoke-virtual {v0, v2, v4}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(II)V

    goto :goto_0

    .line 344
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 351
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static merge3rdPhone()V
    .locals 2

    .prologue
    .line 406
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I)V

    .line 407
    return-void
.end method

.method public static micSwitch()V
    .locals 2

    .prologue
    .line 482
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I)V

    .line 483
    return-void
.end method

.method public static muteSwitch(I)V
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 486
    sget-object v0, Lcom/lsec/core/ipc/module/main/Sound;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1, p0}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(II)V

    .line 487
    return-void
.end method

.method public static queryPairList()V
    .locals 4

    .prologue
    .line 547
    const-string v0, "hfp123"

    const-string v1, " ** queryPairList C_QUERY_PAIR, 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    sget-object v0, Lcom/syu/app/ipc/Ipc_New;->mRunnable_queryPair:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 550
    const/4 v0, 0x0

    sget-object v1, Lcom/syu/app/ipc/Ipc_New;->mRunnable_queryPair:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 551
    return-void
.end method

.method public static redial()V
    .locals 2

    .prologue
    .line 470
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I)V

    .line 471
    return-void
.end method

.method public static requestSMS(Ljava/lang/String;)V
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 558
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v1, 0x31

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v4, v4, v2}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    .line 559
    return-void
.end method

.method public static sendBtPhoneState(ILjava/lang/String;)V
    .locals 5
    .param p0, "state"    # I
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 947
    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v2, p1}, Lcom/syu/bt/db/Bt_Info;->getNameByNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 948
    .local v1, "name":Ljava/lang/String;
    const-string v2, "gdy13"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 22 sendBtPhoneState  name = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 950
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.syu.bt.sendphonestate"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 951
    const-string v2, "STATE"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 952
    const-string v2, "NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 953
    const-string v2, "NUMBER"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 955
    :try_start_0
    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    invoke-virtual {v2, v0}, Lcom/lsec/core/frame/app/MyApplication;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 959
    :goto_0
    return-void

    .line 956
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private sendService(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 3203
    invoke-direct {p0}, Lcom/syu/app/ipc/Ipc_New;->isExitMusicAndTimeWidget()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3204
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3205
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3206
    const-string v2, "com.syu.widget.BtavService"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3207
    const-string v2, "com.syu.widget"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3208
    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    invoke-virtual {v2, v0}, Lcom/lsec/core/frame/app/MyApplication;->startServiceSafely(Landroid/content/Intent;)V

    .line 3211
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v2, v2, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/syu/app/ipc/Ipc_New;->getLauncherPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 3212
    .local v1, "launcher":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 3213
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3214
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3215
    const-string v2, "com.syu.widget.BtavService"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3216
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3217
    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    invoke-virtual {v2, v0}, Lcom/lsec/core/frame/app/MyApplication;->startServiceSafely(Landroid/content/Intent;)V

    .line 3221
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v3, "TZY_UI5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3222
    invoke-virtual {p0}, Lcom/syu/app/ipc/Ipc_New;->isExitTzyApplication()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3223
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3224
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3225
    const-string v2, "com.syu.widget.BtavService"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3226
    const-string v2, "cn.teyes.online"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3227
    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    invoke-virtual {v2, v0}, Lcom/lsec/core/frame/app/MyApplication;->startServiceSafely(Landroid/content/Intent;)V

    .line 3230
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method public static setAutoAnswer(Z)V
    .locals 3
    .param p0, "flag"    # Z

    .prologue
    .line 283
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v2, 0x1c

    if-eqz p0, :cond_0

    const/4 v0, 0x5

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(II)V

    .line 284
    return-void

    .line 283
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static setBtSwitch(Z)V
    .locals 3
    .param p0, "flag"    # Z

    .prologue
    .line 279
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v2, 0x1d

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(II)V

    .line 280
    return-void

    .line 279
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setCarLinkAutoConnect(Z)V
    .locals 3
    .param p0, "auto"    # Z

    .prologue
    .line 534
    const-string v0, "gdy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " 11 setCarLinkAutoConnect  auto = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    sget-object v1, Lcom/lsec/core/ipc/module/main/Main;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v2, 0xa6

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(II)V

    .line 536
    return-void

    .line 535
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setDevName(Ljava/lang/String;)V
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 265
    const-string v0, "name"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Ipc_New setDevName  name = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v1, 0x13

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v4, v4, v2}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public static setDevPin(Ljava/lang/String;)V
    .locals 5
    .param p0, "pin"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 270
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v1, 0x12

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v4, v4, v2}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public static setNum(Ljava/lang/String;)V
    .locals 5
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 261
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v1, 0xc

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v4, v4, v2}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public static setNumKey(I)V
    .locals 7
    .param p0, "key"    # I

    .prologue
    const/4 v6, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 287
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v1, :cond_1

    .line 288
    sget-object v1, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    sget v2, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    aget-object v0, v1, v2

    .line 289
    .local v0, "phoneMac":Ljava/lang/String;
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 290
    sget-object v0, Lcom/syu/bt/App_Bt;->sPhone_callin_mac:Ljava/lang/String;

    .line 291
    :cond_0
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    new-array v2, v4, [I

    aput p0, v2, v5

    const/4 v3, 0x0

    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-virtual {v1, v6, v2, v3, v4}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    .line 295
    .end local v0    # "phoneMac":Ljava/lang/String;
    :goto_0
    return-void

    .line 294
    :cond_1
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    invoke-virtual {v1, v6, p0}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(II)V

    goto :goto_0
.end method

.method public static startDiscover()V
    .locals 3

    .prologue
    .line 539
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v1, 0x14

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(II)V

    .line 540
    return-void
.end method

.method public static stopDiscover()V
    .locals 3

    .prologue
    .line 543
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(II)V

    .line 544
    return-void
.end method

.method public static switch3rdPhone()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x20

    const/4 v2, 0x1

    .line 410
    const-string v0, "sfth"

    const-string v1, " 111 Ipc  switch3rdPhone "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v0, :cond_0

    .line 413
    sput-boolean v2, Lcom/syu/bt/App_Bt;->bPhone2_dialThrdPhone:Z

    .line 414
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/syu/bt/App_Bt;->sPhone_callin_mac:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v4, v5, v5, v1}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    .line 418
    :goto_0
    return-void

    .line 417
    :cond_0
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    invoke-virtual {v0, v4}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I)V

    goto :goto_0
.end method

.method public static test(Ljava/lang/String;)V
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x15

    .line 577
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    invoke-virtual {v0, v3}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I)V

    .line 581
    :goto_0
    return-void

    .line 580
    :cond_0
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v3, v4, v4, v1}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateBt(Ljava/lang/String;)V
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 331
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v1, 0x26

    .line 332
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 331
    invoke-virtual {v0, v1, v4, v4, v2}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    .line 333
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/syu/bt/util/BTUtil;->setFilePath(Ljava/lang/String;)V

    .line 334
    return-void
.end method


# virtual methods
.method public DisableGainSpec()V
    .locals 3

    .prologue
    .line 1603
    sget-object v0, Lcom/lsec/core/ipc/module/main/Sound;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(II)V

    .line 1604
    return-void
.end method

.method public EnableGainSpec()V
    .locals 3

    .prologue
    .line 1599
    sget-object v0, Lcom/lsec/core/ipc/module/main/Sound;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v1, 0x15

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(II)V

    .line 1600
    return-void
.end method

.method public FuncDial()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/16 v4, 0x9

    .line 1520
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v7, :cond_1

    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v1, v1, v4

    if-nez v1, :cond_1

    .line 1521
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syu/app/ipc/Ipc_New;->test(Ljava/lang/String;)V

    .line 1575
    :cond_0
    :goto_0
    return-void

    .line 1522
    :cond_1
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v1, v1, v4

    if-nez v1, :cond_5

    .line 1523
    sget v1, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    if-ne v1, v7, :cond_2

    .line 1524
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bFactoryTest:Z

    if-nez v1, :cond_0

    .line 1528
    invoke-virtual {p0}, Lcom/syu/app/ipc/Ipc_New;->readStringFromFile()Ljava/lang/String;

    move-result-object v0

    .line 1529
    .local v0, "addr":Ljava/lang/String;
    sput-boolean v5, Lcom/syu/bt/App_Bt;->bFactoryTest:Z

    .line 1530
    sget-object v1, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v2, "factoryTest"

    new-instance v3, Lcom/syu/app/ipc/Ipc_New$13;

    invoke-direct {v3, p0}, Lcom/syu/app/ipc/Ipc_New$13;-><init>(Lcom/syu/app/ipc/Ipc_New;)V

    .line 1549
    const/4 v4, 0x0

    .line 1530
    invoke-static {v1, v2, v3, v4, v5}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    .line 1550
    invoke-static {v0}, Lcom/syu/app/ipc/Ipc_New;->test(Ljava/lang/String;)V

    goto :goto_0

    .line 1551
    .end local v0    # "addr":Ljava/lang/String;
    :cond_2
    sget v1, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_3

    sget v1, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 1552
    :cond_3
    const-string v1, "test"

    invoke-static {v1}, Lcom/syu/app/ipc/Ipc_New;->test(Ljava/lang/String;)V

    goto :goto_0

    .line 1554
    :cond_4
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/syu/app/ipc/Ipc_New;->test(Ljava/lang/String;)V

    goto :goto_0

    .line 1557
    :cond_5
    const-string v1, "hy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " ** 22 Ipc FuncDial  sPhoneNumber = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " U_PHONE_STATE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v1, v1, v4

    if-eq v1, v8, :cond_6

    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v1, v1, v4

    if-eq v1, v6, :cond_6

    .line 1559
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v1

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v3, "bt_state_cannot_dial"

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1563
    :cond_6
    const-string v1, ""

    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v1, v1, v4

    if-eq v1, v7, :cond_7

    .line 1564
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->dial()V

    goto/16 :goto_0

    .line 1565
    :cond_7
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v1, v1, v4

    if-ne v1, v8, :cond_8

    .line 1566
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->redial()V

    goto/16 :goto_0

    .line 1569
    :cond_8
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v1, v1, v4

    if-ne v1, v6, :cond_0

    .line 1570
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->dial()V

    goto/16 :goto_0
.end method

.method public FuncDialIpPhone()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1578
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1579
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isConnect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1580
    sput-boolean v0, Lcom/syu/bt/App_Bt;->bCutBtByIpPhone:Z

    .line 1581
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->cut()V

    .line 1584
    :cond_0
    sget-object v2, Lcom/lsec/core/ipc/module/unicar/UniCar;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(ILjava/lang/String;)V

    .line 1588
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public LauncherRequestAppIdBtAv()V
    .locals 1

    .prologue
    .line 631
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/lsec/core/ipc/module/main/Main;->requestAppId(I)V

    .line 632
    return-void
.end method

.method public addNotify_PopBt()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/syu/app/ipc/Ipc_New;->notify_PopBt:Lcom/lsec/core/util/IUiNotify;

    iput-object v0, p0, Lcom/syu/app/ipc/Ipc_New;->notify_Bt_Pop:Lcom/lsec/core/util/IUiNotify;

    .line 226
    return-void
.end method

.method public checkFirstDialOrRing()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 935
    sget v1, Lcom/lsec/core/ipc/module/main/Bt;->sLastPhoneState:I

    invoke-static {v1}, Lcom/syu/app/ipc/Ipc_New;->isDisConnect(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isDisConnect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 936
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    iget-object v1, v1, Lcom/syu/app/ipc/Bt_IpcObj;->mRunnable_ClearContactAndHistory_Disp:Ljava/lang/Runnable;

    invoke-static {v4, v1}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 944
    :cond_0
    :goto_0
    return-void

    .line 937
    :cond_1
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isDisConnect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 938
    sget v1, Lcom/lsec/core/ipc/module/main/Bt;->sLastPhoneState:I

    invoke-static {v1}, Lcom/syu/app/ipc/Ipc_New;->isDisConnect(I)Z

    move-result v0

    .line 939
    .local v0, "bDisconnectLastState":Z
    if-nez v0, :cond_2

    sget-boolean v1, Lcom/syu/bt/App_Bt;->bHaveScanDB:Z

    if-nez v1, :cond_0

    .line 941
    :cond_2
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    iget-object v1, v1, Lcom/syu/app/ipc/Bt_IpcObj;->mRunnable_scanDB:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-static {v4, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public cmdNum(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 701
    sget-object v0, Lcom/syu/app/ipc/Ipc_New;->NumCmd:[I

    aget v0, v0, p1

    invoke-static {v0}, Lcom/syu/app/ipc/Ipc_New;->setNumKey(I)V

    .line 702
    return-void
.end method

.method public getElectricValue()F
    .locals 1

    .prologue
    .line 1592
    invoke-virtual {p0}, Lcom/syu/app/ipc/Ipc_New;->isPauseDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1593
    const/4 v0, 0x0

    .line 1595
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/lsec/core/ipc/module/main/Sound;->getSpectrumValue()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method public getNamebyMac(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 3128
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bShowPairedBt:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 3129
    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3138
    :cond_1
    const-string v2, ""

    :goto_0
    return-object v2

    .line 3129
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 3130
    .local v1, "dev":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x28e4

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3131
    .local v0, "addr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3132
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3133
    const/16 v2, 0x28e5

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0
.end method

.method public getSB()[I
    .locals 1

    .prologue
    .line 927
    sget-object v0, Lcom/lsec/core/ipc/module/main/Sound;->SB:[I

    return-object v0
.end method

.method public getStrList([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "strs"    # [Ljava/lang/String;

    .prologue
    .line 3151
    const-string v1, ""

    .line 3152
    .local v1, "str":Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3153
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_1

    .line 3160
    .end local v0    # "i":I
    :cond_0
    return-object v1

    .line 3154
    .restart local v0    # "i":I
    :cond_1
    aget-object v2, p1, v0

    if-eqz v2, :cond_2

    .line 3155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3153
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3157
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "NULL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public initIpc()V
    .locals 2

    .prologue
    .line 218
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->mListUiNotify_Main:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/syu/app/ipc/Ipc_New;->notify_Main:Lcom/lsec/core/util/IUiNotify;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->mListUiNotify_Bt:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/syu/app/ipc/Ipc_New;->notify_Bt:Lcom/lsec/core/util/IUiNotify;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->mListUiNotify_Sound:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/syu/app/ipc/Ipc_New;->notify_Sound:Lcom/lsec/core/util/IUiNotify;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->mListUiNotify_Sys:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/syu/app/ipc/Ipc_New;->notify_Sys:Lcom/lsec/core/util/IUiNotify;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    return-void
.end method

.method public isCalling()Z
    .locals 2

    .prologue
    .line 857
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/syu/app/ipc/Ipc_New;->isCalling(I)Z

    move-result v0

    return v0
.end method

.method public isCalling(I)Z
    .locals 1
    .param p1, "iState"    # I

    .prologue
    .line 846
    packed-switch p1, :pswitch_data_0

    .line 853
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 850
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 846
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method isExitTzyApplication()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 3262
    const-string v1, "cn.teyes.online"

    .line 3263
    .local v1, "packName":Ljava/lang/String;
    sget-object v5, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    invoke-virtual {v5}, Lcom/lsec/core/frame/app/MyApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3264
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 3265
    .local v2, "pinfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3269
    :goto_0
    return v4

    .line 3265
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 3266
    .local v0, "p":Landroid/content/pm/PackageInfo;
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3267
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public isMute()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 861
    sget-object v1, Lcom/lsec/core/ipc/module/main/Sound;->DATA:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    if-ne v1, v0, :cond_0

    .line 867
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPBAPStateLoad()Z
    .locals 2

    .prologue
    .line 878
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v1, 0x1d

    aget v0, v0, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPauseDraw()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 871
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isDisConnect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 874
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v2, 0xd

    aget v1, v1, v2

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public phoneState()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/16 v9, 0x9

    const/4 v8, 0x0

    .line 1156
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bIsAppAmapAssistInstall:Z

    if-eqz v3, :cond_0

    .line 1157
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isDisConnect()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1158
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    const-string v4, "bt_disconnect"

    invoke-virtual {v3, v4}, Lcom/syu/bt/App_Bt;->sendCmd2AmapAssist(Ljava/lang/String;)V

    .line 1163
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/syu/app/ipc/Ipc_New;->checkFirstDialOrRing()V

    .line 1165
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v3, v3, v9

    sput v3, Lcom/syu/bt/App_Bt;->phoneState:I

    .line 1167
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    const-string v4, "phoneState"

    sget v5, Lcom/syu/bt/App_Bt;->phoneState:I

    invoke-virtual {v3, v4, v5}, Lcom/lsec/core/util/MySharePreference2;->saveIntValue(Ljava/lang/String;I)V

    .line 1169
    const-string v3, "gdy13"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 00 phoneState  U_PHONE_STATE = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/syu/bt/App_Bt;->phoneState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  sPhoneNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    new-instance v4, Lcom/syu/app/ipc/Ipc_New$11;

    invoke-direct {v4, p0}, Lcom/syu/app/ipc/Ipc_New$11;-><init>(Lcom/syu/app/ipc/Ipc_New;)V

    .line 1179
    sget v3, Lcom/syu/bt/App_Bt;->phoneState:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_3

    const/16 v3, 0x3e8

    :goto_1
    int-to-long v6, v3

    .line 1170
    invoke-static {v8, v4, v6, v7}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 1181
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v3, v3, v9

    packed-switch v3, :pswitch_data_0

    .line 1296
    :cond_1
    :goto_2
    :pswitch_0
    sget v3, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    packed-switch v3, :pswitch_data_1

    .line 1319
    :goto_3
    return-void

    .line 1160
    :cond_2
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    const-string v4, "bt_connect"

    invoke-virtual {v3, v4}, Lcom/syu/bt/App_Bt;->sendCmd2AmapAssist(Ljava/lang/String;)V

    goto :goto_0

    .line 1179
    :cond_3
    const/16 v3, 0x64

    goto :goto_1

    .line 1184
    :pswitch_1
    const-string v3, ""

    sput-object v3, Lcom/syu/bt/App_Bt;->mOperator:Ljava/lang/String;

    .line 1185
    sput v8, Lcom/syu/bt/App_Bt;->iBtAv_CurTime:I

    .line 1186
    sput v8, Lcom/syu/bt/App_Bt;->iBtAv_TotalTime:I

    .line 1187
    sput-boolean v8, Lcom/syu/bt/App_Bt;->bDownloading:Z

    .line 1188
    sput-boolean v8, Lcom/syu/bt/App_Bt;->bHasDownBook:Z

    .line 1193
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isTZYConfig()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1194
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bSoundMute:Z

    if-eqz v3, :cond_4

    .line 1195
    invoke-static {v8}, Lcom/syu/app/ipc/Bt_IpcObj;->MuteSwitch(I)V

    .line 1200
    :cond_4
    sget v3, Lcom/lsec/core/ipc/module/main/Bt;->sLastPhoneState:I

    invoke-virtual {p0, v3}, Lcom/syu/app/ipc/Ipc_New;->isCalling(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1201
    invoke-static {v10}, Lcom/syu/app/ipc/Ipc_New;->clearKey(Z)V

    .line 1202
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v4, "type"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1203
    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v10}, Lcom/syu/bt/db/Bt_Info;->insertCallLog(Landroid/content/ContentValues;Z)V

    goto :goto_2

    .line 1207
    :pswitch_2
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isTZYConfig()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1208
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bSoundMute:Z

    if-eqz v3, :cond_5

    .line 1209
    invoke-static {v8}, Lcom/syu/app/ipc/Bt_IpcObj;->MuteSwitch(I)V

    .line 1212
    :cond_5
    sget v3, Lcom/lsec/core/ipc/module/main/Bt;->sLastPhoneState:I

    invoke-virtual {p0, v3}, Lcom/syu/app/ipc/Ipc_New;->isCalling(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1213
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v4, "type"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1214
    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v10}, Lcom/syu/bt/db/Bt_Info;->insertCallLog(Landroid/content/ContentValues;Z)V

    .line 1218
    :cond_6
    sget v3, Lcom/lsec/core/ipc/module/main/Bt;->sLastPhoneState:I

    invoke-static {v3}, Lcom/syu/app/ipc/Ipc_New;->isDisConnect(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1219
    iget v3, p0, Lcom/syu/app/ipc/Ipc_New;->delay:I

    if-lez v3, :cond_7

    .line 1220
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bJumpFavorite:Z

    if-eqz v3, :cond_7

    .line 1221
    const/16 v3, 0x7d0

    iput v3, p0, Lcom/syu/app/ipc/Ipc_New;->delay:I

    .line 1224
    :cond_7
    new-instance v3, Lcom/syu/app/ipc/Ipc_New$12;

    invoke-direct {v3, p0}, Lcom/syu/app/ipc/Ipc_New$12;-><init>(Lcom/syu/app/ipc/Ipc_New;)V

    .line 1232
    iget v4, p0, Lcom/syu/app/ipc/Ipc_New;->delay:I

    int-to-long v4, v4

    .line 1224
    invoke-static {v8, v3, v4, v5}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    goto/16 :goto_2

    .line 1238
    :pswitch_3
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isTZYConfig()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1239
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bSoundMute:Z

    if-eqz v3, :cond_8

    .line 1240
    invoke-static {v8}, Lcom/syu/app/ipc/Bt_IpcObj;->MuteSwitch(I)V

    .line 1243
    :cond_8
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 1244
    const-string v3, "his"

    const-string v4, " 21 Ipc_New   Calls.OUTGOING_TYPE "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v4, "type"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1246
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v4, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1247
    const-string v3, "his"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 20 Ipc_New   Calls.MISSED_TYPE ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v4, "number"

    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1251
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    sput-object v3, Lcom/syu/bt/App_Bt;->strNumberBak:Ljava/lang/String;

    goto/16 :goto_2

    .line 1255
    :pswitch_4
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isTZYConfig()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1256
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bSoundMute:Z

    if-eqz v3, :cond_9

    .line 1257
    invoke-static {v8}, Lcom/syu/app/ipc/Bt_IpcObj;->MuteSwitch(I)V

    .line 1260
    :cond_9
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v4, "type"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1261
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 1262
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v4, "type"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1263
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v4, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1264
    const-string v3, "his"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 22 Ipc_New   Calls.MISSED_TYPE ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v4, "number"

    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1269
    :pswitch_5
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isTZYConfig()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1270
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bSoundMute:Z

    if-eqz v3, :cond_a

    .line 1271
    invoke-static {v8}, Lcom/syu/app/ipc/Bt_IpcObj;->MuteSwitch(I)V

    .line 1274
    :cond_a
    const-string v3, "his"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 11 Ipc_New   App_Bt.phoneState = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/syu/bt/App_Bt;->phoneState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v4, "type"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 1276
    const-string v3, "his"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 12 Ipc_New   App_Bt.sPhoneNumber = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Calls.NUMBER = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v6, "number"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Calls.TYPE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v6, "type"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v5, "number"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v4, "type"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v11, :cond_b

    .line 1278
    const-string v3, "his"

    const-string v4, " 23 Ipc_New   Calls.INCOMING_TYPE "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v4, "type"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1283
    :cond_b
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->values3rd:Landroid/content/ContentValues;

    const-string v4, "type"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1284
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->values3rd:Landroid/content/ContentValues;

    const-string v5, "number"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1285
    const-string v3, "his"

    const-string v4, " 24 Ipc_New   Calls.INCOMING_TYPE "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->values3rd:Landroid/content/ContentValues;

    const-string v4, "type"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 1298
    :pswitch_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1299
    .local v0, "data":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 1300
    .local v2, "str":Ljava/lang/String;
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v3, v3, v9

    if-eq v3, v12, :cond_c

    .line 1301
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v3, v3, v9

    if-eq v3, v11, :cond_c

    .line 1302
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v3, v3, v9

    const/4 v4, 0x4

    if-eq v3, v4, :cond_c

    .line 1303
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v3, v3, v9

    const/4 v4, 0x5

    if-ne v3, v4, :cond_d

    .line 1304
    :cond_c
    const-string v2, "1"

    .line 1308
    :goto_4
    const-string v3, "bt_phone_state"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1310
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1311
    const-string v3, "com.syu.widget.BtavService"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1313
    const-string v3, "com.android.launcher3"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1314
    sget-object v3, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    invoke-virtual {v3, v1}, Lcom/lsec/core/frame/app/MyApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1315
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v3}, Lcom/syu/app/ipc/Bt_IpcObj;->updateNotify_BtAv()V

    goto/16 :goto_3

    .line 1306
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_d
    const-string v2, "0"

    goto :goto_4

    .line 1181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1296
    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_6
    .end packed-switch
.end method

.method public phoneState(Lcom/syu/bt/Act_Bt;)V
    .locals 11
    .param p1, "actBt"    # Lcom/syu/bt/Act_Bt;

    .prologue
    const/16 v10, 0x271c

    const/16 v9, 0x271b

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x9

    .line 1321
    const-string v3, "gdy16"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 00 Ipc_New phoneState  ** U_PHONE_STATE = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bFirstBtAvPage:Z

    if-eqz v3, :cond_1

    .line 1404
    :cond_0
    :goto_0
    return-void

    .line 1327
    :cond_1
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v2, v3, v6

    .line 1328
    .local v2, "value":I
    sget v3, Lcom/lsec/core/ipc/module/main/Bt;->sLastPhoneState:I

    invoke-virtual {p0, v3}, Lcom/syu/app/ipc/Ipc_New;->isCalling(I)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p0, v2}, Lcom/syu/app/ipc/Ipc_New;->isCalling(I)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1331
    sget v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    if-eqz v3, :cond_7

    .line 1332
    const/4 v0, 0x0

    .line 1333
    .local v0, "bMoveTask2Back":Z
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    sget-boolean v3, Lcom/syu/bt/App_Bt;->bEnableHalfScreen:Z

    if-eqz v3, :cond_2

    .line 1334
    sget v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_b

    .line 1335
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/syu/bt/App_Bt;->setFullScreenMode(I)V

    .line 1340
    :cond_2
    :goto_1
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bHidePopBt:Z

    if-eqz v3, :cond_3

    .line 1341
    sget v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_3

    .line 1342
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->SetJumpNavi()V

    .line 1345
    :cond_3
    sget v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    .line 1346
    const-string v3, "pv"

    const-string v4, " 00 BACK_FLAG_ACTIVITY_BIT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    const/4 v0, 0x1

    .line 1349
    iget-object v3, p1, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v3, v8}, Lcom/lsec/core/frame/app/MyActivity;->moveTaskToBack(Z)Z

    .line 1352
    :cond_4
    sget v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_6

    .line 1353
    if-nez v0, :cond_5

    .line 1355
    iget-object v3, p1, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    sget v4, Lcom/syu/bt/App_Bt;->sPageBak:I

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    .line 1356
    const-string v3, "HJT"

    const-string v4, "A"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    :cond_5
    sget v3, Lcom/syu/bt/App_Bt;->sPageBak:I

    sput v3, Lcom/syu/bt/App_Bt;->sPage:I

    .line 1362
    :cond_6
    sput v7, Lcom/syu/bt/App_Bt;->sBackFlag:I

    .line 1369
    .end local v0    # "bMoveTask2Back":Z
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/syu/app/ipc/Ipc_New;->isCalling()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1370
    const/16 v1, 0x2713

    .line 1371
    .local v1, "iPageGo":I
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    sget-boolean v3, Lcom/syu/bt/App_Bt;->bEnableHalfScreen:Z

    if-nez v3, :cond_8

    sget-boolean v3, Lcom/syu/bt/App_Bt;->bCallinPageFlag:Z

    if-eqz v3, :cond_9

    .line 1372
    :cond_8
    const/16 v1, 0x2730

    .line 1374
    :cond_9
    invoke-virtual {p1}, Lcom/syu/bt/Act_Bt;->DismissPopContacts()V

    .line 1382
    sget v3, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    if-eq v3, v1, :cond_a

    .line 1383
    sget v3, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    sput v3, Lcom/syu/bt/App_Bt;->sPageBak:I

    .line 1384
    sget v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    or-int/lit8 v3, v3, 0x1

    sput v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    .line 1386
    iget-object v3, p1, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v3, v1}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    .line 1390
    .end local v1    # "iPageGo":I
    :cond_a
    sget-boolean v3, Lcom/syu/bt/App_Bt;->hideBtnWhenDisconnect:Z

    if-eqz v3, :cond_d

    .line 1391
    sget v3, Lcom/syu/bt/App_Bt;->sPage:I

    invoke-virtual {p1, v3, v2}, Lcom/syu/bt/Act_Bt;->setMenuBtnEnable(II)V

    goto/16 :goto_0

    .line 1336
    .restart local v0    # "bMoveTask2Back":Z
    :cond_b
    sget v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_2

    .line 1337
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/syu/bt/App_Bt;->setFullScreenMode(I)V

    goto :goto_1

    .line 1364
    .end local v0    # "bMoveTask2Back":Z
    :cond_c
    sget v3, Lcom/lsec/core/ipc/module/main/Bt;->sLastPhoneState:I

    if-eqz v3, :cond_7

    if-nez v2, :cond_7

    .line 1365
    invoke-virtual {p1, v7}, Lcom/syu/bt/Act_Bt;->ClearAllContact(Z)V

    goto :goto_2

    .line 1392
    :cond_d
    sget-object v3, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v4, "BT_23NEW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1393
    sget v3, Lcom/lsec/core/ipc/module/main/Bt;->sLastPhoneState:I

    if-eqz v3, :cond_e

    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v3, v3, v6

    if-nez v3, :cond_e

    .line 1394
    sget v3, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    if-eq v3, v10, :cond_e

    sget v3, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    if-eq v3, v9, :cond_e

    .line 1395
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bNo_Pair:Z

    if-eqz v3, :cond_f

    .line 1396
    iget-object v3, p1, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v3, v9}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    .line 1401
    :cond_e
    :goto_3
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v3, v3, v6

    invoke-virtual {p0, v3, p1}, Lcom/syu/app/ipc/Ipc_New;->updateDeviceInfo(ILcom/syu/bt/Act_Bt;)V

    goto/16 :goto_0

    .line 1398
    :cond_f
    iget-object v3, p1, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v3, v10}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    goto :goto_3
.end method

.method public phoneState_2(I)V
    .locals 14
    .param p1, "id"    # I

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x4

    const/16 v10, 0x9

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 966
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bIsAppAmapAssistInstall:Z

    if-eqz v3, :cond_0

    .line 967
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isDisConnect()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 968
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    const-string v4, "bt_disconnect"

    invoke-virtual {v3, v4}, Lcom/syu/bt/App_Bt;->sendCmd2AmapAssist(Ljava/lang/String;)V

    .line 973
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/syu/app/ipc/Ipc_New;->checkFirstDialOrRing()V

    .line 975
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v3, v3, v10

    sput v3, Lcom/syu/bt/App_Bt;->phoneState:I

    .line 977
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    const-string v4, "phoneState"

    sget v5, Lcom/syu/bt/App_Bt;->phoneState:I

    invoke-virtual {v3, v4, v5}, Lcom/lsec/core/util/MySharePreference2;->saveIntValue(Ljava/lang/String;I)V

    .line 980
    new-instance v4, Lcom/syu/app/ipc/Ipc_New$9;

    invoke-direct {v4, p0}, Lcom/syu/app/ipc/Ipc_New$9;-><init>(Lcom/syu/app/ipc/Ipc_New;)V

    .line 989
    sget v3, Lcom/syu/bt/App_Bt;->phoneState:I

    if-ne v3, v11, :cond_3

    const/16 v3, 0x3e8

    :goto_1
    int-to-long v6, v3

    .line 980
    invoke-static {v8, v4, v6, v7}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 991
    const-string v3, "his5"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 00 phoneState  U_PHONE_STATE = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/syu/bt/App_Bt;->phoneState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  sPhoneNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    sget-object v3, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v3, v3, p1

    add-int/lit8 v3, v3, -0x1

    packed-switch v3, :pswitch_data_0

    .line 1130
    :cond_1
    :goto_2
    :pswitch_0
    sget v3, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    packed-switch v3, :pswitch_data_1

    .line 1153
    :goto_3
    return-void

    .line 970
    :cond_2
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    const-string v4, "bt_connect"

    invoke-virtual {v3, v4}, Lcom/syu/bt/App_Bt;->sendCmd2AmapAssist(Ljava/lang/String;)V

    goto :goto_0

    .line 989
    :cond_3
    const/16 v3, 0x64

    goto :goto_1

    .line 995
    :pswitch_1
    const-string v3, ""

    sput-object v3, Lcom/syu/bt/App_Bt;->mOperator:Ljava/lang/String;

    .line 996
    sput v8, Lcom/syu/bt/App_Bt;->iBtAv_CurTime:I

    .line 997
    sput v8, Lcom/syu/bt/App_Bt;->iBtAv_TotalTime:I

    .line 998
    sput-boolean v8, Lcom/syu/bt/App_Bt;->bDownloading:Z

    .line 999
    sput-boolean v8, Lcom/syu/bt/App_Bt;->bHasDownBook:Z

    .line 1002
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isTZYConfig()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1003
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bSoundMute:Z

    if-eqz v3, :cond_4

    .line 1004
    invoke-static {v8}, Lcom/syu/app/ipc/Bt_IpcObj;->MuteSwitch(I)V

    .line 1008
    :cond_4
    const-string v3, "his5"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 33 phoneState  PHONE_STATE_DISCONNECTED  id = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " App_Bt.sPhone_callin_id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    sget v3, Lcom/lsec/core/ipc/module/main/Bt;->sLastPhoneState:I

    invoke-virtual {p0, v3}, Lcom/syu/app/ipc/Ipc_New;->isCalling(I)Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    if-ne p1, v3, :cond_1

    .line 1011
    invoke-static {v9}, Lcom/syu/app/ipc/Ipc_New;->clearKey(Z)V

    .line 1012
    const-string v3, "his5"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 33 phoneState  PHONE_STATE_DISCONNECTED  Bt.sPhoneNumber = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " CallsTYPE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/syu/app/ipc/Ipc_New;->CallsTYPE:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " CallsDATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/syu/app/ipc/Ipc_New;->CallsDATE:[Ljava/lang/Long;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sPhone2_CALL_NUMBER = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_CALL_NUMBER:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 1014
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v4, "type"

    iget-object v5, p0, Lcom/syu/app/ipc/Ipc_New;->CallsTYPE:[I

    aget v5, v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1015
    if-ne p1, v9, :cond_5

    .line 1016
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v4, "type"

    iget-object v5, p0, Lcom/syu/app/ipc/Ipc_New;->CallsTYPE:[I

    aget v5, v5, p1

    sget v6, Lcom/syu/bt/App_Bt;->iPhone2HisStep:I

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1017
    :cond_5
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v4, "date"

    iget-object v5, p0, Lcom/syu/app/ipc/Ipc_New;->CallsDATE:[Ljava/lang/Long;

    aget-object v5, v5, p1

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1018
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v4, "number"

    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_CALL_NUMBER_p:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    iget-object v3, p0, Lcom/syu/app/ipc/Ipc_New;->CallsTYPE:[I

    aget v3, v3, p1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/syu/app/ipc/Ipc_New;->CallsDATE:[Ljava/lang/Long;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v12

    if-eqz v3, :cond_1

    .line 1020
    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v9}, Lcom/syu/bt/db/Bt_Info;->insertCallLog(Landroid/content/ContentValues;Z)V

    .line 1021
    iget-object v3, p0, Lcom/syu/app/ipc/Ipc_New;->CallsTYPE:[I

    aput v8, v3, p1

    .line 1022
    iget-object v3, p0, Lcom/syu/app/ipc/Ipc_New;->CallsDATE:[Ljava/lang/Long;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, p1

    goto/16 :goto_2

    .line 1027
    :pswitch_2
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isTZYConfig()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1028
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bSoundMute:Z

    if-eqz v3, :cond_6

    .line 1029
    invoke-static {v8}, Lcom/syu/app/ipc/Bt_IpcObj;->MuteSwitch(I)V

    .line 1032
    :cond_6
    const-string v3, "his5"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 22 phoneState  PHONE_STATE_CONNECTED  Bt.sLastPhoneState = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/lsec/core/ipc/module/main/Bt;->sLastPhoneState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    sget v3, Lcom/lsec/core/ipc/module/main/Bt;->sLastPhoneState:I

    invoke-virtual {p0, v3}, Lcom/syu/app/ipc/Ipc_New;->isCalling(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1035
    const-string v3, "pop333"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  ** 00 clearKey bPhone2_HFP = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v5, v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "* "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v5, v5, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v3, :cond_b

    .line 1038
    sget-object v3, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v3, v3, v8

    if-ge v3, v11, :cond_7

    sget-object v3, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v3, v3, v9

    if-ge v3, v11, :cond_7

    .line 1039
    invoke-static {v9}, Lcom/syu/app/ipc/Ipc_New;->clearKey(Z)V

    .line 1042
    :cond_7
    :goto_4
    const-string v3, "his5"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 33 phoneState  PHONE_STATE_CONNECTED  Bt.sPhoneNumber = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " CallsTYPE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/syu/app/ipc/Ipc_New;->CallsTYPE:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " CallsDATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/syu/app/ipc/Ipc_New;->CallsDATE:[Ljava/lang/Long;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sPhone2_CALL_NUMBER = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_CALL_NUMBER:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 1044
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v4, "type"

    iget-object v5, p0, Lcom/syu/app/ipc/Ipc_New;->CallsTYPE:[I

    aget v5, v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1045
    if-ne p1, v9, :cond_8

    .line 1046
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v4, "type"

    iget-object v5, p0, Lcom/syu/app/ipc/Ipc_New;->CallsTYPE:[I

    aget v5, v5, p1

    sget v6, Lcom/syu/bt/App_Bt;->iPhone2HisStep:I

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1047
    :cond_8
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v4, "date"

    iget-object v5, p0, Lcom/syu/app/ipc/Ipc_New;->CallsDATE:[Ljava/lang/Long;

    aget-object v5, v5, p1

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1048
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v4, "number"

    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_CALL_NUMBER_p:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    iget-object v3, p0, Lcom/syu/app/ipc/Ipc_New;->CallsTYPE:[I

    aget v3, v3, p1

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/syu/app/ipc/Ipc_New;->CallsDATE:[Ljava/lang/Long;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v12

    if-eqz v3, :cond_9

    .line 1050
    const-string v3, "his5"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 44 phoneState  PHONE_STATE_CONNECTED insertCallLog   values.NUMBER ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v6, "number"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "* NUMBER = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v6, "number"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v9}, Lcom/syu/bt/db/Bt_Info;->insertCallLog(Landroid/content/ContentValues;Z)V

    .line 1053
    iget-object v3, p0, Lcom/syu/app/ipc/Ipc_New;->CallsTYPE:[I

    aput v8, v3, p1

    .line 1054
    iget-object v3, p0, Lcom/syu/app/ipc/Ipc_New;->CallsDATE:[Ljava/lang/Long;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, p1

    .line 1058
    :cond_9
    sget v3, Lcom/lsec/core/ipc/module/main/Bt;->sLastPhoneState:I

    invoke-static {v3}, Lcom/syu/app/ipc/Ipc_New;->isDisConnect(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1059
    iget v3, p0, Lcom/syu/app/ipc/Ipc_New;->delay:I

    if-lez v3, :cond_a

    .line 1060
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bJumpFavorite:Z

    if-eqz v3, :cond_a

    .line 1061
    const/16 v3, 0x7d0

    iput v3, p0, Lcom/syu/app/ipc/Ipc_New;->delay:I

    .line 1064
    :cond_a
    new-instance v3, Lcom/syu/app/ipc/Ipc_New$10;

    invoke-direct {v3, p0}, Lcom/syu/app/ipc/Ipc_New$10;-><init>(Lcom/syu/app/ipc/Ipc_New;)V

    .line 1072
    iget v4, p0, Lcom/syu/app/ipc/Ipc_New;->delay:I

    int-to-long v4, v4

    .line 1064
    invoke-static {v8, v3, v4, v5}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    goto/16 :goto_2

    .line 1041
    :cond_b
    invoke-static {v9}, Lcom/syu/app/ipc/Ipc_New;->clearKey(Z)V

    goto/16 :goto_4

    .line 1078
    :pswitch_3
    const-string v3, "his5"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 11 phoneState PHONE_STATE_DIAL   id ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sPhone2_CALL_NUMBER = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_CALL_NUMBER:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isTZYConfig()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1080
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bSoundMute:Z

    if-eqz v3, :cond_c

    .line 1081
    invoke-static {v8}, Lcom/syu/app/ipc/Bt_IpcObj;->MuteSwitch(I)V

    .line 1084
    :cond_c
    iget-object v3, p0, Lcom/syu/app/ipc/Ipc_New;->CallsTYPE:[I

    const/4 v4, 0x2

    aput v4, v3, p1

    .line 1085
    if-ne p1, v9, :cond_d

    .line 1086
    iget-object v3, p0, Lcom/syu/app/ipc/Ipc_New;->CallsTYPE:[I

    const/4 v4, 0x2

    aput v4, v3, p1

    .line 1087
    :cond_d
    iget-object v3, p0, Lcom/syu/app/ipc/Ipc_New;->CallsDATE:[Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, p1

    .line 1089
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1090
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    sput-object v3, Lcom/syu/bt/App_Bt;->strNumberBak:Ljava/lang/String;

    goto/16 :goto_2

    .line 1094
    :pswitch_4
    const-string v3, "his5"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 22 phoneState PHONE_STATE_RING   id ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sPhone2_CALL_NUMBER = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_CALL_NUMBER:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isTZYConfig()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1096
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bSoundMute:Z

    if-eqz v3, :cond_e

    .line 1097
    invoke-static {v8}, Lcom/syu/app/ipc/Bt_IpcObj;->MuteSwitch(I)V

    .line 1100
    :cond_e
    iget-object v3, p0, Lcom/syu/app/ipc/Ipc_New;->CallsTYPE:[I

    const/4 v4, 0x3

    aput v4, v3, p1

    .line 1101
    iget-object v3, p0, Lcom/syu/app/ipc/Ipc_New;->CallsDATE:[Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, p1

    goto/16 :goto_2

    .line 1104
    :pswitch_5
    const-string v3, "his5"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 22 phoneState PHONE_STATE_TALK   id ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sPhone2_CALL_NUMBER = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_CALL_NUMBER:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isTZYConfig()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1106
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bSoundMute:Z

    if-eqz v3, :cond_f

    .line 1107
    invoke-static {v8}, Lcom/syu/app/ipc/Bt_IpcObj;->MuteSwitch(I)V

    .line 1110
    :cond_f
    const-string v3, "his5"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 11 Ipc_New  PHONE_STATE_TALK  App_Bt.phoneState = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/syu/bt/App_Bt;->phoneState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " CallsTYPE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/syu/app/ipc/Ipc_New;->CallsTYPE:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iget-object v3, p0, Lcom/syu/app/ipc/Ipc_New;->CallsTYPE:[I

    aget v3, v3, p1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_10

    .line 1112
    iget-object v3, p0, Lcom/syu/app/ipc/Ipc_New;->CallsTYPE:[I

    aput v9, v3, p1

    .line 1117
    :cond_10
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->values3rd:Landroid/content/ContentValues;

    const-string v4, "type"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1118
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->values3rd:Landroid/content/ContentValues;

    const-string v5, "number"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1119
    const-string v3, "his"

    const-string v4, " 24 Ipc_New   Calls.INCOMING_TYPE "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->values3rd:Landroid/content/ContentValues;

    const-string v4, "type"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 1132
    :pswitch_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1133
    .local v0, "data":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 1134
    .local v2, "str":Ljava/lang/String;
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v3, v3, v10

    const/4 v4, 0x2

    if-eq v3, v4, :cond_11

    .line 1135
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v3, v3, v10

    const/4 v4, 0x3

    if-eq v3, v4, :cond_11

    .line 1136
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v3, v3, v10

    if-eq v3, v11, :cond_11

    .line 1137
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v3, v3, v10

    const/4 v4, 0x5

    if-ne v3, v4, :cond_12

    .line 1138
    :cond_11
    const-string v2, "1"

    .line 1142
    :goto_5
    const-string v3, "bt_phone_state"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1144
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1145
    const-string v3, "com.syu.widget.BtavService"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1147
    const-string v3, "com.android.launcher3"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1148
    sget-object v3, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    invoke-virtual {v3, v1}, Lcom/lsec/core/frame/app/MyApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1149
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v3}, Lcom/syu/app/ipc/Bt_IpcObj;->updateNotify_BtAv()V

    goto/16 :goto_3

    .line 1140
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_12
    const-string v2, "0"

    goto :goto_5

    .line 992
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1130
    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_6
    .end packed-switch
.end method

.method public readStringFromFile()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 1467
    const/4 v0, 0x0

    .line 1469
    .local v0, "bExist":Z
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v8, "/mnt/external_sd/BTAddr.txt"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1470
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    .line 1472
    if-nez v0, :cond_0

    .line 1473
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    const-string v8, "/mnt/external_sdio/BTAddr.txt"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1474
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    .line 1477
    :cond_0
    if-nez v0, :cond_1

    .line 1478
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    const-string v8, "/mnt/usb_storage/BTAddr.txt"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1479
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    .line 1482
    :cond_1
    if-nez v0, :cond_2

    .line 1483
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v8, 0x15

    if-lt v3, v8, :cond_3

    .line 1492
    .end local v3    # "i":I
    :cond_2
    if-nez v0, :cond_4

    .line 1493
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v8

    .line 1494
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v9

    iget-object v9, v9, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v10, "bt_notinsertdevice"

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1493
    invoke-virtual {v8, v9}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    .line 1516
    .end local v2    # "file":Ljava/io/File;
    :goto_1
    return-object v7

    .line 1484
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "i":I
    :cond_3
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "/mnt/usb_storage/USB_DISK"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1485
    const-string v9, "/udisk0/BTAddr.txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1484
    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1486
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    .line 1487
    if-nez v0, :cond_2

    .line 1483
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1499
    .end local v3    # "i":I
    :cond_4
    const/4 v4, 0x0

    .line 1500
    .local v4, "reader":Ljava/io/BufferedReader;
    new-instance v4, Ljava/io/BufferedReader;

    .end local v4    # "reader":Ljava/io/BufferedReader;
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1502
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1503
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 1504
    .local v6, "str":Ljava/lang/String;
    :goto_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    .line 1508
    if-eqz v4, :cond_5

    .line 1509
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 1511
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1505
    :cond_6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1512
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1513
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public recoverAppId()V
    .locals 1

    .prologue
    .line 692
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isRightAppId()Z

    move-result v0

    if-nez v0, :cond_0

    .line 693
    invoke-virtual {p0}, Lcom/syu/app/ipc/Ipc_New;->requestAppIdBtPhone()V

    .line 694
    :cond_0
    return-void
.end method

.method public removeNotify_PopBt()V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syu/app/ipc/Ipc_New;->notify_Bt_Pop:Lcom/lsec/core/util/IUiNotify;

    .line 230
    return-void
.end method

.method public requestAppIdBtAv()V
    .locals 1

    .prologue
    .line 627
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/lsec/core/ipc/module/main/Main;->requestAppIdByOnTop(I)V

    .line 628
    return-void
.end method

.method public requestAppIdBtPhone()V
    .locals 2

    .prologue
    .line 608
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bChangeAppIdWhenTalking:Z

    if-eqz v0, :cond_1

    .line 610
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isInCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 612
    sget v0, Lcom/syu/app/ipc/Bt_IpcObj;->bAppIdBefore:I

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isAppIdBtPhone()Z

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    sget v0, Lcom/syu/bt/App_Bt;->mBtType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isTZYConfig()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 617
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/lsec/core/ipc/module/main/Main;->requestAppIdByOnTop(I)V

    goto :goto_0

    .line 621
    :cond_2
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/lsec/core/ipc/module/main/Main;->requestAppIdByOnTop(I)V

    goto :goto_0
.end method

.method public requestAppIdNull()V
    .locals 1

    .prologue
    .line 635
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isAppIdBtAv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->avPause()V

    .line 637
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isDZSJMIB4Config()Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->avStop()V

    .line 641
    :cond_0
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isRightAppId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 643
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lsec/core/ipc/module/main/Main;->requestAppId(I)V

    .line 645
    :cond_1
    return-void
.end method

.method public requestAppIdNull(I)V
    .locals 4
    .param p1, "pageId"    # I

    .prologue
    const/4 v3, 0x0

    .line 650
    const-string v0, "null"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ** 11 handleRemoveTask APP_ID_NULL U_APP_ID = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pageId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bIsLauncher_2Ico:Z

    if-eqz v0, :cond_2

    .line 652
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isAppIdBtPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 653
    invoke-static {v3}, Lcom/lsec/core/ipc/module/main/Main;->requestAppId(I)V

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isAppIdBtAv()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x271a

    if-ne p1, v0, :cond_0

    .line 655
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->avPause()V

    .line 656
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->avStop()V

    .line 657
    invoke-static {v3}, Lcom/lsec/core/ipc/module/main/Main;->requestAppId(I)V

    goto :goto_0

    .line 660
    :cond_2
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isAppIdBtAv()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 662
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->avPause()V

    .line 663
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->avStop()V

    .line 668
    :cond_3
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isAppIdBtAv()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isAppIdBtPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    :cond_4
    invoke-static {v3}, Lcom/lsec/core/ipc/module/main/Main;->requestAppId(I)V

    goto :goto_0
.end method

.method public saveCallLog(Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "mList":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    .local p2, "mList2":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    const/16 v9, 0x283b

    const/16 v8, 0x2838

    const/16 v7, 0x2837

    const/4 v6, 0x0

    .line 3098
    const-string v2, "his7"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 000 Ipc_New saveCallLog listType mList = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3099
    const-string v2, "his7"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 111 Ipc_New saveCallLog listType mList2 = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3102
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3114
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3126
    return-void

    .line 3102
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 3103
    .local v0, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 3104
    .local v1, "values":Landroid/content/ContentValues;
    new-instance v1, Landroid/content/ContentValues;

    .end local v1    # "values":Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3105
    .restart local v1    # "values":Landroid/content/ContentValues;
    const-string v4, "type"

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3106
    const-string v4, "date"

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3107
    const-string v4, "number"

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3109
    if-eqz v1, :cond_0

    .line 3110
    const-string v2, "his3"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 222 Ipc_New saveCallLog listType "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v2, v1, v6}, Lcom/syu/bt/db/Bt_Info;->insertCallLog(Landroid/content/ContentValues;Z)V

    goto :goto_0

    .line 3114
    .end local v0    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 3115
    .restart local v0    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 3116
    .restart local v1    # "values":Landroid/content/ContentValues;
    new-instance v1, Landroid/content/ContentValues;

    .end local v1    # "values":Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3117
    .restart local v1    # "values":Landroid/content/ContentValues;
    const-string v4, "type"

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sget v5, Lcom/syu/bt/App_Bt;->iPhone2HisStep:I

    add-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3118
    const-string v4, "date"

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3119
    const-string v4, "number"

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3121
    if-eqz v1, :cond_1

    .line 3122
    const-string v2, "his3"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 111 Ipc_New saveCallLog listType "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3123
    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v2, v1, v6}, Lcom/syu/bt/db/Bt_Info;->insertCallLog(Landroid/content/ContentValues;Z)V

    goto/16 :goto_1
.end method

.method public sendCmdAmp(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 713
    sget-object v0, Lcom/lsec/core/ipc/module/main/Sound;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(II)V

    .line 714
    return-void
.end method

.method public sendCmdLoud(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 709
    sget-object v0, Lcom/lsec/core/ipc/module/main/Sound;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(II)V

    .line 710
    return-void
.end method

.method public sendCmdVolBal(II)V
    .locals 2
    .param p1, "idSound"    # I
    .param p2, "value"    # I

    .prologue
    .line 705
    sget-object v0, Lcom/lsec/core/ipc/module/main/Sound;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1, p2}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(III)V

    .line 706
    return-void
.end method

.method public switchList(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 3142
    .local p1, "mList_p1":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    .local p2, "mList_p2":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3143
    .local v0, "mList":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3144
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 3145
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3146
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 3147
    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3148
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3149
    return-void
.end method

.method public updateDeviceInfo(ILcom/syu/bt/Act_Bt;)V
    .locals 15
    .param p1, "value"    # I
    .param p2, "actBt"    # Lcom/syu/bt/Act_Bt;

    .prologue
    .line 1407
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v11, v11, Lcom/lsec/core/frame/app/MyUi;->mPages:Landroid/util/SparseArray;

    const/16 v12, 0x2712

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lsec/core/frame/ctrl/JPage;

    .line 1408
    .local v10, "pageMenu":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v10, :cond_4

    .line 1409
    const/16 v11, 0x2746

    invoke-virtual {v10, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1410
    .local v7, "history":Lcom/lsec/core/frame/ctrl/JButton;
    const/16 v11, 0x2745

    invoke-virtual {v10, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1411
    .local v3, "contact":Lcom/lsec/core/frame/ctrl/JButton;
    const/16 v11, 0x2744

    invoke-virtual {v10, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1412
    .local v5, "dial":Lcom/lsec/core/frame/ctrl/JButton;
    const/16 v11, 0x274c

    invoke-virtual {v10, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1415
    .local v1, "btav":Lcom/lsec/core/frame/ctrl/JButton;
    const/16 v11, 0x2749

    invoke-virtual {v10, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lsec/core/frame/ctrl/JText;

    .line 1416
    .local v8, "history_Txt":Lcom/lsec/core/frame/ctrl/JText;
    const/16 v11, 0x2748

    invoke-virtual {v10, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lsec/core/frame/ctrl/JText;

    .line 1417
    .local v4, "contact_Txt":Lcom/lsec/core/frame/ctrl/JText;
    const/16 v11, 0x2747

    invoke-virtual {v10, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lsec/core/frame/ctrl/JText;

    .line 1418
    .local v6, "dial_Txt":Lcom/lsec/core/frame/ctrl/JText;
    sget-object v11, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v12, 0x9

    aget v11, v11, v12

    const/4 v12, 0x1

    if-eq v11, v12, :cond_5

    sget-object v11, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v12, 0x9

    aget v11, v11, v12

    if-eqz v11, :cond_5

    .line 1419
    sget-object v11, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v12, 0x9

    aget v11, v11, v12

    const/4 v12, 0x6

    if-eq v11, v12, :cond_5

    .line 1418
    const/4 v11, 0x1

    :goto_0
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 1420
    .local v9, "isConnect":Ljava/lang/Boolean;
    sget-boolean v11, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v11, :cond_0

    .line 1421
    sget-object v11, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    const/4 v12, 0x3

    if-ge v11, v12, :cond_6

    sget-object v11, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    const/4 v12, 0x3

    if-ge v11, v12, :cond_6

    const/4 v11, 0x0

    :goto_1
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 1422
    :cond_0
    const-string v11, "gdy16"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, " 11 Ipc_New updateDeviceInfo isConnect = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  ** U_PHONE_STATE = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    sget-object v11, Lcom/syu/bt/App_Bt;->mUi_Name:Ljava/lang/String;

    const-string v12, "yl_dn1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1425
    sget v11, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v11, :cond_7

    const/4 v2, -0x1

    .line 1426
    .local v2, "color":I
    :goto_2
    if-eqz v7, :cond_1

    .line 1427
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {v7, v11}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    .line 1428
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_8

    move v11, v2

    :goto_3
    invoke-virtual {v7, v11}, Lcom/lsec/core/frame/ctrl/JButton;->setTextColor(I)V

    .line 1430
    :cond_1
    if-eqz v3, :cond_2

    .line 1431
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {v3, v11}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    .line 1432
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_9

    move v11, v2

    :goto_4
    invoke-virtual {v3, v11}, Lcom/lsec/core/frame/ctrl/JButton;->setTextColor(I)V

    .line 1434
    :cond_2
    if-eqz v5, :cond_3

    .line 1435
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {v5, v11}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    .line 1436
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_a

    move v11, v2

    :goto_5
    invoke-virtual {v5, v11}, Lcom/lsec/core/frame/ctrl/JButton;->setTextColor(I)V

    .line 1438
    :cond_3
    if-eqz v1, :cond_4

    .line 1439
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {v1, v11}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    .line 1440
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_b

    .end local v2    # "color":I
    :goto_6
    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setTextColor(I)V

    .line 1463
    .end local v1    # "btav":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v3    # "contact":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v4    # "contact_Txt":Lcom/lsec/core/frame/ctrl/JText;
    .end local v5    # "dial":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v6    # "dial_Txt":Lcom/lsec/core/frame/ctrl/JText;
    .end local v7    # "history":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v8    # "history_Txt":Lcom/lsec/core/frame/ctrl/JText;
    .end local v9    # "isConnect":Ljava/lang/Boolean;
    :cond_4
    :goto_7
    return-void

    .line 1418
    .restart local v1    # "btav":Lcom/lsec/core/frame/ctrl/JButton;
    .restart local v3    # "contact":Lcom/lsec/core/frame/ctrl/JButton;
    .restart local v4    # "contact_Txt":Lcom/lsec/core/frame/ctrl/JText;
    .restart local v5    # "dial":Lcom/lsec/core/frame/ctrl/JButton;
    .restart local v6    # "dial_Txt":Lcom/lsec/core/frame/ctrl/JText;
    .restart local v7    # "history":Lcom/lsec/core/frame/ctrl/JButton;
    .restart local v8    # "history_Txt":Lcom/lsec/core/frame/ctrl/JText;
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1421
    .restart local v9    # "isConnect":Ljava/lang/Boolean;
    :cond_6
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 1425
    :cond_7
    const/high16 v2, -0x1000000

    goto :goto_2

    .line 1428
    .restart local v2    # "color":I
    :cond_8
    const v11, -0x777778

    goto :goto_3

    .line 1432
    :cond_9
    const v11, -0x777778

    goto :goto_4

    .line 1436
    :cond_a
    const v11, -0x777778

    goto :goto_5

    .line 1440
    :cond_b
    const v2, -0x777778

    goto :goto_6

    .line 1445
    .end local v2    # "color":I
    :cond_c
    const/4 v2, -0x1

    .line 1446
    .restart local v2    # "color":I
    if-eqz v8, :cond_d

    .line 1447
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_12

    move v11, v2

    :goto_8
    invoke-virtual {v8, v11}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 1449
    :cond_d
    if-eqz v4, :cond_e

    .line 1450
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_13

    move v11, v2

    :goto_9
    invoke-virtual {v4, v11}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 1452
    :cond_e
    if-eqz v6, :cond_f

    .line 1453
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_14

    .end local v2    # "color":I
    :goto_a
    invoke-virtual {v6, v2}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 1455
    :cond_f
    if-eqz v7, :cond_10

    .line 1456
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {v7, v11}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    .line 1457
    :cond_10
    if-eqz v3, :cond_11

    .line 1458
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {v3, v11}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    .line 1459
    :cond_11
    if-eqz v5, :cond_4

    .line 1460
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {v5, v11}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    goto :goto_7

    .line 1447
    .restart local v2    # "color":I
    :cond_12
    const v11, -0x777778

    goto :goto_8

    .line 1450
    :cond_13
    const v11, -0x777778

    goto :goto_9

    .line 1453
    :cond_14
    const v2, -0x777778

    goto :goto_a
.end method

.method public updateNotify_BtAv()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 732
    const-string v2, "hfp11"

    const-string v3, " ** 00 updateNotify_BtAv "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bBtNoAV:Z

    if-eqz v2, :cond_1

    .line 740
    :cond_0
    return-void

    .line 735
    :cond_1
    sget-object v3, Lcom/syu/app/ipc/Ipc_New;->NOTIFYCODE_BtAV:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget v1, v3, v2

    .line 736
    .local v1, "updateCode":I
    sget-object v5, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 735
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 736
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 737
    .local v0, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0, v1, v7, v7, v7}, Lcom/syu/bt/InterfaceBt;->onNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateNotify_BtAv_HalfScreen()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 819
    const-string v2, "hfp11"

    const-string v3, " ** 11 updateNotify_BtAv_HalfScreen "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    sget-object v3, Lcom/syu/app/ipc/Ipc_New;->NOTIFYCODE_BtAV:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 824
    return-void

    .line 820
    :cond_0
    aget v1, v3, v2

    .line 821
    .local v1, "updateCode":I
    sget-object v5, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 820
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 821
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 822
    .local v0, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0, v1, v7, v7, v7}, Lcom/syu/bt/InterfaceBt;->onNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateNotify_Callin()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 748
    sget-object v3, Lcom/syu/app/ipc/Ipc_New;->NOTIFYCODE_DIAL:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 752
    return-void

    .line 748
    :cond_0
    aget v1, v3, v2

    .line 749
    .local v1, "updateCode":I
    sget-object v5, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 748
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 749
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 750
    .local v0, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0, v1, v7, v7, v7}, Lcom/syu/bt/InterfaceBt;->onNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateNotify_Callin_HalfScreen()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 783
    sget-object v3, Lcom/syu/app/ipc/Ipc_New;->NOTIFYCODE_DIAL:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 787
    return-void

    .line 783
    :cond_0
    aget v1, v3, v2

    .line 784
    .local v1, "updateCode":I
    sget-object v5, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 783
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 784
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 785
    .local v0, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0, v1, v7, v7, v7}, Lcom/syu/bt/InterfaceBt;->onNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateNotify_Callin_HideKey()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 776
    sget-object v3, Lcom/syu/app/ipc/Ipc_New;->NOTIFYCODE_DIAL:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 780
    return-void

    .line 776
    :cond_0
    aget v1, v3, v2

    .line 777
    .local v1, "updateCode":I
    sget-object v5, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 776
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 777
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 778
    .local v0, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0, v1, v7, v7, v7}, Lcom/syu/bt/InterfaceBt;->onNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateNotify_Callin_ShowCall()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 762
    sget-object v3, Lcom/syu/app/ipc/Ipc_New;->NOTIFYCODE_DIAL:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 766
    return-void

    .line 762
    :cond_0
    aget v1, v3, v2

    .line 763
    .local v1, "updateCode":I
    sget-object v5, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 762
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 763
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 764
    .local v0, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0, v1, v7, v7, v7}, Lcom/syu/bt/InterfaceBt;->onNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateNotify_Callin_ShowCall_HalfScreen()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 797
    sget-object v3, Lcom/syu/app/ipc/Ipc_New;->NOTIFYCODE_DIAL:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 801
    return-void

    .line 797
    :cond_0
    aget v1, v3, v2

    .line 798
    .local v1, "updateCode":I
    sget-object v5, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 797
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 798
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 799
    .local v0, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0, v1, v7, v7, v7}, Lcom/syu/bt/InterfaceBt;->onNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateNotify_Callin_ShowDial()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 755
    sget-object v3, Lcom/syu/app/ipc/Ipc_New;->NOTIFYCODE_DIAL:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 759
    return-void

    .line 755
    :cond_0
    aget v1, v3, v2

    .line 756
    .local v1, "updateCode":I
    sget-object v5, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 755
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 756
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 757
    .local v0, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0, v1, v7, v7, v7}, Lcom/syu/bt/InterfaceBt;->onNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateNotify_Callin_ShowDial_HalfScreen()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 790
    sget-object v3, Lcom/syu/app/ipc/Ipc_New;->NOTIFYCODE_DIAL:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 794
    return-void

    .line 790
    :cond_0
    aget v1, v3, v2

    .line 791
    .local v1, "updateCode":I
    sget-object v5, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 790
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 791
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 792
    .local v0, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0, v1, v7, v7, v7}, Lcom/syu/bt/InterfaceBt;->onNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateNotify_Callin_ShowKey()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 769
    sget-object v3, Lcom/syu/app/ipc/Ipc_New;->NOTIFYCODE_DIAL:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 773
    return-void

    .line 769
    :cond_0
    aget v1, v3, v2

    .line 770
    .local v1, "updateCode":I
    sget-object v5, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 769
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 770
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 771
    .local v0, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0, v1, v7, v7, v7}, Lcom/syu/bt/InterfaceBt;->onNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateNotify_Callin_ShowKey_HalfScreen()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 804
    sget-object v3, Lcom/syu/app/ipc/Ipc_New;->NOTIFYCODE_DIAL:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 808
    return-void

    .line 804
    :cond_0
    aget v1, v3, v2

    .line 805
    .local v1, "updateCode":I
    sget-object v5, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 804
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 805
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 806
    .local v0, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0, v1, v7, v7, v7}, Lcom/syu/bt/InterfaceBt;->onNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateNotify_Dial()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 724
    sget-object v3, Lcom/syu/app/ipc/Ipc_New;->NOTIFYCODE_DIAL:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 728
    return-void

    .line 724
    :cond_0
    aget v1, v3, v2

    .line 725
    .local v1, "updateCode":I
    sget-object v5, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 724
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 725
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 726
    .local v0, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0, v1, v7, v7, v7}, Lcom/syu/bt/InterfaceBt;->onNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateNotify_Dial_HalfScreen()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 811
    sget-object v3, Lcom/syu/app/ipc/Ipc_New;->NOTIFYCODE_DIAL:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 815
    return-void

    .line 811
    :cond_0
    aget v1, v3, v2

    .line 812
    .local v1, "updateCode":I
    sget-object v5, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 811
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 812
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 813
    .local v0, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0, v1, v7, v7, v7}, Lcom/syu/bt/InterfaceBt;->onNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateNotify_Set()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 717
    sget-object v3, Lcom/syu/app/ipc/Ipc_New;->NOTIFYCODE_SET:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 721
    return-void

    .line 717
    :cond_0
    aget v1, v3, v2

    .line 718
    .local v1, "updateCode":I
    sget-object v5, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 717
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 718
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 719
    .local v0, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0, v1, v7, v7, v7}, Lcom/syu/bt/InterfaceBt;->onNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_1
.end method
