.class public final Lcom/google/android/projection/proto/WifiProjectionProtocol;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/WifiProjectionProtocol$MessageDirection;,
        Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;,
        Lcom/google/android/projection/proto/WifiProjectionProtocol$TransportType;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "\n\u001ewifi_projection_protocol.proto\u0012\u0018wifi_projection_protocol*m\n\rTransportType\u0012\u001a\n\u0016TRANSPORT_TYPE_UNKNOWN\u0010\u0000\u0012#\n\u001fTRANSPORT_TYPE_BLUETOOTH_RFCOMM\u0010\u0001\u0012\u001b\n\u0017TRANSPORT_TYPE_WIFI_TCP\u0010\u0002*\u00bb\u0002\n\u0015ProjectionStartResult\u0012#\n\u001fPROJECTION_START_RESULT_UNKNOWN\u0010\u0000\u00122\n*PROJECTION_START_RESULT_START_REQUEST_SENT\u0010\u0001\u001a\u0002\u0008\u0001\u0012,\n(PROJECTION_START_RESULT_DEVICE_NOT_READY\u0010\u0002\u00123\n/PROJECTION_START_RESULT_START_RESPONSE_RECEIVED\u0010\u0003\u00120\n,PROJECTION_START_RESULT_START_REQUEST_FAILED\u0010\u0004\u00124\n0PROJECTION_START_RESULT_ALREADY_ATTEMPTING_START\u0010\u0005*\u0083\u0001\n\u0010MessageDirection\u0012\u001d\n\u0019MESSAGE_DIRECTION_UNKNOWN\u0010\u0000\u0012&\n\"MESSAGE_DIRECTION_TO_REMOTE_DEVICE\u0010\u0001\u0012(\n$MESSAGE_DIRECTION_FROM_REMOTE_DEVICE\u0010\u0002B?\n#com.google.android.projection.protoB\u0016WifiProjectionProtocolH\u0003"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/google/android/projection/proto/WifiProjectionProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 15
    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/WifiProjectionProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/google/android/projection/proto/WifiProjectionProtocol;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0

    .line 1
    return-void
.end method
