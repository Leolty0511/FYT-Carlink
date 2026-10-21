.class public Lcom/syu/app/ipc/Ipc_786;
.super Ljava/lang/Object;
.source "Ipc_786.java"


# static fields
.field public static final NOTIFYCODE_BtAV:[I

.field public static final NOTIFYCODE_DIAL:[I

.field public static final NOTIFYCODE_SET:[I

.field static final NumCmd:[I


# instance fields
.field public mNotify:Lcom/syu/app/ipc/Ipc_786NotifyPage;

.field notify_Bt:Lcom/lsec/core/util/IUiNotify;

.field notify_Bt_Pop:Lcom/lsec/core/util/IUiNotify;

.field notify_Main:Lcom/lsec/core/util/IUiNotify;

.field private notify_PopBt:Lcom/lsec/core/util/IUiNotify;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 30
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/syu/app/ipc/Ipc_786;->NumCmd:[I

    .line 45
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/syu/app/ipc/Ipc_786;->NOTIFYCODE_DIAL:[I

    .line 52
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/syu/app/ipc/Ipc_786;->NOTIFYCODE_BtAV:[I

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/syu/app/ipc/Ipc_786;->NOTIFYCODE_SET:[I

    .line 63
    return-void

    .line 30
    nop

    :array_0
    .array-data 4
        0x17
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x18
    .end array-data

    .line 45
    :array_1
    .array-data 4
        0x1
        0xe
        0x5
        0x9
    .end array-data

    .line 52
    :array_2
    .array-data 4
        0x2
        0x12
        0x13
        0x1
    .end array-data

    .line 59
    :array_3
    .array-data 4
        0x6
        0x8
        0xb
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/syu/app/ipc/Ipc_786NotifyPage;

    invoke-direct {v0}, Lcom/syu/app/ipc/Ipc_786NotifyPage;-><init>()V

    iput-object v0, p0, Lcom/syu/app/ipc/Ipc_786;->mNotify:Lcom/syu/app/ipc/Ipc_786NotifyPage;

    .line 480
    new-instance v0, Lcom/syu/app/ipc/Ipc_786$1;

    invoke-direct {v0, p0}, Lcom/syu/app/ipc/Ipc_786$1;-><init>(Lcom/syu/app/ipc/Ipc_786;)V

    iput-object v0, p0, Lcom/syu/app/ipc/Ipc_786;->notify_PopBt:Lcom/lsec/core/util/IUiNotify;

    .line 572
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syu/app/ipc/Ipc_786;->notify_Bt_Pop:Lcom/lsec/core/util/IUiNotify;

    .line 573
    new-instance v0, Lcom/syu/app/ipc/Ipc_786$2;

    invoke-direct {v0, p0}, Lcom/syu/app/ipc/Ipc_786$2;-><init>(Lcom/syu/app/ipc/Ipc_786;)V

    iput-object v0, p0, Lcom/syu/app/ipc/Ipc_786;->notify_Bt:Lcom/lsec/core/util/IUiNotify;

    .line 604
    new-instance v0, Lcom/syu/app/ipc/Ipc_786$3;

    invoke-direct {v0, p0}, Lcom/syu/app/ipc/Ipc_786$3;-><init>(Lcom/syu/app/ipc/Ipc_786;)V

    iput-object v0, p0, Lcom/syu/app/ipc/Ipc_786;->notify_Main:Lcom/lsec/core/util/IUiNotify;

    .line 29
    return-void
.end method

.method public static LongClick0()V
    .locals 1

    .prologue
    .line 262
    const/16 v0, 0x19

    invoke-static {v0}, Lcom/syu/app/ipc/Ipc_786;->setNumKey(I)V

    .line 263
    return-void
.end method

.method public static Reset()V
    .locals 3

    .prologue
    .line 116
    const/16 v0, 0x24

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lsec/core/ipc786/module/Bt786;->cmdBt(IILjava/lang/String;)V

    .line 117
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/syu/app/ipc/Ipc_786;->setAutoAnswer(Z)V

    .line 118
    return-void
.end method

.method public static appId()V
    .locals 2

    .prologue
    .line 249
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->isAppIdBtAv()Z

    move-result v0

    .line 250
    .local v0, "bIsAppIdBtAv":Z
    sget-boolean v1, Lcom/syu/app/ipc/Bt_IpcObj;->bIsAppIdBtAv:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 251
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->avPlay()V

    .line 253
    :cond_0
    sput-boolean v0, Lcom/syu/app/ipc/Bt_IpcObj;->bIsAppIdBtAv:Z

    .line 254
    return-void
.end method

.method public static avNext()V
    .locals 3

    .prologue
    .line 170
    const/16 v0, 0x1f

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lsec/core/ipc786/module/Bt786;->cmdBt(IILjava/lang/String;)V

    .line 171
    return-void
.end method

.method public static avPause()V
    .locals 3

    .prologue
    .line 182
    const/16 v0, 0x1c

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lsec/core/ipc786/module/Bt786;->cmdBt(IILjava/lang/String;)V

    .line 183
    return-void
.end method

.method public static avPlay()V
    .locals 3

    .prologue
    .line 178
    const/16 v0, 0x1b

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lsec/core/ipc786/module/Bt786;->cmdBt(IILjava/lang/String;)V

    .line 179
    return-void
.end method

.method public static avPlayPause()V
    .locals 3

    .prologue
    .line 174
    const/16 v0, 0x1d

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lsec/core/ipc786/module/Bt786;->cmdBt(IILjava/lang/String;)V

    .line 175
    return-void
.end method

.method public static avPrev()V
    .locals 3

    .prologue
    .line 166
    const/16 v0, 0x1a

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lsec/core/ipc786/module/Bt786;->cmdBt(IILjava/lang/String;)V

    .line 167
    return-void
.end method

.method public static avStop()V
    .locals 3

    .prologue
    .line 186
    const/16 v0, 0x1e

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lsec/core/ipc786/module/Bt786;->cmdBt(IILjava/lang/String;)V

    .line 187
    return-void
.end method

.method public static clearKey(Z)V
    .locals 6
    .param p0, "isLongClick"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 129
    if-eqz p0, :cond_1

    .line 130
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 131
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 135
    .end local v0    # "i":I
    .end local v1    # "len":I
    :goto_1
    return-void

    .line 132
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    :cond_0
    invoke-static {v4, v3, v5}, Lcom/lsec/core/ipc786/module/Bt786;->cmdBt(IILjava/lang/String;)V

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_1
    invoke-static {v4, v3, v5}, Lcom/lsec/core/ipc786/module/Bt786;->cmdBt(IILjava/lang/String;)V

    goto :goto_1
.end method

.method public static connectDevice(Ljava/lang/String;)V
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 206
    const/16 v0, 0x2a

    const/4 v1, -0x2

    invoke-static {v0, v1, p0}, Lcom/lsec/core/ipc786/module/Bt786;->cmdBt(IILjava/lang/String;)V

    .line 207
    return-void
.end method

.method public static connectOBD(Ljava/lang/String;)V
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 202
    const/16 v0, 0x2b

    const/4 v1, -0x2

    invoke-static {v0, v1, p0}, Lcom/lsec/core/ipc786/module/Bt786;->cmdBt(IILjava/lang/String;)V

    .line 203
    return-void
.end method

.method public static cut()V
    .locals 3

    .prologue
    .line 142
    const/16 v0, 0xb

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lsec/core/ipc786/module/Bt786;->cmdBt(IILjava/lang/String;)V

    .line 143
    return-void
.end method

.method public static dial()V
    .locals 3

    .prologue
    .line 150
    const/4 v0, 0x4

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lsec/core/ipc786/module/Bt786;->cmdBt(IILjava/lang/String;)V

    .line 151
    return-void
.end method

.method public static downloadBook()V
    .locals 3

    .prologue
    .line 162
    const/16 v0, 0x25

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lsec/core/ipc786/module/Bt786;->cmdBt(IILjava/lang/String;)V

    .line 163
    return-void
.end method

.method public static hang()V
    .locals 3

    .prologue
    .line 146
    const/4 v0, 0x6

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lsec/core/ipc786/module/Bt786;->cmdBt(IILjava/lang/String;)V

    .line 147
    return-void
.end method

.method public static hfp()V
    .locals 3

    .prologue
    .line 158
    const/16 v0, 0x9

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lsec/core/ipc786/module/Bt786;->cmdBt(IILjava/lang/String;)V

    .line 159
    return-void
.end method

.method public static isAppIdBtAv()Z
    .locals 2

    .prologue
    .line 218
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAppIdBtPhone()Z
    .locals 2

    .prologue
    .line 222
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isConnect()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 369
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    .line 370
    const/4 v0, 0x0

    .line 372
    :cond_0
    return v0
.end method

.method public static isDisConnect()Z
    .locals 2

    .prologue
    .line 303
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Lcom/syu/app/ipc/Ipc_786;->isDisConnect(I)Z

    move-result v0

    return v0
.end method

.method public static isDisConnect(I)Z
    .locals 1
    .param p0, "iState"    # I

    .prologue
    .line 292
    packed-switch p0, :pswitch_data_0

    .line 299
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 296
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isInCall()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 350
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v1, v1, v0

    packed-switch v1, :pswitch_data_0

    .line 357
    const/4 v0, 0x0

    :pswitch_0
    return v0

    .line 350
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isPairing()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 346
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v1, v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRightAppId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 234
    sget v1, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    if-ne v1, v0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->isAppIdBtAv()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->isAppIdBtPhone()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRing()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 365
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v1, v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStateConnect()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 87
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v1, v1, v0

    if-ne v1, v0, :cond_0

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStateDialAble()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 94
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v1, v1, v0

    packed-switch v1, :pswitch_data_0

    .line 100
    :pswitch_0
    const/4 v0, 0x0

    :pswitch_1
    return v0

    .line 94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isStateDisconnect()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 80
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTalk()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 361
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v1, v1, v0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static link()V
    .locals 3

    .prologue
    .line 138
    const/16 v0, 0xa

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lsec/core/ipc786/module/Bt786;->cmdBt(IILjava/lang/String;)V

    .line 139
    return-void
.end method

.method public static queryPairList()V
    .locals 3

    .prologue
    .line 198
    const/16 v0, 0x29

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lsec/core/ipc786/module/Bt786;->cmdBt(IILjava/lang/String;)V

    .line 199
    return-void
.end method

.method public static redial()V
    .locals 3

    .prologue
    .line 154
    const/4 v0, 0x5

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lsec/core/ipc786/module/Bt786;->cmdBt(IILjava/lang/String;)V

    .line 155
    return-void
.end method

.method public static setAutoAnswer(Z)V
    .locals 3
    .param p0, "flag"    # Z

    .prologue
    .line 121
    const/16 v1, 0x21

    if-eqz p0, :cond_0

    const/4 v0, 0x5

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/lsec/core/ipc786/module/Bt786;->cmdBt(IILjava/lang/String;)V

    .line 122
    return-void

    .line 121
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static setDevName(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 108
    const/16 v0, 0x23

    const/4 v1, -0x2

    invoke-static {v0, v1, p0}, Lcom/lsec/core/ipc786/module/Bt786;->cmdBt(IILjava/lang/String;)V

    .line 109
    return-void
.end method

.method public static setDevPin(Ljava/lang/String;)V
    .locals 2
    .param p0, "pin"    # Ljava/lang/String;

    .prologue
    .line 112
    const/16 v0, 0x22

    const/4 v1, -0x2

    invoke-static {v0, v1, p0}, Lcom/lsec/core/ipc786/module/Bt786;->cmdBt(IILjava/lang/String;)V

    .line 113
    return-void
.end method

.method public static setNum(Ljava/lang/String;)V
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 104
    const/4 v0, 0x3

    const/4 v1, -0x2

    invoke-static {p0}, Lcom/syu/app/ipc/Bt_IpcObj;->filterNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/lsec/core/ipc786/module/Bt786;->cmdBt(IILjava/lang/String;)V

    .line 105
    return-void
.end method

.method public static setNumKey(I)V
    .locals 2
    .param p0, "key"    # I

    .prologue
    .line 125
    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/lsec/core/ipc786/module/Bt786;->cmdBt(IILjava/lang/String;)V

    .line 126
    return-void
.end method

.method public static startDiscover()V
    .locals 3

    .prologue
    .line 190
    const/16 v0, 0x27

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lsec/core/ipc786/module/Bt786;->cmdBt(IILjava/lang/String;)V

    .line 191
    return-void
.end method

.method public static stopDiscover()V
    .locals 3

    .prologue
    .line 194
    const/16 v0, 0x28

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lsec/core/ipc786/module/Bt786;->cmdBt(IILjava/lang/String;)V

    .line 195
    return-void
.end method

.method public static test(Ljava/lang/String;)V
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 210
    const/16 v0, 0x2c

    const/4 v1, -0x2

    invoke-static {v0, v1, p0}, Lcom/lsec/core/ipc786/module/Bt786;->cmdBt(IILjava/lang/String;)V

    .line 211
    return-void
.end method

.method public static updateBt(Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 214
    const/16 v0, 0x2c

    const/4 v1, -0x2

    invoke-static {v0, v1, p0}, Lcom/lsec/core/ipc786/module/Bt786;->cmdBt(IILjava/lang/String;)V

    .line 215
    return-void
.end method


# virtual methods
.method public FuncDial()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 460
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 461
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v0, v0, v2

    if-nez v0, :cond_1

    .line 462
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syu/app/ipc/Ipc_786;->test(Ljava/lang/String;)V

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 464
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v0, v0, v2

    if-nez v0, :cond_2

    .line 465
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/syu/app/ipc/Ipc_786;->test(Ljava/lang/String;)V

    goto :goto_0

    .line 467
    :cond_2
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v0, v0, v2

    if-eq v0, v2, :cond_3

    .line 468
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v0, v0, v2

    if-eq v0, v3, :cond_3

    .line 469
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_state_cannot_dial"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 473
    :cond_3
    const-string v0, ""

    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 474
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->dial()V

    goto :goto_0

    .line 475
    :cond_4
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v0, v0, v2

    if-ne v0, v2, :cond_0

    .line 476
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->redial()V

    goto :goto_0
.end method

.method public addNotify_PopBt()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/syu/app/ipc/Ipc_786;->notify_PopBt:Lcom/lsec/core/util/IUiNotify;

    iput-object v0, p0, Lcom/syu/app/ipc/Ipc_786;->notify_Bt_Pop:Lcom/lsec/core/util/IUiNotify;

    .line 73
    return-void
.end method

.method public checkFirstDialOrRing()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 376
    sget v0, Lcom/lsec/core/ipc/module/main/Bt;->sLastPhoneState:I

    invoke-static {v0}, Lcom/syu/app/ipc/Ipc_786;->isDisConnect(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->isDisConnect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    iget-object v0, v0, Lcom/syu/app/ipc/Bt_IpcObj;->mRunnable_ClearContactAndHistory_Disp:Ljava/lang/Runnable;

    invoke-static {v1, v0}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->isDisConnect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    sget v0, Lcom/lsec/core/ipc/module/main/Bt;->sLastPhoneState:I

    invoke-static {v0}, Lcom/syu/app/ipc/Ipc_786;->isDisConnect(I)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/syu/bt/App_Bt;->bHaveScanDB:Z

    if-nez v0, :cond_0

    .line 380
    :cond_2
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    iget-object v0, v0, Lcom/syu/app/ipc/Bt_IpcObj;->mRunnable_scanDB:Ljava/lang/Runnable;

    invoke-static {v1, v0}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public cmdNum(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 266
    sget-object v0, Lcom/syu/app/ipc/Ipc_786;->NumCmd:[I

    aget v0, v0, p1

    invoke-static {v0}, Lcom/syu/app/ipc/Ipc_786;->setNumKey(I)V

    .line 267
    return-void
.end method

.method public initIpc()V
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->mListUiNotify_Main_786:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/syu/app/ipc/Ipc_786;->notify_Main:Lcom/lsec/core/util/IUiNotify;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->mListUiNotify_Bt_786:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/syu/app/ipc/Ipc_786;->notify_Bt:Lcom/lsec/core/util/IUiNotify;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public isCalling()Z
    .locals 2

    .prologue
    .line 318
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/syu/app/ipc/Ipc_786;->isCalling(I)Z

    move-result v0

    return v0
.end method

.method public isCalling(I)Z
    .locals 1
    .param p1, "iState"    # I

    .prologue
    .line 307
    packed-switch p1, :pswitch_data_0

    .line 314
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 311
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isMute()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 322
    sget-object v1, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    aget v1, v1, v0

    if-ne v1, v0, :cond_1

    .line 328
    :cond_0
    :goto_0
    return v0

    .line 325
    :cond_1
    sget-object v1, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    if-eqz v1, :cond_0

    .line 328
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPBAPStateLoad()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 342
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v1, v1, v0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

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

    .line 332
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->isDisConnect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    :cond_0
    :goto_0
    return v0

    .line 335
    :cond_1
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    if-ne v1, v0, :cond_0

    .line 338
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public phoneState()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1f4

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 385
    invoke-virtual {p0}, Lcom/syu/app/ipc/Ipc_786;->checkFirstDialOrRing()V

    .line 386
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 422
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 389
    :pswitch_1
    sget v0, Lcom/lsec/core/ipc/module/main/Bt;->sLastPhoneState:I

    invoke-virtual {p0, v0}, Lcom/syu/app/ipc/Ipc_786;->isCalling(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    invoke-static {v2}, Lcom/syu/app/ipc/Ipc_786;->clearKey(Z)V

    .line 391
    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Lcom/syu/bt/db/Bt_Info;->insertCallLog(Landroid/content/ContentValues;Z)V

    goto :goto_0

    .line 395
    :pswitch_2
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 396
    new-instance v0, Lcom/syu/app/ipc/Ipc_786$4;

    invoke-direct {v0, p0}, Lcom/syu/app/ipc/Ipc_786$4;-><init>(Lcom/syu/app/ipc/Ipc_786;)V

    invoke-static {v1, v0, v4, v5}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    goto :goto_0

    .line 406
    :pswitch_3
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 407
    new-instance v0, Lcom/syu/app/ipc/Ipc_786$5;

    invoke-direct {v0, p0}, Lcom/syu/app/ipc/Ipc_786$5;-><init>(Lcom/syu/app/ipc/Ipc_786;)V

    invoke-static {v1, v0, v4, v5}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    goto :goto_0

    .line 417
    :pswitch_4
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 418
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v1, "type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public phoneState(Lcom/syu/bt/Act_Bt;)V
    .locals 8
    .param p1, "actBt"    # Lcom/syu/bt/Act_Bt;

    .prologue
    const/16 v7, 0x2713

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 425
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v1, v2, v6

    .line 426
    .local v1, "value":I
    sget v2, Lcom/lsec/core/ipc/module/main/Bt;->sLastPhoneState:I

    invoke-virtual {p0, v2}, Lcom/syu/app/ipc/Ipc_786;->isCalling(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, v1}, Lcom/syu/app/ipc/Ipc_786;->isCalling(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 427
    sget v2, Lcom/syu/bt/App_Bt;->sBackFlag:I

    if-eqz v2, :cond_3

    .line 428
    const/4 v0, 0x0

    .line 429
    .local v0, "bMoveTask2Back":Z
    sget v2, Lcom/syu/bt/App_Bt;->sBackFlag:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 430
    const-string v2, "pv"

    const-string v3, " 00 BACK_FLAG_ACTIVITY_BIT"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    const/4 v0, 0x1

    .line 432
    iget-object v2, p1, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v2, v6}, Lcom/lsec/core/frame/app/MyActivity;->moveTaskToBack(Z)Z

    .line 435
    :cond_0
    sget v2, Lcom/syu/bt/App_Bt;->sBackFlag:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 436
    if-nez v0, :cond_1

    .line 437
    iget-object v2, p1, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    sget v3, Lcom/syu/bt/App_Bt;->sPageBak:I

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    .line 439
    :cond_1
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    sget v2, Lcom/syu/bt/App_Bt;->sPageBak:I

    sput v2, Lcom/syu/bt/App_Bt;->sPage:I

    .line 442
    :cond_2
    sput v5, Lcom/syu/bt/App_Bt;->sBackFlag:I

    .line 449
    .end local v0    # "bMoveTask2Back":Z
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/syu/app/ipc/Ipc_786;->isCalling()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 450
    sget v2, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    if-eq v2, v7, :cond_4

    .line 451
    sget v2, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    sput v2, Lcom/syu/bt/App_Bt;->sPageBak:I

    .line 452
    sget v2, Lcom/syu/bt/App_Bt;->sBackFlag:I

    or-int/lit8 v2, v2, 0x1

    sput v2, Lcom/syu/bt/App_Bt;->sBackFlag:I

    .line 455
    :cond_4
    iget-object v2, p1, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    .line 457
    :cond_5
    return-void

    .line 444
    :cond_6
    sget v2, Lcom/lsec/core/ipc/module/main/Bt;->sLastPhoneState:I

    if-eqz v2, :cond_3

    if-nez v1, :cond_3

    .line 446
    invoke-virtual {p1, v5}, Lcom/syu/bt/Act_Bt;->ClearAllContact(Z)V

    goto :goto_0
.end method

.method public recoverAppId()V
    .locals 1

    .prologue
    .line 257
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->isRightAppId()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/syu/app/ipc/Ipc_786;->requestAppIdBtPhone()V

    .line 259
    :cond_0
    return-void
.end method

.method public removeNotify_PopBt()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syu/app/ipc/Ipc_786;->notify_Bt_Pop:Lcom/lsec/core/util/IUiNotify;

    .line 77
    return-void
.end method

.method public requestAppIdBtAv()V
    .locals 1

    .prologue
    .line 230
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/lsec/core/ipc/module/main/Main;->requestAppIdByOnTop(I)V

    .line 231
    return-void
.end method

.method public requestAppIdBtPhone()V
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/lsec/core/ipc/module/main/Main;->requestAppIdByOnTop(I)V

    .line 227
    return-void
.end method

.method public requestAppIdNull()V
    .locals 1

    .prologue
    .line 241
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->isAppIdBtAv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->avStop()V

    .line 244
    :cond_0
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->isRightAppId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/lsec/core/ipc/module/main/Main;->requestAppId(I)V

    .line 246
    :cond_1
    return-void
.end method

.method public updateNotify_BtAv()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 284
    const-string v3, "hfp11"

    const-string v4, " ** 33 updateNotify_BtAv "

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    sget-object v3, Lcom/syu/app/ipc/Ipc_786;->NOTIFYCODE_BtAV:[I

    array-length v4, v3

    :goto_0
    if-lt v2, v4, :cond_0

    .line 289
    return-void

    .line 285
    :cond_0
    aget v1, v3, v2

    .line 286
    .local v1, "updateCode":I
    sget-object v5, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 285
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 286
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 287
    .local v0, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0, v1, v7, v7, v7}, Lcom/syu/bt/InterfaceBt;->onNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateNotify_Dial()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 277
    sget-object v3, Lcom/syu/app/ipc/Ipc_786;->NOTIFYCODE_DIAL:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 281
    return-void

    .line 277
    :cond_0
    aget v1, v3, v2

    .line 278
    .local v1, "updateCode":I
    sget-object v5, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 278
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 279
    .local v0, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0, v1, v7, v7, v7}, Lcom/syu/bt/InterfaceBt;->onNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateNotify_Set()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 270
    sget-object v3, Lcom/syu/app/ipc/Ipc_786;->NOTIFYCODE_SET:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 274
    return-void

    .line 270
    :cond_0
    aget v1, v3, v2

    .line 271
    .local v1, "updateCode":I
    sget-object v5, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 270
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 272
    .local v0, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0, v1, v7, v7, v7}, Lcom/syu/bt/InterfaceBt;->onNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_1
.end method
