.class public Lcom/lsec/core/ipc/module/main/Bt;
.super Lcom/syu/ipc/IModuleCallback$Stub;
.source "Bt.java"

# interfaces
.implements Lcom/lsec/core/ipc/IConnStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;
    }
.end annotation


# static fields
.field public static DATA:[I

.field private static INSTANCE:Lcom/lsec/core/ipc/module/main/Bt;

.field public static PROXY:Lcom/lsec/core/ipc/ModuleProxy;

.field public static mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

.field public static mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

.field public static sChoiceAddr:Ljava/lang/String;

.field public static sDevAddr:Ljava/lang/String;

.field public static sDevName:Ljava/lang/String;

.field public static sDevPin:Ljava/lang/String;

.field public static sID3Album:Ljava/lang/String;

.field public static sId3Artist:Ljava/lang/String;

.field public static sId3Title:Ljava/lang/String;

.field public static sLastPhoneState:I

.field public static sPhoneAddr:Ljava/lang/String;

.field public static sPhoneName:Ljava/lang/String;

.field public static sPhoneNumber:Ljava/lang/String;

.field public static sPhoneNumberHoldOn:Ljava/lang/String;

.field public static values:Landroid/content/ContentValues;

.field public static values3rd:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .line 18
    new-instance v0, Lcom/lsec/core/ipc/module/main/Bt;

    invoke-direct {v0}, Lcom/lsec/core/ipc/module/main/Bt;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->INSTANCE:Lcom/lsec/core/ipc/module/main/Bt;

    .line 27
    new-instance v0, Lcom/lsec/core/util/UiNotifyEvent;

    invoke-direct {v0}, Lcom/lsec/core/util/UiNotifyEvent;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    .line 28
    new-instance v0, Lcom/lsec/core/ipc/ModuleProxy;

    invoke-direct {v0}, Lcom/lsec/core/ipc/ModuleProxy;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    .line 29
    const/16 v0, 0x64

    new-array v0, v0, [I

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    .line 31
    const-string v0, ""

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumberHoldOn:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sDevName:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneName:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sDevPin:Ljava/lang/String;

    .line 32
    const-string v0, ""

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sChoiceAddr:Ljava/lang/String;

    .line 35
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    .line 36
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->values3rd:Landroid/content/ContentValues;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/syu/ipc/IModuleCallback$Stub;-><init>()V

    .line 21
    return-void
.end method

.method public static devName(I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 84
    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    aget-object v0, p3, v2

    if-nez v0, :cond_1

    .line 86
    const-string v0, ""

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sDevName:Ljava/lang/String;

    .line 87
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    aget-object v0, p3, v2

    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->sDevName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    aget-object v0, p3, v2

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sDevName:Ljava/lang/String;

    .line 90
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sDevName:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sDevName:Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sDevName:Ljava/lang/String;

    const-string v1, "\r"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sDevName:Ljava/lang/String;

    .line 92
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static devPin(I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 98
    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    aget-object v0, p3, v2

    if-nez v0, :cond_1

    .line 100
    const-string v0, ""

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sDevPin:Ljava/lang/String;

    .line 101
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    aget-object v0, p3, v2

    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->sDevPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    aget-object v0, p3, v2

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sDevPin:Ljava/lang/String;

    .line 104
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/lsec/core/ipc/module/main/Bt;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->INSTANCE:Lcom/lsec/core/ipc/module/main/Bt;

    return-object v0
.end method

.method public static id3Album(I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 159
    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    aget-object v0, p3, v2

    if-nez v0, :cond_1

    .line 161
    const-string v0, ""

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sID3Album:Ljava/lang/String;

    .line 162
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    aget-object v0, p3, v2

    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->sID3Album:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    aget-object v0, p3, v2

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sID3Album:Ljava/lang/String;

    .line 165
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static id3Artist(I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 147
    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    aget-object v0, p3, v2

    if-nez v0, :cond_1

    .line 149
    const-string v0, ""

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sId3Artist:Ljava/lang/String;

    .line 150
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    aget-object v0, p3, v2

    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->sId3Artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    aget-object v0, p3, v2

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sId3Artist:Ljava/lang/String;

    .line 153
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static id3Title(I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 135
    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    aget-object v0, p3, v2

    if-nez v0, :cond_1

    .line 137
    const-string v0, ""

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sId3Title:Ljava/lang/String;

    .line 138
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    aget-object v0, p3, v2

    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->sId3Title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    aget-object v0, p3, v2

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sId3Title:Ljava/lang/String;

    .line 141
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static localAddr(I[I[F[Ljava/lang/String;)V
    .locals 2
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 122
    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    aget-object v0, p3, v1

    if-nez v0, :cond_1

    .line 124
    const-string v0, ""

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    .line 125
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    aget-object v0, p3, v1

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    .line 129
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static phoneAddr(I[I[F[Ljava/lang/String;)V
    .locals 2
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 110
    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    aget-object v0, p3, v1

    if-nez v0, :cond_1

    .line 112
    const-string v0, ""

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    .line 113
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    aget-object v0, p3, v1

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    .line 116
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static phoneName(I[I[F[Ljava/lang/String;)V
    .locals 2
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 72
    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    aget-object v0, p3, v1

    if-nez v0, :cond_0

    .line 74
    const-string v0, ""

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneName:Ljava/lang/String;

    .line 75
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 77
    :cond_0
    aget-object v0, p3, v1

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneName:Ljava/lang/String;

    .line 78
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 81
    :cond_1
    return-void
.end method

.method public static phoneNumber(I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 48
    invoke-static {p3, v2}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x2

    invoke-static {p3, v0}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    aget-object v0, p3, v1

    if-nez v0, :cond_1

    .line 51
    const-string v0, ""

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumberHoldOn:Ljava/lang/String;

    .line 55
    :goto_0
    aget-object v0, p3, v2

    if-nez v0, :cond_2

    .line 56
    const-string v0, ""

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    .line 67
    :goto_1
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void

    .line 53
    :cond_1
    aget-object v0, p3, v1

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumberHoldOn:Ljava/lang/String;

    goto :goto_0

    .line 58
    :cond_2
    aget-object v0, p3, v2

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    goto :goto_1

    .line 60
    :cond_3
    const-string v0, ""

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumberHoldOn:Ljava/lang/String;

    .line 61
    aget-object v0, p3, v1

    if-nez v0, :cond_4

    .line 62
    const-string v0, ""

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    goto :goto_1

    .line 64
    :cond_4
    aget-object v0, p3, v1

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    goto :goto_1
.end method

.method public static updateNotify(I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 39
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v0, v0, p0

    aget v1, p1, v2

    if-eq v0, v1, :cond_0

    .line 41
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v1, p1, v2

    aput v1, v0, p0

    .line 42
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public onConnected(Lcom/syu/ipc/IRemoteToolkit;)V
    .locals 5
    .param p1, "toolkit"    # Lcom/syu/ipc/IRemoteToolkit;

    .prologue
    .line 178
    :try_start_0
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Lcom/syu/ipc/IRemoteToolkit;->getRemoteModule(I)Lcom/syu/ipc/IRemoteModule;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lsec/core/ipc/ModuleProxy;->setRemoteModule(Lcom/syu/ipc/IRemoteModule;)V

    .line 180
    invoke-static {}, Lcom/lsec/core/ipc/module/main/Bt;->getInstance()Lcom/lsec/core/ipc/module/main/Bt;

    move-result-object v0

    .line 181
    .local v0, "callback":Lcom/syu/ipc/IModuleCallback;
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    if-eqz v3, :cond_1

    .line 182
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    invoke-interface {v3, v0}, Lcom/lsec/core/ipc/IRegisterModuleCallBack;->register(Lcom/syu/ipc/IModuleCallback;)V

    .line 190
    .end local v0    # "callback":Lcom/syu/ipc/IModuleCallback;
    :cond_0
    :goto_0
    return-void

    .line 184
    .restart local v0    # "callback":Lcom/syu/ipc/IModuleCallback;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    .line 185
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v2, v4}, Lcom/lsec/core/ipc/ModuleProxy;->register(Lcom/syu/ipc/IModuleCallback;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 187
    .end local v0    # "callback":Lcom/syu/ipc/IModuleCallback;
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDisconnected()V
    .locals 2

    .prologue
    .line 194
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lsec/core/ipc/ModuleProxy;->setRemoteModule(Lcom/syu/ipc/IRemoteModule;)V

    .line 195
    return-void
.end method

.method public setRegisterModuleCallBack(Lcom/lsec/core/ipc/IRegisterModuleCallBack;)V
    .locals 0
    .param p1, "registerModuleCallBack"    # Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .prologue
    .line 276
    sput-object p1, Lcom/lsec/core/ipc/module/main/Bt;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .line 277
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
    .line 172
    const/4 v6, 0x0

    new-instance v0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;-><init>(Lcom/lsec/core/ipc/module/main/Bt;I[I[F[Ljava/lang/String;)V

    invoke-static {v6, v0}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 173
    return-void
.end method
