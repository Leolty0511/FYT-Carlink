.class public final Lcom/syu/bt/data/FinalServerBt$Option;
.super Ljava/lang/Object;
.source "FinalServerBt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/data/FinalServerBt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Option"
.end annotation


# static fields
.field public static final A2DP_STATUS:I = 0x3e

.field public static final ANSWERING_DEVICE:I = 0x41

.field public static final AUTO_RECONNECTION:I = 0x44

.field static final BASE:I = 0x2a

.field public static final BLE_STEER_DEV_STATE:I = 0x3a

.field public static final BLUETOOTH_CODING:I = 0x2f

.field public static final BTAV_ABLUME_IMG:I = 0x33

.field public static final CALLING_PIP_ENABLE:I = 0x37

.field public static final CALL_NUMBER:I = 0x3c

.field public static final C_BT_NUMBER_NAME:I = 0x35

.field public static final C_BT_RECORD_5LIST:I = 0x34

.field public static final HFP_STATUS:I = 0x3d

.field public static final MUTE_MIC:I = 0x2a

.field public static final ODB_DEV_CONNECTSTATE:I = 0x30

.field public static final PBAP_ERROR:I = 0x43

.field public static final PHONE_BATTERY:I = 0x2c

.field public static final PHONE_MESSAGE:I = 0x32

.field public static final PHONE_MESSAGE_HANDLE:I = 0x31

.field public static final PHONE_OPERATOR:I = 0x2e

.field public static final PHONE_SIGNAL:I = 0x2d

.field public static final PHONE_VOICE:I = 0x2b

.field public static final PIN_CODE_PAIR_REQUEST:I = 0x45

.field public static final STOP_DOWNLOAD_BOOK:I = 0x38

.field public static final SUPPORT_MULTI:I = 0x40

.field public static final SWAP_DEVICES_INDEX:I = 0x42

.field public static final TERMINAL_CMD:I = 0x39

.field public static final TRANSFER:I = 0x3b

.field public static final WAITING_NUMBER:I = 0x3f


# instance fields
.field final synthetic this$0:Lcom/syu/bt/data/FinalServerBt;


# direct methods
.method public constructor <init>(Lcom/syu/bt/data/FinalServerBt;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/syu/bt/data/FinalServerBt$Option;->this$0:Lcom/syu/bt/data/FinalServerBt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
