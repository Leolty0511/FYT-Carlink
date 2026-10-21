.class public final Lcom/google/android/projection/proto/Protos$Service;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$ServiceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Service"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/Protos$Service$Builder;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_SERVICE_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$Service;

.field public static final GENERIC_NOTIFICATION_SERVICE_FIELD_NUMBER:I = 0xd

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final INPUT_SOURCE_SERVICE_FIELD_NUMBER:I = 0x4

.field public static final MEDIA_BROWSER_SERVICE_FIELD_NUMBER:I = 0xb

.field public static final MEDIA_PLAYBACK_SERVICE_FIELD_NUMBER:I = 0x9

.field public static final MEDIA_SINK_SERVICE_FIELD_NUMBER:I = 0x3

.field public static final MEDIA_SOURCE_SERVICE_FIELD_NUMBER:I = 0x5

.field public static final NAVIGATION_STATUS_SERVICE_FIELD_NUMBER:I = 0x8

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$Service;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PHONE_STATUS_SERVICE_FIELD_NUMBER:I = 0xa

.field public static final RADIO_SERVICE_FIELD_NUMBER:I = 0x7

.field public static final SENSOR_SOURCE_SERVICE_FIELD_NUMBER:I = 0x2

.field public static final VENDOR_EXTENSION_SERVICE_FIELD_NUMBER:I = 0xc

.field public static final WIFI_PROJECTION_SERVICE_FIELD_NUMBER:I = 0xe

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private bluetoothService_:Lcom/google/android/projection/proto/Protos$BluetoothService;

.field private genericNotificationService_:Lcom/google/android/projection/proto/Protos$GenericNotificationService;

.field private id_:I

.field private inputSourceService_:Lcom/google/android/projection/proto/Protos$InputSourceService;

.field private mediaBrowserService_:Lcom/google/android/projection/proto/Protos$MediaBrowserService;

.field private mediaPlaybackService_:Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

.field private mediaSinkService_:Lcom/google/android/projection/proto/Protos$MediaSinkService;

.field private mediaSourceService_:Lcom/google/android/projection/proto/Protos$MediaSourceService;

.field private memoizedIsInitialized:B

.field private navigationStatusService_:Lcom/google/android/projection/proto/Protos$NavigationStatusService;

.field private phoneStatusService_:Lcom/google/android/projection/proto/Protos$PhoneStatusService;

.field private radioService_:Lcom/google/android/projection/proto/Protos$RadioService;

.field private sensorSourceService_:Lcom/google/android/projection/proto/Protos$SensorSourceService;

.field private vendorExtensionService_:Lcom/google/android/projection/proto/Protos$VendorExtensionService;

.field private wifiProjectionService_:Lcom/google/android/projection/proto/Protos$WifiProjectionService;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$Service;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$Service;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/projection/proto/Protos$Service;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$Service;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/projection/proto/Protos$Service$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$Service$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/projection/proto/Protos$Service;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/google/android/projection/proto/Protos$Service;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5

    .line 7
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$Service;-><init>()V

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_1b

    .line 10
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    .line 11
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    goto/16 :goto_2

    .line 12
    :sswitch_0
    iget v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_1

    .line 13
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->wifiProjectionService_:Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$WifiProjectionService;->toBuilder()Lcom/google/android/projection/proto/Protos$WifiProjectionService$Builder;

    move-result-object v4

    .line 14
    :cond_1
    sget-object v2, Lcom/google/android/projection/proto/Protos$WifiProjectionService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->wifiProjectionService_:Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    if-eqz v4, :cond_2

    .line 15
    invoke-virtual {v4, v2}, Lcom/google/android/projection/proto/Protos$WifiProjectionService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$WifiProjectionService;)Lcom/google/android/projection/proto/Protos$WifiProjectionService$Builder;

    .line 16
    invoke-virtual {v4}, Lcom/google/android/projection/proto/Protos$WifiProjectionService$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->wifiProjectionService_:Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    .line 17
    :cond_2
    iget v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    goto :goto_0

    .line 18
    :sswitch_1
    iget v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_3

    .line 19
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->genericNotificationService_:Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$GenericNotificationService;->toBuilder()Lcom/google/android/projection/proto/Protos$GenericNotificationService$Builder;

    move-result-object v4

    .line 20
    :cond_3
    sget-object v2, Lcom/google/android/projection/proto/Protos$GenericNotificationService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->genericNotificationService_:Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    if-eqz v4, :cond_4

    .line 21
    invoke-virtual {v4, v2}, Lcom/google/android/projection/proto/Protos$GenericNotificationService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$GenericNotificationService;)Lcom/google/android/projection/proto/Protos$GenericNotificationService$Builder;

    .line 22
    invoke-virtual {v4}, Lcom/google/android/projection/proto/Protos$GenericNotificationService$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->genericNotificationService_:Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    .line 23
    :cond_4
    iget v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    goto :goto_0

    .line 24
    :sswitch_2
    iget v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_5

    .line 25
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->vendorExtensionService_:Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$VendorExtensionService;->toBuilder()Lcom/google/android/projection/proto/Protos$VendorExtensionService$Builder;

    move-result-object v4

    .line 26
    :cond_5
    sget-object v2, Lcom/google/android/projection/proto/Protos$VendorExtensionService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->vendorExtensionService_:Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    if-eqz v4, :cond_6

    .line 27
    invoke-virtual {v4, v2}, Lcom/google/android/projection/proto/Protos$VendorExtensionService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$VendorExtensionService;)Lcom/google/android/projection/proto/Protos$VendorExtensionService$Builder;

    .line 28
    invoke-virtual {v4}, Lcom/google/android/projection/proto/Protos$VendorExtensionService$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->vendorExtensionService_:Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    .line 29
    :cond_6
    iget v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    or-int/lit16 v2, v2, 0x800

    iput v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    goto/16 :goto_0

    .line 30
    :sswitch_3
    iget v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_7

    .line 31
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->mediaBrowserService_:Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$MediaBrowserService;->toBuilder()Lcom/google/android/projection/proto/Protos$MediaBrowserService$Builder;

    move-result-object v4

    .line 32
    :cond_7
    sget-object v2, Lcom/google/android/projection/proto/Protos$MediaBrowserService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->mediaBrowserService_:Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    if-eqz v4, :cond_8

    .line 33
    invoke-virtual {v4, v2}, Lcom/google/android/projection/proto/Protos$MediaBrowserService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$MediaBrowserService;)Lcom/google/android/projection/proto/Protos$MediaBrowserService$Builder;

    .line 34
    invoke-virtual {v4}, Lcom/google/android/projection/proto/Protos$MediaBrowserService$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->mediaBrowserService_:Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    .line 35
    :cond_8
    iget v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    goto/16 :goto_0

    .line 36
    :sswitch_4
    iget v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_9

    .line 37
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->phoneStatusService_:Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$PhoneStatusService;->toBuilder()Lcom/google/android/projection/proto/Protos$PhoneStatusService$Builder;

    move-result-object v4

    .line 38
    :cond_9
    sget-object v2, Lcom/google/android/projection/proto/Protos$PhoneStatusService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->phoneStatusService_:Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    if-eqz v4, :cond_a

    .line 39
    invoke-virtual {v4, v2}, Lcom/google/android/projection/proto/Protos$PhoneStatusService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$PhoneStatusService;)Lcom/google/android/projection/proto/Protos$PhoneStatusService$Builder;

    .line 40
    invoke-virtual {v4}, Lcom/google/android/projection/proto/Protos$PhoneStatusService$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->phoneStatusService_:Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    .line 41
    :cond_a
    iget v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    goto/16 :goto_0

    .line 42
    :sswitch_5
    iget v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_b

    .line 43
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->mediaPlaybackService_:Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;->toBuilder()Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService$Builder;

    move-result-object v4

    .line 44
    :cond_b
    sget-object v2, Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->mediaPlaybackService_:Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    if-eqz v4, :cond_c

    .line 45
    invoke-virtual {v4, v2}, Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;)Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService$Builder;

    .line 46
    invoke-virtual {v4}, Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->mediaPlaybackService_:Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    .line 47
    :cond_c
    iget v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    goto/16 :goto_0

    .line 48
    :sswitch_6
    iget v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_d

    .line 49
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->navigationStatusService_:Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->toBuilder()Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object v4

    .line 50
    :cond_d
    sget-object v2, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->navigationStatusService_:Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    if-eqz v4, :cond_e

    .line 51
    invoke-virtual {v4, v2}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationStatusService;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    .line 52
    invoke-virtual {v4}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->navigationStatusService_:Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    .line 53
    :cond_e
    iget v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    goto/16 :goto_0

    .line 54
    :sswitch_7
    iget v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_f

    .line 55
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->radioService_:Lcom/google/android/projection/proto/Protos$RadioService;

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$RadioService;->toBuilder()Lcom/google/android/projection/proto/Protos$RadioService$Builder;

    move-result-object v4

    .line 56
    :cond_f
    sget-object v2, Lcom/google/android/projection/proto/Protos$RadioService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/Protos$RadioService;

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->radioService_:Lcom/google/android/projection/proto/Protos$RadioService;

    if-eqz v4, :cond_10

    .line 57
    invoke-virtual {v4, v2}, Lcom/google/android/projection/proto/Protos$RadioService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$RadioService;)Lcom/google/android/projection/proto/Protos$RadioService$Builder;

    .line 58
    invoke-virtual {v4}, Lcom/google/android/projection/proto/Protos$RadioService$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$RadioService;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->radioService_:Lcom/google/android/projection/proto/Protos$RadioService;

    .line 59
    :cond_10
    iget v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    goto/16 :goto_0

    .line 60
    :sswitch_8
    iget v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_11

    .line 61
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bluetoothService_:Lcom/google/android/projection/proto/Protos$BluetoothService;

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$BluetoothService;->toBuilder()Lcom/google/android/projection/proto/Protos$BluetoothService$Builder;

    move-result-object v4

    .line 62
    :cond_11
    sget-object v2, Lcom/google/android/projection/proto/Protos$BluetoothService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/Protos$BluetoothService;

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bluetoothService_:Lcom/google/android/projection/proto/Protos$BluetoothService;

    if-eqz v4, :cond_12

    .line 63
    invoke-virtual {v4, v2}, Lcom/google/android/projection/proto/Protos$BluetoothService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$BluetoothService;)Lcom/google/android/projection/proto/Protos$BluetoothService$Builder;

    .line 64
    invoke-virtual {v4}, Lcom/google/android/projection/proto/Protos$BluetoothService$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$BluetoothService;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bluetoothService_:Lcom/google/android/projection/proto/Protos$BluetoothService;

    .line 65
    :cond_12
    iget v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    goto/16 :goto_0

    .line 66
    :sswitch_9
    iget v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_13

    .line 67
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->mediaSourceService_:Lcom/google/android/projection/proto/Protos$MediaSourceService;

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$MediaSourceService;->toBuilder()Lcom/google/android/projection/proto/Protos$MediaSourceService$Builder;

    move-result-object v4

    .line 68
    :cond_13
    sget-object v2, Lcom/google/android/projection/proto/Protos$MediaSourceService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/Protos$MediaSourceService;

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->mediaSourceService_:Lcom/google/android/projection/proto/Protos$MediaSourceService;

    if-eqz v4, :cond_14

    .line 69
    invoke-virtual {v4, v2}, Lcom/google/android/projection/proto/Protos$MediaSourceService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$MediaSourceService;)Lcom/google/android/projection/proto/Protos$MediaSourceService$Builder;

    .line 70
    invoke-virtual {v4}, Lcom/google/android/projection/proto/Protos$MediaSourceService$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$MediaSourceService;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->mediaSourceService_:Lcom/google/android/projection/proto/Protos$MediaSourceService;

    .line 71
    :cond_14
    iget v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    goto/16 :goto_0

    .line 72
    :sswitch_a
    iget v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_15

    .line 73
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->inputSourceService_:Lcom/google/android/projection/proto/Protos$InputSourceService;

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$InputSourceService;->toBuilder()Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object v4

    .line 74
    :cond_15
    sget-object v2, Lcom/google/android/projection/proto/Protos$InputSourceService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/Protos$InputSourceService;

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->inputSourceService_:Lcom/google/android/projection/proto/Protos$InputSourceService;

    if-eqz v4, :cond_16

    .line 75
    invoke-virtual {v4, v2}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$InputSourceService;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    .line 76
    invoke-virtual {v4}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$InputSourceService;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->inputSourceService_:Lcom/google/android/projection/proto/Protos$InputSourceService;

    .line 77
    :cond_16
    iget v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    goto/16 :goto_0

    .line 78
    :sswitch_b
    iget v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_17

    .line 79
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->mediaSinkService_:Lcom/google/android/projection/proto/Protos$MediaSinkService;

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->toBuilder()Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object v4

    .line 80
    :cond_17
    sget-object v2, Lcom/google/android/projection/proto/Protos$MediaSinkService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/Protos$MediaSinkService;

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->mediaSinkService_:Lcom/google/android/projection/proto/Protos$MediaSinkService;

    if-eqz v4, :cond_18

    .line 81
    invoke-virtual {v4, v2}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$MediaSinkService;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    .line 82
    invoke-virtual {v4}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$MediaSinkService;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->mediaSinkService_:Lcom/google/android/projection/proto/Protos$MediaSinkService;

    .line 83
    :cond_18
    iget v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    goto/16 :goto_0

    .line 84
    :sswitch_c
    iget v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_19

    .line 85
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->sensorSourceService_:Lcom/google/android/projection/proto/Protos$SensorSourceService;

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->toBuilder()Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;

    move-result-object v4

    .line 86
    :cond_19
    sget-object v2, Lcom/google/android/projection/proto/Protos$SensorSourceService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/Protos$SensorSourceService;

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->sensorSourceService_:Lcom/google/android/projection/proto/Protos$SensorSourceService;

    if-eqz v4, :cond_1a

    .line 87
    invoke-virtual {v4, v2}, Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$SensorSourceService;)Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;

    .line 88
    invoke-virtual {v4}, Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$SensorSourceService;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$Service;->sensorSourceService_:Lcom/google/android/projection/proto/Protos$SensorSourceService;

    .line 89
    :cond_1a
    iget v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    goto/16 :goto_0

    .line 90
    :sswitch_d
    iget v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    .line 91
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$Service;->id_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_e
    move v1, v3

    goto/16 :goto_0

    :goto_2
    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 92
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 93
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 94
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 96
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 97
    throw p1

    .line 98
    :cond_1b
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 99
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_d
        0x12 -> :sswitch_c
        0x1a -> :sswitch_b
        0x22 -> :sswitch_a
        0x2a -> :sswitch_9
        0x32 -> :sswitch_8
        0x3a -> :sswitch_7
        0x42 -> :sswitch_6
        0x4a -> :sswitch_5
        0x52 -> :sswitch_4
        0x5a -> :sswitch_3
        0x62 -> :sswitch_2
        0x6a -> :sswitch_1
        0x72 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$Service;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 4
    iput-byte p1, p0, Lcom/google/android/projection/proto/Protos$Service;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$Service;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$10002(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$WifiProjectionService;)Lcom/google/android/projection/proto/Protos$WifiProjectionService;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service;->wifiProjectionService_:Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    return-object p1
.end method

.method public static synthetic access$10102(Lcom/google/android/projection/proto/Protos$Service;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    return p1
.end method

.method public static synthetic access$10200(Lcom/google/android/projection/proto/Protos$Service;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$8500()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$8702(Lcom/google/android/projection/proto/Protos$Service;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service;->id_:I

    return p1
.end method

.method public static synthetic access$8802(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$SensorSourceService;)Lcom/google/android/projection/proto/Protos$SensorSourceService;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service;->sensorSourceService_:Lcom/google/android/projection/proto/Protos$SensorSourceService;

    return-object p1
.end method

.method public static synthetic access$8902(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$MediaSinkService;)Lcom/google/android/projection/proto/Protos$MediaSinkService;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service;->mediaSinkService_:Lcom/google/android/projection/proto/Protos$MediaSinkService;

    return-object p1
.end method

.method public static synthetic access$9002(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$InputSourceService;)Lcom/google/android/projection/proto/Protos$InputSourceService;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service;->inputSourceService_:Lcom/google/android/projection/proto/Protos$InputSourceService;

    return-object p1
.end method

.method public static synthetic access$9102(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$MediaSourceService;)Lcom/google/android/projection/proto/Protos$MediaSourceService;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service;->mediaSourceService_:Lcom/google/android/projection/proto/Protos$MediaSourceService;

    return-object p1
.end method

.method public static synthetic access$9202(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$BluetoothService;)Lcom/google/android/projection/proto/Protos$BluetoothService;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service;->bluetoothService_:Lcom/google/android/projection/proto/Protos$BluetoothService;

    return-object p1
.end method

.method public static synthetic access$9302(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$RadioService;)Lcom/google/android/projection/proto/Protos$RadioService;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service;->radioService_:Lcom/google/android/projection/proto/Protos$RadioService;

    return-object p1
.end method

.method public static synthetic access$9402(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$NavigationStatusService;)Lcom/google/android/projection/proto/Protos$NavigationStatusService;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service;->navigationStatusService_:Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    return-object p1
.end method

.method public static synthetic access$9502(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;)Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service;->mediaPlaybackService_:Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    return-object p1
.end method

.method public static synthetic access$9602(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$PhoneStatusService;)Lcom/google/android/projection/proto/Protos$PhoneStatusService;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service;->phoneStatusService_:Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    return-object p1
.end method

.method public static synthetic access$9702(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$MediaBrowserService;)Lcom/google/android/projection/proto/Protos$MediaBrowserService;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service;->mediaBrowserService_:Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    return-object p1
.end method

.method public static synthetic access$9802(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$VendorExtensionService;)Lcom/google/android/projection/proto/Protos$VendorExtensionService;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service;->vendorExtensionService_:Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    return-object p1
.end method

.method public static synthetic access$9902(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$GenericNotificationService;)Lcom/google/android/projection/proto/Protos$GenericNotificationService;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service;->genericNotificationService_:Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/android/projection/proto/Protos$Service;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$Service;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$Service;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$8100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$Service;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$Service;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$Service;->toBuilder()Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/projection/proto/Protos$Service;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$Service;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$Service;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$Service;->toBuilder()Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$Service;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$Service;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$Service;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$Service;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$Service;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$Service;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$Service;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$Service;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$Service;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$Service;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$Service;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$Service;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$Service;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/projection/proto/Protos$Service;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/android/projection/proto/Protos$Service;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$Service;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$Service;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/android/projection/proto/Protos$Service;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$Service;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$Service;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/projection/proto/Protos$Service;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$Service;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$Service;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$Service;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$Service;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/projection/proto/Protos$Service;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$Service;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$Service;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$Service;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$Service;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$Service;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/projection/proto/Protos$Service;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/projection/proto/Protos$Service;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$Service;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$Service;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/projection/proto/Protos$Service;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$Service;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$Service;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$Service;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/projection/proto/Protos$Service;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_1
    check-cast p1, Lcom/google/android/projection/proto/Protos$Service;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasId()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->hasId()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eq v1, v2, :cond_2

    .line 26
    .line 27
    return v3

    .line 28
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasId()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getId()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->getId()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eq v1, v2, :cond_3

    .line 43
    .line 44
    return v3

    .line 45
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasSensorSourceService()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->hasSensorSourceService()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eq v1, v2, :cond_4

    .line 54
    .line 55
    return v3

    .line 56
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasSensorSourceService()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_5

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getSensorSourceService()Lcom/google/android/projection/proto/Protos$SensorSourceService;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->getSensorSourceService()Lcom/google/android/projection/proto/Protos$SensorSourceService;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_5

    .line 75
    .line 76
    return v3

    .line 77
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasMediaSinkService()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->hasMediaSinkService()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eq v1, v2, :cond_6

    .line 86
    .line 87
    return v3

    .line 88
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasMediaSinkService()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_7

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getMediaSinkService()Lcom/google/android/projection/proto/Protos$MediaSinkService;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->getMediaSinkService()Lcom/google/android/projection/proto/Protos$MediaSinkService;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-nez v1, :cond_7

    .line 107
    .line 108
    return v3

    .line 109
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasInputSourceService()Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->hasInputSourceService()Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eq v1, v2, :cond_8

    .line 118
    .line 119
    return v3

    .line 120
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasInputSourceService()Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_9

    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getInputSourceService()Lcom/google/android/projection/proto/Protos$InputSourceService;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->getInputSourceService()Lcom/google/android/projection/proto/Protos$InputSourceService;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Protos$InputSourceService;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-nez v1, :cond_9

    .line 139
    .line 140
    return v3

    .line 141
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasMediaSourceService()Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->hasMediaSourceService()Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-eq v1, v2, :cond_a

    .line 150
    .line 151
    return v3

    .line 152
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasMediaSourceService()Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-eqz v1, :cond_b

    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getMediaSourceService()Lcom/google/android/projection/proto/Protos$MediaSourceService;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->getMediaSourceService()Lcom/google/android/projection/proto/Protos$MediaSourceService;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Protos$MediaSourceService;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-nez v1, :cond_b

    .line 171
    .line 172
    return v3

    .line 173
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasBluetoothService()Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->hasBluetoothService()Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-eq v1, v2, :cond_c

    .line 182
    .line 183
    return v3

    .line 184
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasBluetoothService()Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-eqz v1, :cond_d

    .line 189
    .line 190
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getBluetoothService()Lcom/google/android/projection/proto/Protos$BluetoothService;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->getBluetoothService()Lcom/google/android/projection/proto/Protos$BluetoothService;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Protos$BluetoothService;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-nez v1, :cond_d

    .line 203
    .line 204
    return v3

    .line 205
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasRadioService()Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->hasRadioService()Z

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    if-eq v1, v2, :cond_e

    .line 214
    .line 215
    return v3

    .line 216
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasRadioService()Z

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    if-eqz v1, :cond_f

    .line 221
    .line 222
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getRadioService()Lcom/google/android/projection/proto/Protos$RadioService;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->getRadioService()Lcom/google/android/projection/proto/Protos$RadioService;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Protos$RadioService;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-nez v1, :cond_f

    .line 235
    .line 236
    return v3

    .line 237
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasNavigationStatusService()Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->hasNavigationStatusService()Z

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    if-eq v1, v2, :cond_10

    .line 246
    .line 247
    return v3

    .line 248
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasNavigationStatusService()Z

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    if-eqz v1, :cond_11

    .line 253
    .line 254
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getNavigationStatusService()Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->getNavigationStatusService()Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    if-nez v1, :cond_11

    .line 267
    .line 268
    return v3

    .line 269
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasMediaPlaybackService()Z

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->hasMediaPlaybackService()Z

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    if-eq v1, v2, :cond_12

    .line 278
    .line 279
    return v3

    .line 280
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasMediaPlaybackService()Z

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    if-eqz v1, :cond_13

    .line 285
    .line 286
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getMediaPlaybackService()Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->getMediaPlaybackService()Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;->equals(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    if-nez v1, :cond_13

    .line 299
    .line 300
    return v3

    .line 301
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasPhoneStatusService()Z

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->hasPhoneStatusService()Z

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    if-eq v1, v2, :cond_14

    .line 310
    .line 311
    return v3

    .line 312
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasPhoneStatusService()Z

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    if-eqz v1, :cond_15

    .line 317
    .line 318
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getPhoneStatusService()Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->getPhoneStatusService()Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Protos$PhoneStatusService;->equals(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    if-nez v1, :cond_15

    .line 331
    .line 332
    return v3

    .line 333
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasMediaBrowserService()Z

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->hasMediaBrowserService()Z

    .line 338
    .line 339
    .line 340
    move-result v2

    .line 341
    if-eq v1, v2, :cond_16

    .line 342
    .line 343
    return v3

    .line 344
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasMediaBrowserService()Z

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    if-eqz v1, :cond_17

    .line 349
    .line 350
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getMediaBrowserService()Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->getMediaBrowserService()Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Protos$MediaBrowserService;->equals(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    if-nez v1, :cond_17

    .line 363
    .line 364
    return v3

    .line 365
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasVendorExtensionService()Z

    .line 366
    .line 367
    .line 368
    move-result v1

    .line 369
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->hasVendorExtensionService()Z

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    if-eq v1, v2, :cond_18

    .line 374
    .line 375
    return v3

    .line 376
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasVendorExtensionService()Z

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    if-eqz v1, :cond_19

    .line 381
    .line 382
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getVendorExtensionService()Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->getVendorExtensionService()Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Protos$VendorExtensionService;->equals(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    move-result v1

    .line 394
    if-nez v1, :cond_19

    .line 395
    .line 396
    return v3

    .line 397
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasGenericNotificationService()Z

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->hasGenericNotificationService()Z

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    if-eq v1, v2, :cond_1a

    .line 406
    .line 407
    return v3

    .line 408
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasGenericNotificationService()Z

    .line 409
    .line 410
    .line 411
    move-result v1

    .line 412
    if-eqz v1, :cond_1b

    .line 413
    .line 414
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getGenericNotificationService()Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->getGenericNotificationService()Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Protos$GenericNotificationService;->equals(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    move-result v1

    .line 426
    if-nez v1, :cond_1b

    .line 427
    .line 428
    return v3

    .line 429
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasWifiProjectionService()Z

    .line 430
    .line 431
    .line 432
    move-result v1

    .line 433
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->hasWifiProjectionService()Z

    .line 434
    .line 435
    .line 436
    move-result v2

    .line 437
    if-eq v1, v2, :cond_1c

    .line 438
    .line 439
    return v3

    .line 440
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasWifiProjectionService()Z

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    if-eqz v1, :cond_1d

    .line 445
    .line 446
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getWifiProjectionService()Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->getWifiProjectionService()Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Protos$WifiProjectionService;->equals(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    move-result v1

    .line 458
    if-nez v1, :cond_1d

    .line 459
    .line 460
    return v3

    .line 461
    :cond_1d
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 462
    .line 463
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 464
    .line 465
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    move-result p1

    .line 469
    if-nez p1, :cond_1e

    .line 470
    .line 471
    return v3

    .line 472
    :cond_1e
    return v0
.end method

.method public getBluetoothService()Lcom/google/android/projection/proto/Protos$BluetoothService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bluetoothService_:Lcom/google/android/projection/proto/Protos$BluetoothService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$BluetoothService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$BluetoothService;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getBluetoothServiceOrBuilder()Lcom/google/android/projection/proto/Protos$BluetoothServiceOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bluetoothService_:Lcom/google/android/projection/proto/Protos$BluetoothService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$BluetoothService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$BluetoothService;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$Service;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$Service;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$Service;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$Service;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$Service;

    move-result-object v0

    return-object v0
.end method

.method public getGenericNotificationService()Lcom/google/android/projection/proto/Protos$GenericNotificationService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service;->genericNotificationService_:Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$GenericNotificationService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getGenericNotificationServiceOrBuilder()Lcom/google/android/projection/proto/Protos$GenericNotificationServiceOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service;->genericNotificationService_:Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$GenericNotificationService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->id_:I

    return v0
.end method

.method public getInputSourceService()Lcom/google/android/projection/proto/Protos$InputSourceService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service;->inputSourceService_:Lcom/google/android/projection/proto/Protos$InputSourceService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$InputSourceService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$InputSourceService;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getInputSourceServiceOrBuilder()Lcom/google/android/projection/proto/Protos$InputSourceServiceOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service;->inputSourceService_:Lcom/google/android/projection/proto/Protos$InputSourceService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$InputSourceService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$InputSourceService;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMediaBrowserService()Lcom/google/android/projection/proto/Protos$MediaBrowserService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service;->mediaBrowserService_:Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaBrowserService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMediaBrowserServiceOrBuilder()Lcom/google/android/projection/proto/Protos$MediaBrowserServiceOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service;->mediaBrowserService_:Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaBrowserService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMediaPlaybackService()Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service;->mediaPlaybackService_:Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMediaPlaybackServiceOrBuilder()Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusServiceOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service;->mediaPlaybackService_:Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMediaSinkService()Lcom/google/android/projection/proto/Protos$MediaSinkService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service;->mediaSinkService_:Lcom/google/android/projection/proto/Protos$MediaSinkService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaSinkService;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMediaSinkServiceOrBuilder()Lcom/google/android/projection/proto/Protos$MediaSinkServiceOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service;->mediaSinkService_:Lcom/google/android/projection/proto/Protos$MediaSinkService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaSinkService;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMediaSourceService()Lcom/google/android/projection/proto/Protos$MediaSourceService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service;->mediaSourceService_:Lcom/google/android/projection/proto/Protos$MediaSourceService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaSourceService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaSourceService;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMediaSourceServiceOrBuilder()Lcom/google/android/projection/proto/Protos$MediaSourceServiceOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service;->mediaSourceService_:Lcom/google/android/projection/proto/Protos$MediaSourceService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaSourceService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaSourceService;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getNavigationStatusService()Lcom/google/android/projection/proto/Protos$NavigationStatusService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service;->navigationStatusService_:Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getNavigationStatusServiceOrBuilder()Lcom/google/android/projection/proto/Protos$NavigationStatusServiceOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service;->navigationStatusService_:Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$Service;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$Service;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPhoneStatusService()Lcom/google/android/projection/proto/Protos$PhoneStatusService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service;->phoneStatusService_:Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$PhoneStatusService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPhoneStatusServiceOrBuilder()Lcom/google/android/projection/proto/Protos$PhoneStatusServiceOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service;->phoneStatusService_:Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$PhoneStatusService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRadioService()Lcom/google/android/projection/proto/Protos$RadioService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service;->radioService_:Lcom/google/android/projection/proto/Protos$RadioService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$RadioService;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRadioServiceOrBuilder()Lcom/google/android/projection/proto/Protos$RadioServiceOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service;->radioService_:Lcom/google/android/projection/proto/Protos$RadioService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$RadioService;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSensorSourceService()Lcom/google/android/projection/proto/Protos$SensorSourceService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service;->sensorSourceService_:Lcom/google/android/projection/proto/Protos$SensorSourceService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$SensorSourceService;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSensorSourceServiceOrBuilder()Lcom/google/android/projection/proto/Protos$SensorSourceServiceOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service;->sensorSourceService_:Lcom/google/android/projection/proto/Protos$SensorSourceService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$SensorSourceService;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->id_:I

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    add-int/2addr v2, v0

    .line 21
    :cond_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    and-int/2addr v0, v1

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getSensorSourceService()Lcom/google/android/projection/proto/Protos$SensorSourceService;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    add-int/2addr v2, v0

    .line 36
    :cond_2
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    .line 37
    .line 38
    const/4 v1, 0x4

    .line 39
    and-int/2addr v0, v1

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    const/4 v0, 0x3

    .line 43
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getMediaSinkService()Lcom/google/android/projection/proto/Protos$MediaSinkService;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v0, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    add-int/2addr v2, v0

    .line 52
    :cond_3
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    .line 53
    .line 54
    const/16 v3, 0x8

    .line 55
    .line 56
    and-int/2addr v0, v3

    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getInputSourceService()Lcom/google/android/projection/proto/Protos$InputSourceService;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    add-int/2addr v2, v0

    .line 68
    :cond_4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    .line 69
    .line 70
    and-int/lit8 v0, v0, 0x10

    .line 71
    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    const/4 v0, 0x5

    .line 75
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getMediaSourceService()Lcom/google/android/projection/proto/Protos$MediaSourceService;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    add-int/2addr v2, v0

    .line 84
    :cond_5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    .line 85
    .line 86
    and-int/lit8 v0, v0, 0x20

    .line 87
    .line 88
    if-eqz v0, :cond_6

    .line 89
    .line 90
    const/4 v0, 0x6

    .line 91
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getBluetoothService()Lcom/google/android/projection/proto/Protos$BluetoothService;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    add-int/2addr v2, v0

    .line 100
    :cond_6
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    .line 101
    .line 102
    and-int/lit8 v0, v0, 0x40

    .line 103
    .line 104
    if-eqz v0, :cond_7

    .line 105
    .line 106
    const/4 v0, 0x7

    .line 107
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getRadioService()Lcom/google/android/projection/proto/Protos$RadioService;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    add-int/2addr v2, v0

    .line 116
    :cond_7
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    .line 117
    .line 118
    and-int/lit16 v0, v0, 0x80

    .line 119
    .line 120
    if-eqz v0, :cond_8

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getNavigationStatusService()Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    add-int/2addr v2, v0

    .line 131
    :cond_8
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    .line 132
    .line 133
    and-int/lit16 v0, v0, 0x100

    .line 134
    .line 135
    if-eqz v0, :cond_9

    .line 136
    .line 137
    const/16 v0, 0x9

    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getMediaPlaybackService()Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    add-int/2addr v2, v0

    .line 148
    :cond_9
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    .line 149
    .line 150
    and-int/lit16 v0, v0, 0x200

    .line 151
    .line 152
    if-eqz v0, :cond_a

    .line 153
    .line 154
    const/16 v0, 0xa

    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getPhoneStatusService()Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    add-int/2addr v2, v0

    .line 165
    :cond_a
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    .line 166
    .line 167
    and-int/lit16 v0, v0, 0x400

    .line 168
    .line 169
    if-eqz v0, :cond_b

    .line 170
    .line 171
    const/16 v0, 0xb

    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getMediaBrowserService()Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    add-int/2addr v2, v0

    .line 182
    :cond_b
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    .line 183
    .line 184
    and-int/lit16 v0, v0, 0x800

    .line 185
    .line 186
    if-eqz v0, :cond_c

    .line 187
    .line 188
    const/16 v0, 0xc

    .line 189
    .line 190
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getVendorExtensionService()Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    add-int/2addr v2, v0

    .line 199
    :cond_c
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    .line 200
    .line 201
    and-int/lit16 v0, v0, 0x1000

    .line 202
    .line 203
    if-eqz v0, :cond_d

    .line 204
    .line 205
    const/16 v0, 0xd

    .line 206
    .line 207
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getGenericNotificationService()Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    add-int/2addr v2, v0

    .line 216
    :cond_d
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    .line 217
    .line 218
    and-int/lit16 v0, v0, 0x2000

    .line 219
    .line 220
    if-eqz v0, :cond_e

    .line 221
    .line 222
    const/16 v0, 0xe

    .line 223
    .line 224
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getWifiProjectionService()Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    add-int/2addr v2, v0

    .line 233
    :cond_e
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 234
    .line 235
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    add-int/2addr v0, v2

    .line 240
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 241
    .line 242
    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVendorExtensionService()Lcom/google/android/projection/proto/Protos$VendorExtensionService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service;->vendorExtensionService_:Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$VendorExtensionService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getVendorExtensionServiceOrBuilder()Lcom/google/android/projection/proto/Protos$VendorExtensionServiceOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service;->vendorExtensionService_:Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$VendorExtensionService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getWifiProjectionService()Lcom/google/android/projection/proto/Protos$WifiProjectionService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service;->wifiProjectionService_:Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$WifiProjectionService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getWifiProjectionServiceOrBuilder()Lcom/google/android/projection/proto/Protos$WifiProjectionServiceOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service;->wifiProjectionService_:Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$WifiProjectionService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasBluetoothService()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGenericNotificationService()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasId()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasInputSourceService()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMediaBrowserService()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMediaPlaybackService()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMediaSinkService()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMediaSourceService()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNavigationStatusService()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPhoneStatusService()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRadioService()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSensorSourceService()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVendorExtensionService()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWifiProjectionService()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/google/android/projection/proto/Protos$Service;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    add-int/lit16 v0, v0, 0x30b

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasId()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    const/16 v1, 0x25

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    const/16 v3, 0x35

    .line 26
    .line 27
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getId()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v0, v1

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasSensorSourceService()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    const/16 v1, 0x25

    .line 43
    .line 44
    const/4 v2, 0x2

    .line 45
    const/16 v3, 0x35

    .line 46
    .line 47
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getSensorSourceService()Lcom/google/android/projection/proto/Protos$SensorSourceService;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->hashCode()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    add-int/2addr v0, v1

    .line 60
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasMediaSinkService()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    const/16 v1, 0x25

    .line 67
    .line 68
    const/4 v2, 0x3

    .line 69
    const/16 v3, 0x35

    .line 70
    .line 71
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getMediaSinkService()Lcom/google/android/projection/proto/Protos$MediaSinkService;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->hashCode()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    add-int/2addr v0, v1

    .line 84
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasInputSourceService()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_4

    .line 89
    .line 90
    const/16 v1, 0x25

    .line 91
    .line 92
    const/4 v2, 0x4

    .line 93
    const/16 v3, 0x35

    .line 94
    .line 95
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getInputSourceService()Lcom/google/android/projection/proto/Protos$InputSourceService;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$InputSourceService;->hashCode()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    add-int/2addr v0, v1

    .line 108
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasMediaSourceService()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_5

    .line 113
    .line 114
    const/16 v1, 0x25

    .line 115
    .line 116
    const/4 v2, 0x5

    .line 117
    const/16 v3, 0x35

    .line 118
    .line 119
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getMediaSourceService()Lcom/google/android/projection/proto/Protos$MediaSourceService;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$MediaSourceService;->hashCode()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    add-int/2addr v0, v1

    .line 132
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasBluetoothService()Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_6

    .line 137
    .line 138
    const/16 v1, 0x25

    .line 139
    .line 140
    const/4 v2, 0x6

    .line 141
    const/16 v3, 0x35

    .line 142
    .line 143
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getBluetoothService()Lcom/google/android/projection/proto/Protos$BluetoothService;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$BluetoothService;->hashCode()I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    add-int/2addr v0, v1

    .line 156
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasRadioService()Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_7

    .line 161
    .line 162
    const/16 v1, 0x25

    .line 163
    .line 164
    const/4 v2, 0x7

    .line 165
    const/16 v3, 0x35

    .line 166
    .line 167
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getRadioService()Lcom/google/android/projection/proto/Protos$RadioService;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$RadioService;->hashCode()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    add-int/2addr v0, v1

    .line 180
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasNavigationStatusService()Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-eqz v1, :cond_8

    .line 185
    .line 186
    const/16 v1, 0x25

    .line 187
    .line 188
    const/16 v2, 0x8

    .line 189
    .line 190
    const/16 v3, 0x35

    .line 191
    .line 192
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getNavigationStatusService()Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->hashCode()I

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    add-int/2addr v0, v1

    .line 205
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasMediaPlaybackService()Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-eqz v1, :cond_9

    .line 210
    .line 211
    const/16 v1, 0x25

    .line 212
    .line 213
    const/16 v2, 0x9

    .line 214
    .line 215
    const/16 v3, 0x35

    .line 216
    .line 217
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getMediaPlaybackService()Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;->hashCode()I

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    add-int/2addr v0, v1

    .line 230
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasPhoneStatusService()Z

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-eqz v1, :cond_a

    .line 235
    .line 236
    const/16 v1, 0x25

    .line 237
    .line 238
    const/16 v2, 0xa

    .line 239
    .line 240
    const/16 v3, 0x35

    .line 241
    .line 242
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getPhoneStatusService()Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$PhoneStatusService;->hashCode()I

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    add-int/2addr v0, v1

    .line 255
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasMediaBrowserService()Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-eqz v1, :cond_b

    .line 260
    .line 261
    const/16 v1, 0x25

    .line 262
    .line 263
    const/16 v2, 0xb

    .line 264
    .line 265
    const/16 v3, 0x35

    .line 266
    .line 267
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getMediaBrowserService()Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$MediaBrowserService;->hashCode()I

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    add-int/2addr v0, v1

    .line 280
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasVendorExtensionService()Z

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    if-eqz v1, :cond_c

    .line 285
    .line 286
    const/16 v1, 0x25

    .line 287
    .line 288
    const/16 v2, 0xc

    .line 289
    .line 290
    const/16 v3, 0x35

    .line 291
    .line 292
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getVendorExtensionService()Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$VendorExtensionService;->hashCode()I

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    add-int/2addr v0, v1

    .line 305
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasGenericNotificationService()Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    if-eqz v1, :cond_d

    .line 310
    .line 311
    const/16 v1, 0x25

    .line 312
    .line 313
    const/16 v2, 0xd

    .line 314
    .line 315
    const/16 v3, 0x35

    .line 316
    .line 317
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getGenericNotificationService()Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$GenericNotificationService;->hashCode()I

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    add-int/2addr v0, v1

    .line 330
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasWifiProjectionService()Z

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    if-eqz v1, :cond_e

    .line 335
    .line 336
    const/16 v1, 0x25

    .line 337
    .line 338
    const/16 v2, 0xe

    .line 339
    .line 340
    const/16 v3, 0x35

    .line 341
    .line 342
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getWifiProjectionService()Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$WifiProjectionService;->hashCode()I

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    add-int/2addr v0, v1

    .line 355
    :cond_e
    mul-int/lit8 v0, v0, 0x1d

    .line 356
    .line 357
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 358
    .line 359
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 360
    .line 361
    .line 362
    move-result v1

    .line 363
    add-int/2addr v1, v0

    .line 364
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 365
    .line 366
    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$8200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/android/projection/proto/Protos$Service;

    .line 6
    .line 7
    const-class v2, Lcom/google/android/projection/proto/Protos$Service$Builder;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 1
    iget-byte v0, p0, Lcom/google/android/projection/proto/Protos$Service;->memoizedIsInitialized:B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasId()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$Service;->memoizedIsInitialized:B

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasSensorSourceService()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getSensorSourceService()Lcom/google/android/projection/proto/Protos$SensorSourceService;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->isInitialized()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$Service;->memoizedIsInitialized:B

    .line 37
    .line 38
    return v2

    .line 39
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasMediaSinkService()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getMediaSinkService()Lcom/google/android/projection/proto/Protos$MediaSinkService;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->isInitialized()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_4

    .line 54
    .line 55
    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$Service;->memoizedIsInitialized:B

    .line 56
    .line 57
    return v2

    .line 58
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasInputSourceService()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getInputSourceService()Lcom/google/android/projection/proto/Protos$InputSourceService;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$InputSourceService;->isInitialized()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_5

    .line 73
    .line 74
    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$Service;->memoizedIsInitialized:B

    .line 75
    .line 76
    return v2

    .line 77
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasMediaSourceService()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_6

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getMediaSourceService()Lcom/google/android/projection/proto/Protos$MediaSourceService;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$MediaSourceService;->isInitialized()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_6

    .line 92
    .line 93
    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$Service;->memoizedIsInitialized:B

    .line 94
    .line 95
    return v2

    .line 96
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasBluetoothService()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_7

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getBluetoothService()Lcom/google/android/projection/proto/Protos$BluetoothService;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$BluetoothService;->isInitialized()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-nez v0, :cond_7

    .line 111
    .line 112
    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$Service;->memoizedIsInitialized:B

    .line 113
    .line 114
    return v2

    .line 115
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasRadioService()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_8

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getRadioService()Lcom/google/android/projection/proto/Protos$RadioService;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$RadioService;->isInitialized()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_8

    .line 130
    .line 131
    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$Service;->memoizedIsInitialized:B

    .line 132
    .line 133
    return v2

    .line 134
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasNavigationStatusService()Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_9

    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getNavigationStatusService()Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->isInitialized()Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-nez v0, :cond_9

    .line 149
    .line 150
    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$Service;->memoizedIsInitialized:B

    .line 151
    .line 152
    return v2

    .line 153
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->hasVendorExtensionService()Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_a

    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getVendorExtensionService()Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$VendorExtensionService;->isInitialized()Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-nez v0, :cond_a

    .line 168
    .line 169
    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$Service;->memoizedIsInitialized:B

    .line 170
    .line 171
    return v2

    .line 172
    :cond_a
    iput-byte v1, p0, Lcom/google/android/projection/proto/Protos$Service;->memoizedIsInitialized:B

    .line 173
    .line 174
    return v1
.end method

.method public newBuilderForType()Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/android/projection/proto/Protos$Service;->newBuilder()Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/projection/proto/Protos$Service$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/projection/proto/Protos$Service$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->newBuilderForType()Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$Service;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->newBuilderForType()Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/android/projection/proto/Protos$Service;

    invoke-direct {p1}, Lcom/google/android/projection/proto/Protos$Service;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$Service;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$Service;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/projection/proto/Protos$Service$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$Service$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/projection/proto/Protos$Service$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$Service$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$Service;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->toBuilder()Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->toBuilder()Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->id_:I

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getSensorSourceService()Lcom/google/android/projection/proto/Protos$SensorSourceService;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    and-int/2addr v0, v1

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getMediaSinkService()Lcom/google/android/projection/proto/Protos$MediaSinkService;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    .line 40
    .line 41
    const/16 v2, 0x8

    .line 42
    .line 43
    and-int/2addr v0, v2

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getInputSourceService()Lcom/google/android/projection/proto/Protos$InputSourceService;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 51
    .line 52
    .line 53
    :cond_3
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    .line 54
    .line 55
    and-int/lit8 v0, v0, 0x10

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    const/4 v0, 0x5

    .line 60
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getMediaSourceService()Lcom/google/android/projection/proto/Protos$MediaSourceService;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 65
    .line 66
    .line 67
    :cond_4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    .line 68
    .line 69
    and-int/lit8 v0, v0, 0x20

    .line 70
    .line 71
    if-eqz v0, :cond_5

    .line 72
    .line 73
    const/4 v0, 0x6

    .line 74
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getBluetoothService()Lcom/google/android/projection/proto/Protos$BluetoothService;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 79
    .line 80
    .line 81
    :cond_5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    .line 82
    .line 83
    and-int/lit8 v0, v0, 0x40

    .line 84
    .line 85
    if-eqz v0, :cond_6

    .line 86
    .line 87
    const/4 v0, 0x7

    .line 88
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getRadioService()Lcom/google/android/projection/proto/Protos$RadioService;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 93
    .line 94
    .line 95
    :cond_6
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    .line 96
    .line 97
    and-int/lit16 v0, v0, 0x80

    .line 98
    .line 99
    if-eqz v0, :cond_7

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getNavigationStatusService()Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 106
    .line 107
    .line 108
    :cond_7
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    .line 109
    .line 110
    and-int/lit16 v0, v0, 0x100

    .line 111
    .line 112
    if-eqz v0, :cond_8

    .line 113
    .line 114
    const/16 v0, 0x9

    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getMediaPlaybackService()Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 121
    .line 122
    .line 123
    :cond_8
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    .line 124
    .line 125
    and-int/lit16 v0, v0, 0x200

    .line 126
    .line 127
    if-eqz v0, :cond_9

    .line 128
    .line 129
    const/16 v0, 0xa

    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getPhoneStatusService()Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 136
    .line 137
    .line 138
    :cond_9
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    .line 139
    .line 140
    and-int/lit16 v0, v0, 0x400

    .line 141
    .line 142
    if-eqz v0, :cond_a

    .line 143
    .line 144
    const/16 v0, 0xb

    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getMediaBrowserService()Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 151
    .line 152
    .line 153
    :cond_a
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    .line 154
    .line 155
    and-int/lit16 v0, v0, 0x800

    .line 156
    .line 157
    if-eqz v0, :cond_b

    .line 158
    .line 159
    const/16 v0, 0xc

    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getVendorExtensionService()Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 166
    .line 167
    .line 168
    :cond_b
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    .line 169
    .line 170
    and-int/lit16 v0, v0, 0x1000

    .line 171
    .line 172
    if-eqz v0, :cond_c

    .line 173
    .line 174
    const/16 v0, 0xd

    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getGenericNotificationService()Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 181
    .line 182
    .line 183
    :cond_c
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service;->bitField0_:I

    .line 184
    .line 185
    and-int/lit16 v0, v0, 0x2000

    .line 186
    .line 187
    if-eqz v0, :cond_d

    .line 188
    .line 189
    const/16 v0, 0xe

    .line 190
    .line 191
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service;->getWifiProjectionService()Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 196
    .line 197
    .line 198
    :cond_d
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 199
    .line 200
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 201
    .line 202
    .line 203
    return-void
.end method
