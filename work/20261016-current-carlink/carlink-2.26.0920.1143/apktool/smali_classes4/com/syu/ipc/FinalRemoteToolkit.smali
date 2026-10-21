.class public Lcom/syu/ipc/FinalRemoteToolkit;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/ipc/FinalRemoteToolkit$Index;,
        Lcom/syu/ipc/FinalRemoteToolkit$Face;
    }
.end annotation


# static fields
.field public static final DISABLE:I = 0x0

.field public static final ENABLE:I = 0x1

.field public static final MODULE_CODE_ADAS:I = 0x14

.field public static final MODULE_CODE_AMP:I = 0xf

.field public static final MODULE_CODE_BT:I = 0x2

.field public static final MODULE_CODE_CANBUS:I = 0x7

.field public static final MODULE_CODE_CAN_UP:I = 0xe

.field public static final MODULE_CODE_CUSTOMER:I = 0xb

.field public static final MODULE_CODE_DVD:I = 0x3

.field public static final MODULE_CODE_DVR:I = 0x9

.field public static final MODULE_CODE_EMITTER:I = 0x10

.field public static final MODULE_CODE_GESTRUE:I = 0x12

.field public static final MODULE_CODE_GSENSOR:I = 0x11

.field public static final MODULE_CODE_IPOD:I = 0x5

.field public static final MODULE_CODE_MAIN:I = 0x0

.field public static final MODULE_CODE_OBD:I = 0xc

.field public static final MODULE_CODE_RADIO:I = 0x1

.field public static final MODULE_CODE_SENSOR:I = 0x13

.field public static final MODULE_CODE_SOUND:I = 0x4

.field public static final MODULE_CODE_STEER:I = 0xa

.field public static final MODULE_CODE_TEST:I = 0xd

.field public static final MODULE_CODE_TPMS:I = 0x8

.field public static final MODULE_CODE_TV:I = 0x6

.field public static final OFF:I = 0x0

.field public static final ON:I = 0x1

.field public static final SWITCH:I = 0x2

.field public static final TAG_ADAS:Ljava/lang/String; = "Adas-TRAN"

.field public static final TAG_BT:Ljava/lang/String; = "Bt-TRAN"

.field public static final TAG_CANBUS:Ljava/lang/String; = "Canbus-TRAN"

.field public static final TAG_CANUP:Ljava/lang/String; = "CanUp-TRAN"

.field public static final TAG_DVD:Ljava/lang/String; = "Dvd-TRAN"

.field public static final TAG_MAIN:Ljava/lang/String; = "Main-TRAN"

.field public static final TAG_RADIO:Ljava/lang/String; = "Radio-TRAN"

.field public static final TAG_SENSOR:Ljava/lang/String; = "Sensor-TRAN"

.field public static final TAG_SOUND:Ljava/lang/String; = "Sound-TRAN"

.field public static final TAG_STEER:Ljava/lang/String; = "Steer-TRAN"

.field public static final TAG_TPMS:Ljava/lang/String; = "Tpms-TRAN"

.field public static final TAG_TRAN:Ljava/lang/String; = "-TRAN"

.field public static final TAG_TV:Ljava/lang/String; = "Tv-TRAN"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
