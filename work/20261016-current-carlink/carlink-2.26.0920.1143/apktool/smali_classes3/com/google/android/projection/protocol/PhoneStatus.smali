.class public Lcom/google/android/projection/protocol/PhoneStatus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/protocol/CarServiceProvider;
.implements Lcom/google/android/projection/protocol/PhoneStatusCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/protocol/PhoneStatus$PhoneStatusListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "AHU.PHONE_STATUS"


# instance fields
.field private final mListener:Lcom/google/android/projection/protocol/PhoneStatus$PhoneStatusListener;

.field private mNativePhoneStatus:J
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/projection/protocol/PhoneStatus$PhoneStatusListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/projection/protocol/PhoneStatus;->mListener:Lcom/google/android/projection/protocol/PhoneStatus$PhoneStatusListener;

    .line 5
    .line 6
    return-void
.end method

.method private native nativeInit(IJ)I
.end method

.method private native nativeReportAction(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method private native nativeShutdown()V
.end method


# virtual methods
.method public create(IJ)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/projection/protocol/PhoneStatus;->nativeInit(IJ)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public destroy()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/protocol/PhoneStatus;->nativeShutdown()V

    return-void
.end method

.method public getNativeInstance()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/projection/protocol/PhoneStatus;->mNativePhoneStatus:J

    return-wide v0
.end method

.method public input(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/projection/protocol/PhoneStatus;->nativeReportAction(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public phoneStatusCallback([B)I
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$PhoneStatus;->parseFrom([B)Lcom/google/android/projection/proto/Protos$PhoneStatus;

    .line 2
    .line 3
    .line 4
    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    iget-object v0, p0, Lcom/google/android/projection/protocol/PhoneStatus;->mListener:Lcom/google/android/projection/protocol/PhoneStatus$PhoneStatusListener;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$PhoneStatus;->getCallsList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    new-array v2, v2, [Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;

    .line 13
    .line 14
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, [Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$PhoneStatus;->getSignalStrength()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-interface {v0, v1, p1}, Lcom/google/android/projection/protocol/PhoneStatus$PhoneStatusListener;->onPhoneStatus([Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;I)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lcom/google/android/projection/proto/Protos$MessageStatus;->STATUS_SUCCESS:Lcom/google/android/projection/proto/Protos$MessageStatus;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MessageStatus;->getNumber()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1

    .line 34
    :catch_0
    move-exception p1

    .line 35
    const-string v0, "AHU.PHONE_STATUS"

    .line 36
    .line 37
    const-string v1, "Error parsing protocol buffer in callback"

    .line 38
    .line 39
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    .line 41
    .line 42
    sget-object p1, Lcom/google/android/projection/proto/Protos$MessageStatus;->STATUS_INVALID_INPUT:Lcom/google/android/projection/proto/Protos$MessageStatus;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MessageStatus;->getNumber()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    return p1
.end method
