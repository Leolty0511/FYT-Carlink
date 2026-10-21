.class public final Lcom/google/android/projection/proto/Common;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/Common$HeadUnitInfo;,
        Lcom/google/android/projection/proto/Common$HeadUnitInfoOrBuilder;,
        Lcom/google/android/projection/proto/Common$PhoneInfo;,
        Lcom/google/android/projection/proto/Common$PhoneInfoOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_common_HeadUnitInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_common_HeadUnitInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_common_PhoneInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_common_PhoneInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    const-string v0, "\n\u000ccommon.proto\u0012\u0006common\"r\n\tPhoneInfo\u0012\u0013\n\u000binstance_id\u0018\u0001 \u0001(\t\u0012 \n\u0018connectivity_lifetime_id\u0018\u0002 \u0001(\t\u0012\u0013\n\u000bdevice_name\u0018\u0003 \u0001(\t\u0012\u0019\n\u0011bluetooth_address\u0018\u0004 \u0001(\t\"\u00c4\u0001\n\u000cHeadUnitInfo\u0012\u000c\n\u0004make\u0018\u0001 \u0001(\t\u0012\r\n\u0005model\u0018\u0002 \u0001(\t\u0012\u000c\n\u0004year\u0018\u0003 \u0001(\t\u0012\u0012\n\nvehicle_id\u0018\u0004 \u0001(\t\u0012\u0016\n\u000ehead_unit_make\u0018\u0005 \u0001(\t\u0012\u0017\n\u000fhead_unit_model\u0018\u0006 \u0001(\t\u0012 \n\u0018head_unit_software_build\u0018\u0007 \u0001(\t\u0012\"\n\u001ahead_unit_software_version\u0018\u0008 \u0001(\tB/\n#com.google.android.projection.protoB\u0006CommonH\u0003"

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
    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 9
    .line 10
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/google/android/projection/proto/Common;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/Common;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 29
    .line 30
    sput-object v0, Lcom/google/android/projection/proto/Common;->internal_static_common_PhoneInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 31
    .line 32
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 33
    .line 34
    const-string v2, "DeviceName"

    .line 35
    .line 36
    const-string v3, "BluetoothAddress"

    .line 37
    .line 38
    const-string v4, "InstanceId"

    .line 39
    .line 40
    const-string v5, "ConnectivityLifetimeId"

    .line 41
    .line 42
    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sput-object v1, Lcom/google/android/projection/proto/Common;->internal_static_common_PhoneInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 50
    .line 51
    invoke-static {}, Lcom/google/android/projection/proto/Common;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const/4 v1, 0x1

    .line 60
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 65
    .line 66
    sput-object v0, Lcom/google/android/projection/proto/Common;->internal_static_common_HeadUnitInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 67
    .line 68
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 69
    .line 70
    const-string v2, "Make"

    .line 71
    .line 72
    const-string v3, "Model"

    .line 73
    .line 74
    const-string v4, "Year"

    .line 75
    .line 76
    const-string v5, "VehicleId"

    .line 77
    .line 78
    const-string v6, "HeadUnitMake"

    .line 79
    .line 80
    const-string v7, "HeadUnitModel"

    .line 81
    .line 82
    const-string v8, "HeadUnitSoftwareBuild"

    .line 83
    .line 84
    const-string v9, "HeadUnitSoftwareVersion"

    .line 85
    .line 86
    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    sput-object v1, Lcom/google/android/projection/proto/Common;->internal_static_common_HeadUnitInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 94
    .line 95
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Common;->internal_static_common_PhoneInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Common;->internal_static_common_PhoneInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$1300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Common;->internal_static_common_HeadUnitInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic access$1400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Common;->internal_static_common_HeadUnitInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Common;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/google/android/projection/proto/Common;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0

    .line 1
    return-void
.end method
