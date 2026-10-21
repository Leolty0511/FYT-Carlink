.class public Lcom/lsec/core/ipc/module/main/RadioM;
.super Lcom/syu/ipc/IModuleCallback$Stub;
.source "RadioM.java"

# interfaces
.implements Lcom/lsec/core/ipc/IConnStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;
    }
.end annotation


# static fields
.field public static DATA:[I = null

.field public static FREQ_AM:[I = null

.field public static final FREQ_AM_CNT:I = 0xc

.field public static FREQ_AM_TEXT:[Ljava/lang/String; = null

.field public static FREQ_FM:[I = null

.field public static final FREQ_FM_CNT:I = 0x12

.field public static FREQ_FM_TEXT:[Ljava/lang/String;

.field private static INSTANCE:Lcom/lsec/core/ipc/module/main/RadioM;

.field public static PROXY:Lcom/lsec/core/ipc/ModuleProxy;

.field public static final PTY_Display:[Ljava/lang/String;

.field public static mMaxAm:[I

.field public static mMaxFm:[I

.field public static mMaxFm1:I

.field public static mMaxFm2:I

.field public static mMinAm:[I

.field public static mMinFm:[I

.field public static mMinFm1:I

.field public static mMinFm2:I

.field public static mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

.field public static mStepAm:[I

.field public static mStepFm:[I

.field public static mStepFm1:I

.field public static mStepFm2:I

.field public static mTotalAm:[I

.field public static mTotalFm:[I

.field public static mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

.field public static sFreqMax:I

.field public static sFreqMin:I

.field public static sFreqStepCnt:I

.field public static sFreqStepLen:I

.field public static sPsText:Ljava/lang/String;

.field public static sRdsText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x5

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/lsec/core/ipc/module/main/RadioM;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .line 17
    new-instance v0, Lcom/lsec/core/ipc/module/main/RadioM;

    invoke-direct {v0}, Lcom/lsec/core/ipc/module/main/RadioM;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/main/RadioM;->INSTANCE:Lcom/lsec/core/ipc/module/main/RadioM;

    .line 27
    const-string v0, ""

    sput-object v0, Lcom/lsec/core/ipc/module/main/RadioM;->sPsText:Ljava/lang/String;

    .line 28
    const-string v0, ""

    sput-object v0, Lcom/lsec/core/ipc/module/main/RadioM;->sRdsText:Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/lsec/core/util/UiNotifyEvent;

    invoke-direct {v0}, Lcom/lsec/core/util/UiNotifyEvent;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/main/RadioM;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    .line 32
    new-instance v0, Lcom/lsec/core/ipc/ModuleProxy;

    invoke-direct {v0}, Lcom/lsec/core/ipc/ModuleProxy;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/main/RadioM;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    .line 33
    const/16 v0, 0x64

    new-array v0, v0, [I

    sput-object v0, Lcom/lsec/core/ipc/module/main/RadioM;->DATA:[I

    .line 37
    const/16 v0, 0xc

    new-array v0, v0, [I

    sput-object v0, Lcom/lsec/core/ipc/module/main/RadioM;->FREQ_AM:[I

    .line 38
    const/16 v0, 0x12

    new-array v0, v0, [I

    sput-object v0, Lcom/lsec/core/ipc/module/main/RadioM;->FREQ_FM:[I

    .line 39
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/lsec/core/ipc/module/main/RadioM;->FREQ_AM_TEXT:[Ljava/lang/String;

    .line 40
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/lsec/core/ipc/module/main/RadioM;->FREQ_FM_TEXT:[Ljava/lang/String;

    .line 42
    const/16 v0, 0x1964

    sput v0, Lcom/lsec/core/ipc/module/main/RadioM;->mMinFm1:I

    const/16 v0, 0x1ce8

    sput v0, Lcom/lsec/core/ipc/module/main/RadioM;->mMaxFm1:I

    sput v4, Lcom/lsec/core/ipc/module/main/RadioM;->mStepFm1:I

    .line 43
    const/16 v0, 0x222e

    sput v0, Lcom/lsec/core/ipc/module/main/RadioM;->mMinFm2:I

    const/16 v0, 0x2a30

    sput v0, Lcom/lsec/core/ipc/module/main/RadioM;->mMaxFm2:I

    const/16 v0, 0xa

    sput v0, Lcom/lsec/core/ipc/module/main/RadioM;->mStepFm2:I

    .line 45
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lsec/core/ipc/module/main/RadioM;->mMinAm:[I

    .line 46
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/lsec/core/ipc/module/main/RadioM;->mMaxAm:[I

    .line 47
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/lsec/core/ipc/module/main/RadioM;->mStepAm:[I

    .line 48
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/lsec/core/ipc/module/main/RadioM;->mTotalAm:[I

    .line 49
    new-array v0, v3, [I

    const/16 v1, 0x222e

    aput v1, v0, v5

    const/16 v1, 0x222e

    aput v1, v0, v6

    const/16 v1, 0x222e

    aput v1, v0, v7

    sget v1, Lcom/lsec/core/ipc/module/main/RadioM;->mMinFm1:I

    aput v1, v0, v4

    const/4 v1, 0x4

    const/16 v2, 0x1db0

    aput v2, v0, v1

    sput-object v0, Lcom/lsec/core/ipc/module/main/RadioM;->mMinFm:[I

    .line 50
    new-array v0, v3, [I

    const/16 v1, 0x2a26

    aput v1, v0, v5

    const/16 v1, 0x2a30

    aput v1, v0, v6

    const/16 v1, 0x2a30

    aput v1, v0, v7

    sget v1, Lcom/lsec/core/ipc/module/main/RadioM;->mMaxFm1:I

    aput v1, v0, v4

    const/4 v1, 0x4

    const/16 v2, 0x2328

    aput v2, v0, v1

    sput-object v0, Lcom/lsec/core/ipc/module/main/RadioM;->mMaxFm:[I

    .line 51
    new-array v0, v3, [I

    const/16 v1, 0x14

    aput v1, v0, v5

    aput v3, v0, v6

    aput v3, v0, v7

    sget v1, Lcom/lsec/core/ipc/module/main/RadioM;->mStepFm1:I

    aput v1, v0, v4

    const/4 v1, 0x4

    const/16 v2, 0xa

    aput v2, v0, v1

    sput-object v0, Lcom/lsec/core/ipc/module/main/RadioM;->mStepFm:[I

    .line 52
    new-array v0, v3, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/lsec/core/ipc/module/main/RadioM;->mTotalFm:[I

    .line 54
    const/16 v0, 0x29

    new-array v0, v0, [Ljava/lang/String;

    .line 56
    const-string v1, " NO PTY "

    aput-object v1, v0, v5

    .line 57
    const-string v1, "  News  "

    aput-object v1, v0, v6

    .line 58
    const-string v1, "Affairs "

    aput-object v1, v0, v7

    .line 59
    const-string v1, "  Info  "

    aput-object v1, v0, v4

    const/4 v1, 0x4

    .line 60
    const-string v2, " Sport  "

    aput-object v2, v0, v1

    .line 61
    const-string v1, "Educate "

    aput-object v1, v0, v3

    const/4 v1, 0x6

    .line 62
    const-string v2, " Drama  "

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 63
    const-string v2, "Culture "

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 64
    const-string v2, "Science "

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 65
    const-string v2, " Varied "

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 66
    const-string v2, " Pop M  "

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 67
    const-string v2, " Rock M "

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 68
    const-string v2, " Easy M "

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 69
    const-string v2, "Light M "

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 70
    const-string v2, "Classics"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 71
    const-string v2, "Other M "

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 72
    const-string v2, "Weather "

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 73
    const-string v2, "Finance "

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 74
    const-string v2, "Children"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 75
    const-string v2, " Social "

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 76
    const-string v2, "Religion"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 77
    const-string v2, "Phone In"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 78
    const-string v2, " Travel "

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 79
    const-string v2, "Leisure "

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 80
    const-string v2, "  Jazz  "

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 81
    const-string v2, "Country "

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 82
    const-string v2, "Nation M"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 83
    const-string v2, " Oldies "

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 84
    const-string v2, " Folk M "

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 85
    const-string v2, "Document"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 86
    const-string v2, "  Test  "

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 87
    const-string v2, " Alarm  "

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 88
    const-string v2, "PTY Seek"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 89
    const-string v2, "        "

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 90
    const-string v2, " TA ON  "

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 91
    const-string v2, " TA OFF "

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 92
    const-string v2, " TA SEEK"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 93
    const-string v2, " AF ON  "

    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 94
    const-string v2, " AF OFF "

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 95
    const-string v2, " AF SEEK"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 96
    const-string v2, "PTY SEEK"

    aput-object v2, v0, v1

    .line 54
    sput-object v0, Lcom/lsec/core/ipc/module/main/RadioM;->PTY_Display:[Ljava/lang/String;

    .line 97
    return-void

    .line 45
    nop

    :array_0
    .array-data 4
        0x212
        0x208
        0x20a
        0x20a
        0x20a
    .end array-data

    .line 46
    :array_1
    .array-data 4
        0x6b8
        0x654
        0x654
        0x654
        0x65d
    .end array-data

    .line 47
    :array_2
    .array-data 4
        0xa
        0xa
        0x9
        0x9
        0x9
    .end array-data

    .line 48
    :array_3
    .array-data 4
        0x77
        0x6e
        0x7a
        0x7a
        0x7b
    .end array-data

    .line 52
    :array_4
    .array-data 4
        0x66
        0x19a
        0x19a
        0x12c
        0x8c
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/syu/ipc/IModuleCallback$Stub;-><init>()V

    .line 25
    return-void
.end method

.method public static channelFreq(I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    const/high16 v5, 0x10000

    .line 134
    const/4 v4, 0x2

    invoke-static {p1, v4}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    const/4 v4, 0x0

    aget v0, p1, v4

    .local v0, "channel":I
    const/4 v4, 0x1

    aget v1, p1, v4

    .line 138
    .local v1, "freq":I
    if-lt v0, v5, :cond_2

    const/high16 v4, 0x20000

    if-gt v0, v4, :cond_2

    .line 139
    sub-int v3, v0, v5

    .line 140
    .local v3, "indexFm":I
    const/16 v4, 0x12

    if-ge v3, v4, :cond_0

    sget-object v4, Lcom/lsec/core/ipc/module/main/RadioM;->FREQ_FM:[I

    aget v4, v4, v3

    if-eq v4, v1, :cond_0

    .line 141
    sget-object v4, Lcom/lsec/core/ipc/module/main/RadioM;->FREQ_FM:[I

    aput v1, v4, v3

    .line 142
    sget-object v4, Lcom/lsec/core/ipc/module/main/RadioM;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v4, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 144
    .end local v3    # "indexFm":I
    :cond_2
    if-ltz v0, :cond_0

    if-gt v0, v5, :cond_0

    .line 145
    add-int/lit8 v2, v0, 0x0

    .line 146
    .local v2, "indexAm":I
    const/16 v4, 0xc

    if-ge v2, v4, :cond_0

    sget-object v4, Lcom/lsec/core/ipc/module/main/RadioM;->FREQ_AM:[I

    aget v4, v4, v2

    if-eq v4, v1, :cond_0

    .line 147
    sget-object v4, Lcom/lsec/core/ipc/module/main/RadioM;->FREQ_AM:[I

    aput v1, v4, v2

    .line 148
    sget-object v4, Lcom/lsec/core/ipc/module/main/RadioM;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v4, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static channelText(I[I[F[Ljava/lang/String;)V
    .locals 8
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x10000

    .line 154
    invoke-static {p1, v7}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-static {p3, v7}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 160
    aget v0, p1, v6

    .line 161
    .local v0, "channel":I
    aget-object v3, p3, v6

    .line 162
    .local v3, "strChannel":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 165
    if-lt v0, v5, :cond_2

    const/high16 v4, 0x20000

    if-gt v0, v4, :cond_2

    .line 166
    sub-int v2, v0, v5

    .line 167
    .local v2, "indexFm":I
    const/16 v4, 0x12

    if-ge v2, v4, :cond_0

    sget-object v4, Lcom/lsec/core/ipc/module/main/RadioM;->FREQ_FM_TEXT:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 168
    sget-object v4, Lcom/lsec/core/ipc/module/main/RadioM;->FREQ_FM_TEXT:[Ljava/lang/String;

    aput-object v3, v4, v2

    .line 169
    sget-object v4, Lcom/lsec/core/ipc/module/main/RadioM;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v4, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 171
    .end local v2    # "indexFm":I
    :cond_2
    if-ltz v0, :cond_0

    if-gt v0, v5, :cond_0

    .line 172
    add-int/lit8 v1, v0, 0x0

    .line 173
    .local v1, "indexAm":I
    const/16 v4, 0xc

    if-ge v1, v4, :cond_0

    sget-object v4, Lcom/lsec/core/ipc/module/main/RadioM;->FREQ_AM_TEXT:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 174
    sget-object v4, Lcom/lsec/core/ipc/module/main/RadioM;->FREQ_AM_TEXT:[Ljava/lang/String;

    aput-object v3, v4, v1

    .line 175
    sget-object v4, Lcom/lsec/core/ipc/module/main/RadioM;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v4, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static extraFreqInfo(I[I[F[Ljava/lang/String;)V
    .locals 1
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    .line 123
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x0

    aget v0, p1, v0

    sput v0, Lcom/lsec/core/ipc/module/main/RadioM;->sFreqMin:I

    .line 127
    const/4 v0, 0x1

    aget v0, p1, v0

    sput v0, Lcom/lsec/core/ipc/module/main/RadioM;->sFreqMax:I

    .line 128
    const/4 v0, 0x2

    aget v0, p1, v0

    sput v0, Lcom/lsec/core/ipc/module/main/RadioM;->sFreqStepLen:I

    .line 129
    const/4 v0, 0x3

    aget v0, p1, v0

    sput v0, Lcom/lsec/core/ipc/module/main/RadioM;->sFreqStepCnt:I

    .line 130
    sget-object v0, Lcom/lsec/core/ipc/module/main/RadioM;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/lsec/core/ipc/module/main/RadioM;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/lsec/core/ipc/module/main/RadioM;->INSTANCE:Lcom/lsec/core/ipc/module/main/RadioM;

    return-object v0
.end method

.method public static psText(I[I[F[Ljava/lang/String;)V
    .locals 1
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    .line 109
    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x0

    aget-object v0, p3, v0

    sput-object v0, Lcom/lsec/core/ipc/module/main/RadioM;->sPsText:Ljava/lang/String;

    .line 111
    sget-object v0, Lcom/lsec/core/ipc/module/main/RadioM;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 113
    :cond_0
    return-void
.end method

.method public static rdsText(I[I[F[Ljava/lang/String;)V
    .locals 1
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    .line 116
    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x0

    aget-object v0, p3, v0

    sput-object v0, Lcom/lsec/core/ipc/module/main/RadioM;->sRdsText:Ljava/lang/String;

    .line 118
    sget-object v0, Lcom/lsec/core/ipc/module/main/RadioM;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 120
    :cond_0
    return-void
.end method

.method public static updateNotify(I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 100
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/lsec/core/ipc/module/main/RadioM;->DATA:[I

    aget v0, v0, p0

    aget v1, p1, v2

    if-eq v0, v1, :cond_0

    .line 102
    sget-object v0, Lcom/lsec/core/ipc/module/main/RadioM;->DATA:[I

    aget v1, p1, v2

    aput v1, v0, p0

    .line 103
    sget-object v0, Lcom/lsec/core/ipc/module/main/RadioM;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method


# virtual methods
.method public onConnected(Lcom/syu/ipc/IRemoteToolkit;)V
    .locals 6
    .param p1, "toolkit"    # Lcom/syu/ipc/IRemoteToolkit;

    .prologue
    const/4 v5, 0x1

    .line 188
    :try_start_0
    sget-object v3, Lcom/lsec/core/ipc/module/main/RadioM;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v4, 0x1

    invoke-interface {p1, v4}, Lcom/syu/ipc/IRemoteToolkit;->getRemoteModule(I)Lcom/syu/ipc/IRemoteModule;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lsec/core/ipc/ModuleProxy;->setRemoteModule(Lcom/syu/ipc/IRemoteModule;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    invoke-static {}, Lcom/lsec/core/ipc/module/main/RadioM;->getInstance()Lcom/lsec/core/ipc/module/main/RadioM;

    move-result-object v0

    .line 194
    .local v0, "callback":Lcom/lsec/core/ipc/module/main/RadioM;
    sget-object v3, Lcom/lsec/core/ipc/module/main/RadioM;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    if-eqz v3, :cond_1

    .line 195
    sget-object v3, Lcom/lsec/core/ipc/module/main/RadioM;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    invoke-interface {v3, v0}, Lcom/lsec/core/ipc/IRegisterModuleCallBack;->register(Lcom/syu/ipc/IModuleCallback;)V

    .line 200
    :cond_0
    return-void

    .line 189
    .end local v0    # "callback":Lcom/lsec/core/ipc/module/main/RadioM;
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 197
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "callback":Lcom/lsec/core/ipc/module/main/RadioM;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    .line 198
    sget-object v3, Lcom/lsec/core/ipc/module/main/RadioM;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    invoke-virtual {v3, v0, v2, v5}, Lcom/lsec/core/ipc/ModuleProxy;->register(Lcom/syu/ipc/IModuleCallback;II)V

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public onDisconnected()V
    .locals 2

    .prologue
    .line 204
    sget-object v0, Lcom/lsec/core/ipc/module/main/RadioM;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lsec/core/ipc/ModuleProxy;->setRemoteModule(Lcom/syu/ipc/IRemoteModule;)V

    .line 205
    return-void
.end method

.method public setRegisterModuleCallBack(Lcom/lsec/core/ipc/IRegisterModuleCallBack;)V
    .locals 0
    .param p1, "registerModuleCallBack"    # Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .prologue
    .line 271
    sput-object p1, Lcom/lsec/core/ipc/module/main/RadioM;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .line 272
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
    .line 182
    const/4 v6, 0x0

    new-instance v0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;-><init>(Lcom/lsec/core/ipc/module/main/RadioM;I[I[F[Ljava/lang/String;)V

    invoke-static {v6, v0}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 183
    return-void
.end method
