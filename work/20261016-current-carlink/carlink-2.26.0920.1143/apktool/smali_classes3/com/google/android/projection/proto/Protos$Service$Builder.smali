.class public final Lcom/google/android/projection/proto/Protos$Service$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$ServiceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/Protos$Service$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/Protos$ServiceOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private bluetoothServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$BluetoothService;",
            "Lcom/google/android/projection/proto/Protos$BluetoothService$Builder;",
            "Lcom/google/android/projection/proto/Protos$BluetoothServiceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothService_:Lcom/google/android/projection/proto/Protos$BluetoothService;

.field private genericNotificationServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$GenericNotificationService;",
            "Lcom/google/android/projection/proto/Protos$GenericNotificationService$Builder;",
            "Lcom/google/android/projection/proto/Protos$GenericNotificationServiceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private genericNotificationService_:Lcom/google/android/projection/proto/Protos$GenericNotificationService;

.field private id_:I

.field private inputSourceServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$InputSourceService;",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;",
            "Lcom/google/android/projection/proto/Protos$InputSourceServiceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private inputSourceService_:Lcom/google/android/projection/proto/Protos$InputSourceService;

.field private mediaBrowserServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$MediaBrowserService;",
            "Lcom/google/android/projection/proto/Protos$MediaBrowserService$Builder;",
            "Lcom/google/android/projection/proto/Protos$MediaBrowserServiceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private mediaBrowserService_:Lcom/google/android/projection/proto/Protos$MediaBrowserService;

.field private mediaPlaybackServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;",
            "Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService$Builder;",
            "Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusServiceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private mediaPlaybackService_:Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

.field private mediaSinkServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$MediaSinkService;",
            "Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;",
            "Lcom/google/android/projection/proto/Protos$MediaSinkServiceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private mediaSinkService_:Lcom/google/android/projection/proto/Protos$MediaSinkService;

.field private mediaSourceServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$MediaSourceService;",
            "Lcom/google/android/projection/proto/Protos$MediaSourceService$Builder;",
            "Lcom/google/android/projection/proto/Protos$MediaSourceServiceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private mediaSourceService_:Lcom/google/android/projection/proto/Protos$MediaSourceService;

.field private navigationStatusServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$NavigationStatusService;",
            "Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;",
            "Lcom/google/android/projection/proto/Protos$NavigationStatusServiceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private navigationStatusService_:Lcom/google/android/projection/proto/Protos$NavigationStatusService;

.field private phoneStatusServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$PhoneStatusService;",
            "Lcom/google/android/projection/proto/Protos$PhoneStatusService$Builder;",
            "Lcom/google/android/projection/proto/Protos$PhoneStatusServiceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private phoneStatusService_:Lcom/google/android/projection/proto/Protos$PhoneStatusService;

.field private radioServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$RadioService;",
            "Lcom/google/android/projection/proto/Protos$RadioService$Builder;",
            "Lcom/google/android/projection/proto/Protos$RadioServiceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private radioService_:Lcom/google/android/projection/proto/Protos$RadioService;

.field private sensorSourceServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$SensorSourceService;",
            "Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;",
            "Lcom/google/android/projection/proto/Protos$SensorSourceServiceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private sensorSourceService_:Lcom/google/android/projection/proto/Protos$SensorSourceService;

.field private vendorExtensionServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$VendorExtensionService;",
            "Lcom/google/android/projection/proto/Protos$VendorExtensionService$Builder;",
            "Lcom/google/android/projection/proto/Protos$VendorExtensionServiceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private vendorExtensionService_:Lcom/google/android/projection/proto/Protos$VendorExtensionService;

.field private wifiProjectionServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$WifiProjectionService;",
            "Lcom/google/android/projection/proto/Protos$WifiProjectionService$Builder;",
            "Lcom/google/android/projection/proto/Protos$WifiProjectionServiceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private wifiProjectionService_:Lcom/google/android/projection/proto/Protos$WifiProjectionService;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 6
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$Service$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private getBluetoothServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$BluetoothService;",
            "Lcom/google/android/projection/proto/Protos$BluetoothService$Builder;",
            "Lcom/google/android/projection/proto/Protos$BluetoothServiceOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bluetoothServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getBluetoothService()Lcom/google/android/projection/proto/Protos$BluetoothService;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bluetoothServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bluetoothService_:Lcom/google/android/projection/proto/Protos$BluetoothService;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bluetoothServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$8100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getGenericNotificationServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$GenericNotificationService;",
            "Lcom/google/android/projection/proto/Protos$GenericNotificationService$Builder;",
            "Lcom/google/android/projection/proto/Protos$GenericNotificationServiceOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->genericNotificationServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getGenericNotificationService()Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->genericNotificationServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->genericNotificationService_:Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->genericNotificationServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getInputSourceServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$InputSourceService;",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;",
            "Lcom/google/android/projection/proto/Protos$InputSourceServiceOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->inputSourceServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getInputSourceService()Lcom/google/android/projection/proto/Protos$InputSourceService;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->inputSourceServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->inputSourceService_:Lcom/google/android/projection/proto/Protos$InputSourceService;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->inputSourceServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getMediaBrowserServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$MediaBrowserService;",
            "Lcom/google/android/projection/proto/Protos$MediaBrowserService$Builder;",
            "Lcom/google/android/projection/proto/Protos$MediaBrowserServiceOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaBrowserServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getMediaBrowserService()Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaBrowserServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaBrowserService_:Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaBrowserServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getMediaPlaybackServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;",
            "Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService$Builder;",
            "Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusServiceOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaPlaybackServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getMediaPlaybackService()Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaPlaybackServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaPlaybackService_:Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaPlaybackServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getMediaSinkServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$MediaSinkService;",
            "Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;",
            "Lcom/google/android/projection/proto/Protos$MediaSinkServiceOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSinkServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getMediaSinkService()Lcom/google/android/projection/proto/Protos$MediaSinkService;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSinkServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSinkService_:Lcom/google/android/projection/proto/Protos$MediaSinkService;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSinkServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getMediaSourceServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$MediaSourceService;",
            "Lcom/google/android/projection/proto/Protos$MediaSourceService$Builder;",
            "Lcom/google/android/projection/proto/Protos$MediaSourceServiceOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSourceServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getMediaSourceService()Lcom/google/android/projection/proto/Protos$MediaSourceService;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSourceServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSourceService_:Lcom/google/android/projection/proto/Protos$MediaSourceService;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSourceServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getNavigationStatusServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$NavigationStatusService;",
            "Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;",
            "Lcom/google/android/projection/proto/Protos$NavigationStatusServiceOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->navigationStatusServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getNavigationStatusService()Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->navigationStatusServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->navigationStatusService_:Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->navigationStatusServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getPhoneStatusServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$PhoneStatusService;",
            "Lcom/google/android/projection/proto/Protos$PhoneStatusService$Builder;",
            "Lcom/google/android/projection/proto/Protos$PhoneStatusServiceOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->phoneStatusServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getPhoneStatusService()Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->phoneStatusServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->phoneStatusService_:Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->phoneStatusServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getRadioServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$RadioService;",
            "Lcom/google/android/projection/proto/Protos$RadioService$Builder;",
            "Lcom/google/android/projection/proto/Protos$RadioServiceOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->radioServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getRadioService()Lcom/google/android/projection/proto/Protos$RadioService;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->radioServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->radioService_:Lcom/google/android/projection/proto/Protos$RadioService;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->radioServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getSensorSourceServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$SensorSourceService;",
            "Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;",
            "Lcom/google/android/projection/proto/Protos$SensorSourceServiceOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->sensorSourceServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getSensorSourceService()Lcom/google/android/projection/proto/Protos$SensorSourceService;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->sensorSourceServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->sensorSourceService_:Lcom/google/android/projection/proto/Protos$SensorSourceService;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->sensorSourceServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getVendorExtensionServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$VendorExtensionService;",
            "Lcom/google/android/projection/proto/Protos$VendorExtensionService$Builder;",
            "Lcom/google/android/projection/proto/Protos$VendorExtensionServiceOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->vendorExtensionServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getVendorExtensionService()Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->vendorExtensionServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->vendorExtensionService_:Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->vendorExtensionServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getWifiProjectionServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$WifiProjectionService;",
            "Lcom/google/android/projection/proto/Protos$WifiProjectionService$Builder;",
            "Lcom/google/android/projection/proto/Protos$WifiProjectionServiceOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->wifiProjectionServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getWifiProjectionService()Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->wifiProjectionServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->wifiProjectionService_:Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->wifiProjectionServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$Service;->access$8500()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getSensorSourceServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getMediaSinkServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getInputSourceServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getMediaSourceServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getBluetoothServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getRadioServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getNavigationStatusServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getMediaPlaybackServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getPhoneStatusServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getMediaBrowserServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getVendorExtensionServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getGenericNotificationServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getWifiProjectionServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$Service$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$Service$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$Service$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/android/projection/proto/Protos$Service;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$Service;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$Service;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->build()Lcom/google/android/projection/proto/Protos$Service;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->build()Lcom/google/android/projection/proto/Protos$Service;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/Protos$Service;
    .locals 4

    .line 3
    new-instance v0, Lcom/google/android/projection/proto/Protos$Service;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/Protos$Service;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V

    .line 4
    iget v1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 5
    iget v2, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->id_:I

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$Service;->access$8702(Lcom/google/android/projection/proto/Protos$Service;I)I

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_2

    .line 6
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->sensorSourceServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_1

    .line 7
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->sensorSourceService_:Lcom/google/android/projection/proto/Protos$SensorSourceService;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$Service;->access$8802(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$SensorSourceService;)Lcom/google/android/projection/proto/Protos$SensorSourceService;

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/Protos$SensorSourceService;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$Service;->access$8802(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$SensorSourceService;)Lcom/google/android/projection/proto/Protos$SensorSourceService;

    :goto_1
    or-int/lit8 v2, v2, 0x2

    :cond_2
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_4

    .line 9
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSinkServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_3

    .line 10
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSinkService_:Lcom/google/android/projection/proto/Protos$MediaSinkService;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$Service;->access$8902(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$MediaSinkService;)Lcom/google/android/projection/proto/Protos$MediaSinkService;

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/Protos$MediaSinkService;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$Service;->access$8902(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$MediaSinkService;)Lcom/google/android/projection/proto/Protos$MediaSinkService;

    :goto_2
    or-int/lit8 v2, v2, 0x4

    :cond_4
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_6

    .line 12
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->inputSourceServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_5

    .line 13
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->inputSourceService_:Lcom/google/android/projection/proto/Protos$InputSourceService;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$Service;->access$9002(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$InputSourceService;)Lcom/google/android/projection/proto/Protos$InputSourceService;

    goto :goto_3

    .line 14
    :cond_5
    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/Protos$InputSourceService;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$Service;->access$9002(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$InputSourceService;)Lcom/google/android/projection/proto/Protos$InputSourceService;

    :goto_3
    or-int/lit8 v2, v2, 0x8

    :cond_6
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_8

    .line 15
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSourceServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_7

    .line 16
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSourceService_:Lcom/google/android/projection/proto/Protos$MediaSourceService;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$Service;->access$9102(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$MediaSourceService;)Lcom/google/android/projection/proto/Protos$MediaSourceService;

    goto :goto_4

    .line 17
    :cond_7
    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/Protos$MediaSourceService;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$Service;->access$9102(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$MediaSourceService;)Lcom/google/android/projection/proto/Protos$MediaSourceService;

    :goto_4
    or-int/lit8 v2, v2, 0x10

    :cond_8
    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_a

    .line 18
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bluetoothServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_9

    .line 19
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bluetoothService_:Lcom/google/android/projection/proto/Protos$BluetoothService;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$Service;->access$9202(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$BluetoothService;)Lcom/google/android/projection/proto/Protos$BluetoothService;

    goto :goto_5

    .line 20
    :cond_9
    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/Protos$BluetoothService;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$Service;->access$9202(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$BluetoothService;)Lcom/google/android/projection/proto/Protos$BluetoothService;

    :goto_5
    or-int/lit8 v2, v2, 0x20

    :cond_a
    and-int/lit8 v3, v1, 0x40

    if-eqz v3, :cond_c

    .line 21
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->radioServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_b

    .line 22
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->radioService_:Lcom/google/android/projection/proto/Protos$RadioService;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$Service;->access$9302(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$RadioService;)Lcom/google/android/projection/proto/Protos$RadioService;

    goto :goto_6

    .line 23
    :cond_b
    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/Protos$RadioService;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$Service;->access$9302(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$RadioService;)Lcom/google/android/projection/proto/Protos$RadioService;

    :goto_6
    or-int/lit8 v2, v2, 0x40

    :cond_c
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_e

    .line 24
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->navigationStatusServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_d

    .line 25
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->navigationStatusService_:Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$Service;->access$9402(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$NavigationStatusService;)Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    goto :goto_7

    .line 26
    :cond_d
    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$Service;->access$9402(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$NavigationStatusService;)Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    :goto_7
    or-int/lit16 v2, v2, 0x80

    :cond_e
    and-int/lit16 v3, v1, 0x100

    if-eqz v3, :cond_10

    .line 27
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaPlaybackServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_f

    .line 28
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaPlaybackService_:Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$Service;->access$9502(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;)Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    goto :goto_8

    .line 29
    :cond_f
    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$Service;->access$9502(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;)Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    :goto_8
    or-int/lit16 v2, v2, 0x100

    :cond_10
    and-int/lit16 v3, v1, 0x200

    if-eqz v3, :cond_12

    .line 30
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->phoneStatusServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_11

    .line 31
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->phoneStatusService_:Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$Service;->access$9602(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$PhoneStatusService;)Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    goto :goto_9

    .line 32
    :cond_11
    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$Service;->access$9602(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$PhoneStatusService;)Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    :goto_9
    or-int/lit16 v2, v2, 0x200

    :cond_12
    and-int/lit16 v3, v1, 0x400

    if-eqz v3, :cond_14

    .line 33
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaBrowserServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_13

    .line 34
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaBrowserService_:Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$Service;->access$9702(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$MediaBrowserService;)Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    goto :goto_a

    .line 35
    :cond_13
    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$Service;->access$9702(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$MediaBrowserService;)Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    :goto_a
    or-int/lit16 v2, v2, 0x400

    :cond_14
    and-int/lit16 v3, v1, 0x800

    if-eqz v3, :cond_16

    .line 36
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->vendorExtensionServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_15

    .line 37
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->vendorExtensionService_:Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$Service;->access$9802(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$VendorExtensionService;)Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    goto :goto_b

    .line 38
    :cond_15
    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$Service;->access$9802(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$VendorExtensionService;)Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    :goto_b
    or-int/lit16 v2, v2, 0x800

    :cond_16
    and-int/lit16 v3, v1, 0x1000

    if-eqz v3, :cond_18

    .line 39
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->genericNotificationServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_17

    .line 40
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->genericNotificationService_:Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$Service;->access$9902(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$GenericNotificationService;)Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    goto :goto_c

    .line 41
    :cond_17
    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$Service;->access$9902(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$GenericNotificationService;)Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    :goto_c
    or-int/lit16 v2, v2, 0x1000

    :cond_18
    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_1a

    .line 42
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->wifiProjectionServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_19

    .line 43
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->wifiProjectionService_:Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$Service;->access$10002(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$WifiProjectionService;)Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    goto :goto_d

    .line 44
    :cond_19
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$Service;->access$10002(Lcom/google/android/projection/proto/Protos$Service;Lcom/google/android/projection/proto/Protos$WifiProjectionService;)Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    :goto_d
    or-int/lit16 v2, v2, 0x2000

    .line 45
    :cond_1a
    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$Service;->access$10102(Lcom/google/android/projection/proto/Protos$Service;I)I

    .line 46
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$Service;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$Service;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->id_:I

    .line 7
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 8
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->sensorSourceServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 9
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->sensorSourceService_:Lcom/google/android/projection/proto/Protos$SensorSourceService;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 12
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSinkServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 13
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSinkService_:Lcom/google/android/projection/proto/Protos$MediaSinkService;

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    :goto_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 16
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->inputSourceServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_2

    .line 17
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->inputSourceService_:Lcom/google/android/projection/proto/Protos$InputSourceService;

    goto :goto_2

    .line 18
    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 19
    :goto_2
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 20
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSourceServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_3

    .line 21
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSourceService_:Lcom/google/android/projection/proto/Protos$MediaSourceService;

    goto :goto_3

    .line 22
    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    :goto_3
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 24
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bluetoothServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_4

    .line 25
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bluetoothService_:Lcom/google/android/projection/proto/Protos$BluetoothService;

    goto :goto_4

    .line 26
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 27
    :goto_4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 28
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->radioServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_5

    .line 29
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->radioService_:Lcom/google/android/projection/proto/Protos$RadioService;

    goto :goto_5

    .line 30
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 31
    :goto_5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 32
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->navigationStatusServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_6

    .line 33
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->navigationStatusService_:Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    goto :goto_6

    .line 34
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 35
    :goto_6
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 36
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaPlaybackServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_7

    .line 37
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaPlaybackService_:Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    goto :goto_7

    .line 38
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 39
    :goto_7
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 40
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->phoneStatusServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_8

    .line 41
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->phoneStatusService_:Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    goto :goto_8

    .line 42
    :cond_8
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 43
    :goto_8
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 44
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaBrowserServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_9

    .line 45
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaBrowserService_:Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    goto :goto_9

    .line 46
    :cond_9
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 47
    :goto_9
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 48
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->vendorExtensionServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_a

    .line 49
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->vendorExtensionService_:Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    goto :goto_a

    .line 50
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 51
    :goto_a
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 52
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->genericNotificationServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    .line 53
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->genericNotificationService_:Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    goto :goto_b

    .line 54
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 55
    :goto_b
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 56
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->wifiProjectionServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_c

    .line 57
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->wifiProjectionService_:Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    goto :goto_c

    .line 58
    :cond_c
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 59
    :goto_c
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->clear()Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->clear()Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->clear()Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->clear()Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBluetoothService()Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bluetoothServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bluetoothService_:Lcom/google/android/projection/proto/Protos$BluetoothService;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 13
    .line 14
    .line 15
    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 16
    .line 17
    and-int/lit8 v0, v0, -0x21

    .line 18
    .line 19
    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 20
    .line 21
    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$Service$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$Service$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$Service$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearGenericNotificationService()Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->genericNotificationServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->genericNotificationService_:Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 13
    .line 14
    .line 15
    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 16
    .line 17
    and-int/lit16 v0, v0, -0x1001

    .line 18
    .line 19
    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 20
    .line 21
    return-object p0
.end method

.method public clearId()Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->id_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearInputSourceService()Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->inputSourceServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->inputSourceService_:Lcom/google/android/projection/proto/Protos$InputSourceService;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 13
    .line 14
    .line 15
    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 16
    .line 17
    and-int/lit8 v0, v0, -0x9

    .line 18
    .line 19
    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 20
    .line 21
    return-object p0
.end method

.method public clearMediaBrowserService()Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaBrowserServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaBrowserService_:Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 13
    .line 14
    .line 15
    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 16
    .line 17
    and-int/lit16 v0, v0, -0x401

    .line 18
    .line 19
    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 20
    .line 21
    return-object p0
.end method

.method public clearMediaPlaybackService()Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaPlaybackServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaPlaybackService_:Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 13
    .line 14
    .line 15
    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 16
    .line 17
    and-int/lit16 v0, v0, -0x101

    .line 18
    .line 19
    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 20
    .line 21
    return-object p0
.end method

.method public clearMediaSinkService()Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSinkServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSinkService_:Lcom/google/android/projection/proto/Protos$MediaSinkService;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 13
    .line 14
    .line 15
    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 16
    .line 17
    and-int/lit8 v0, v0, -0x5

    .line 18
    .line 19
    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 20
    .line 21
    return-object p0
.end method

.method public clearMediaSourceService()Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSourceServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSourceService_:Lcom/google/android/projection/proto/Protos$MediaSourceService;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 13
    .line 14
    .line 15
    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 16
    .line 17
    and-int/lit8 v0, v0, -0x11

    .line 18
    .line 19
    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 20
    .line 21
    return-object p0
.end method

.method public clearNavigationStatusService()Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->navigationStatusServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->navigationStatusService_:Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 13
    .line 14
    .line 15
    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 16
    .line 17
    and-int/lit16 v0, v0, -0x81

    .line 18
    .line 19
    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 20
    .line 21
    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$Service$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$Service$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$Service$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$Service$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearPhoneStatusService()Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->phoneStatusServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->phoneStatusService_:Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 13
    .line 14
    .line 15
    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 16
    .line 17
    and-int/lit16 v0, v0, -0x201

    .line 18
    .line 19
    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 20
    .line 21
    return-object p0
.end method

.method public clearRadioService()Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->radioServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->radioService_:Lcom/google/android/projection/proto/Protos$RadioService;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 13
    .line 14
    .line 15
    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 16
    .line 17
    and-int/lit8 v0, v0, -0x41

    .line 18
    .line 19
    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 20
    .line 21
    return-object p0
.end method

.method public clearSensorSourceService()Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->sensorSourceServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->sensorSourceService_:Lcom/google/android/projection/proto/Protos$SensorSourceService;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 13
    .line 14
    .line 15
    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 16
    .line 17
    and-int/lit8 v0, v0, -0x3

    .line 18
    .line 19
    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 20
    .line 21
    return-object p0
.end method

.method public clearVendorExtensionService()Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->vendorExtensionServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->vendorExtensionService_:Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 13
    .line 14
    .line 15
    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 16
    .line 17
    and-int/lit16 v0, v0, -0x801

    .line 18
    .line 19
    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 20
    .line 21
    return-object p0
.end method

.method public clearWifiProjectionService()Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->wifiProjectionServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->wifiProjectionService_:Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 13
    .line 14
    .line 15
    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 16
    .line 17
    and-int/lit16 v0, v0, -0x2001

    .line 18
    .line 19
    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 20
    .line 21
    return-object p0
.end method

.method public clone()Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$Service$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->clone()Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->clone()Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->clone()Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->clone()Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->clone()Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->clone()Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothService()Lcom/google/android/projection/proto/Protos$BluetoothService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bluetoothServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bluetoothService_:Lcom/google/android/projection/proto/Protos$BluetoothService;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/Protos$BluetoothService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$BluetoothService;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Protos$BluetoothService;

    .line 19
    .line 20
    return-object v0
.end method

.method public getBluetoothServiceBuilder()Lcom/google/android/projection/proto/Protos$BluetoothService$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getBluetoothServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Protos$BluetoothService$Builder;

    .line 19
    .line 20
    return-object v0
.end method

.method public getBluetoothServiceOrBuilder()Lcom/google/android/projection/proto/Protos$BluetoothServiceOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bluetoothServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/projection/proto/Protos$BluetoothServiceOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bluetoothService_:Lcom/google/android/projection/proto/Protos$BluetoothService;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/Protos$BluetoothService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$BluetoothService;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$Service;
    .locals 1

    .line 3
    invoke-static {}, Lcom/google/android/projection/proto/Protos$Service;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$Service;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$Service;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$Service;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$8100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getGenericNotificationService()Lcom/google/android/projection/proto/Protos$GenericNotificationService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->genericNotificationServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->genericNotificationService_:Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/Protos$GenericNotificationService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    .line 19
    .line 20
    return-object v0
.end method

.method public getGenericNotificationServiceBuilder()Lcom/google/android/projection/proto/Protos$GenericNotificationService$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x1000

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getGenericNotificationServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Protos$GenericNotificationService$Builder;

    .line 19
    .line 20
    return-object v0
.end method

.method public getGenericNotificationServiceOrBuilder()Lcom/google/android/projection/proto/Protos$GenericNotificationServiceOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->genericNotificationServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/projection/proto/Protos$GenericNotificationServiceOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->genericNotificationService_:Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/Protos$GenericNotificationService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->id_:I

    return v0
.end method

.method public getInputSourceService()Lcom/google/android/projection/proto/Protos$InputSourceService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->inputSourceServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->inputSourceService_:Lcom/google/android/projection/proto/Protos$InputSourceService;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/Protos$InputSourceService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$InputSourceService;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Protos$InputSourceService;

    .line 19
    .line 20
    return-object v0
.end method

.method public getInputSourceServiceBuilder()Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getInputSourceServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    .line 19
    .line 20
    return-object v0
.end method

.method public getInputSourceServiceOrBuilder()Lcom/google/android/projection/proto/Protos$InputSourceServiceOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->inputSourceServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/projection/proto/Protos$InputSourceServiceOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->inputSourceService_:Lcom/google/android/projection/proto/Protos$InputSourceService;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/Protos$InputSourceService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$InputSourceService;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getMediaBrowserService()Lcom/google/android/projection/proto/Protos$MediaBrowserService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaBrowserServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaBrowserService_:Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaBrowserService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    .line 19
    .line 20
    return-object v0
.end method

.method public getMediaBrowserServiceBuilder()Lcom/google/android/projection/proto/Protos$MediaBrowserService$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x400

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getMediaBrowserServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Protos$MediaBrowserService$Builder;

    .line 19
    .line 20
    return-object v0
.end method

.method public getMediaBrowserServiceOrBuilder()Lcom/google/android/projection/proto/Protos$MediaBrowserServiceOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaBrowserServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/projection/proto/Protos$MediaBrowserServiceOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaBrowserService_:Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaBrowserService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getMediaPlaybackService()Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaPlaybackServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaPlaybackService_:Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    .line 19
    .line 20
    return-object v0
.end method

.method public getMediaPlaybackServiceBuilder()Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x100

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getMediaPlaybackServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService$Builder;

    .line 19
    .line 20
    return-object v0
.end method

.method public getMediaPlaybackServiceOrBuilder()Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusServiceOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaPlaybackServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusServiceOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaPlaybackService_:Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getMediaSinkService()Lcom/google/android/projection/proto/Protos$MediaSinkService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSinkServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSinkService_:Lcom/google/android/projection/proto/Protos$MediaSinkService;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaSinkService;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Protos$MediaSinkService;

    .line 19
    .line 20
    return-object v0
.end method

.method public getMediaSinkServiceBuilder()Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getMediaSinkServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    .line 19
    .line 20
    return-object v0
.end method

.method public getMediaSinkServiceOrBuilder()Lcom/google/android/projection/proto/Protos$MediaSinkServiceOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSinkServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/projection/proto/Protos$MediaSinkServiceOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSinkService_:Lcom/google/android/projection/proto/Protos$MediaSinkService;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaSinkService;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getMediaSourceService()Lcom/google/android/projection/proto/Protos$MediaSourceService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSourceServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSourceService_:Lcom/google/android/projection/proto/Protos$MediaSourceService;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaSourceService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaSourceService;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Protos$MediaSourceService;

    .line 19
    .line 20
    return-object v0
.end method

.method public getMediaSourceServiceBuilder()Lcom/google/android/projection/proto/Protos$MediaSourceService$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getMediaSourceServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Protos$MediaSourceService$Builder;

    .line 19
    .line 20
    return-object v0
.end method

.method public getMediaSourceServiceOrBuilder()Lcom/google/android/projection/proto/Protos$MediaSourceServiceOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSourceServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/projection/proto/Protos$MediaSourceServiceOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSourceService_:Lcom/google/android/projection/proto/Protos$MediaSourceService;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaSourceService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaSourceService;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getNavigationStatusService()Lcom/google/android/projection/proto/Protos$NavigationStatusService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->navigationStatusServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->navigationStatusService_:Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    .line 19
    .line 20
    return-object v0
.end method

.method public getNavigationStatusServiceBuilder()Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x80

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getNavigationStatusServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    .line 19
    .line 20
    return-object v0
.end method

.method public getNavigationStatusServiceOrBuilder()Lcom/google/android/projection/proto/Protos$NavigationStatusServiceOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->navigationStatusServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/projection/proto/Protos$NavigationStatusServiceOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->navigationStatusService_:Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getPhoneStatusService()Lcom/google/android/projection/proto/Protos$PhoneStatusService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->phoneStatusServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->phoneStatusService_:Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/Protos$PhoneStatusService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    .line 19
    .line 20
    return-object v0
.end method

.method public getPhoneStatusServiceBuilder()Lcom/google/android/projection/proto/Protos$PhoneStatusService$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x200

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getPhoneStatusServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Protos$PhoneStatusService$Builder;

    .line 19
    .line 20
    return-object v0
.end method

.method public getPhoneStatusServiceOrBuilder()Lcom/google/android/projection/proto/Protos$PhoneStatusServiceOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->phoneStatusServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/projection/proto/Protos$PhoneStatusServiceOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->phoneStatusService_:Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/Protos$PhoneStatusService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getRadioService()Lcom/google/android/projection/proto/Protos$RadioService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->radioServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->radioService_:Lcom/google/android/projection/proto/Protos$RadioService;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$RadioService;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Protos$RadioService;

    .line 19
    .line 20
    return-object v0
.end method

.method public getRadioServiceBuilder()Lcom/google/android/projection/proto/Protos$RadioService$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x40

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getRadioServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Protos$RadioService$Builder;

    .line 19
    .line 20
    return-object v0
.end method

.method public getRadioServiceOrBuilder()Lcom/google/android/projection/proto/Protos$RadioServiceOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->radioServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/projection/proto/Protos$RadioServiceOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->radioService_:Lcom/google/android/projection/proto/Protos$RadioService;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$RadioService;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getSensorSourceService()Lcom/google/android/projection/proto/Protos$SensorSourceService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->sensorSourceServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->sensorSourceService_:Lcom/google/android/projection/proto/Protos$SensorSourceService;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$SensorSourceService;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Protos$SensorSourceService;

    .line 19
    .line 20
    return-object v0
.end method

.method public getSensorSourceServiceBuilder()Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getSensorSourceServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;

    .line 19
    .line 20
    return-object v0
.end method

.method public getSensorSourceServiceOrBuilder()Lcom/google/android/projection/proto/Protos$SensorSourceServiceOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->sensorSourceServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/projection/proto/Protos$SensorSourceServiceOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->sensorSourceService_:Lcom/google/android/projection/proto/Protos$SensorSourceService;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$SensorSourceService;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getVendorExtensionService()Lcom/google/android/projection/proto/Protos$VendorExtensionService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->vendorExtensionServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->vendorExtensionService_:Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/Protos$VendorExtensionService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    .line 19
    .line 20
    return-object v0
.end method

.method public getVendorExtensionServiceBuilder()Lcom/google/android/projection/proto/Protos$VendorExtensionService$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x800

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getVendorExtensionServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Protos$VendorExtensionService$Builder;

    .line 19
    .line 20
    return-object v0
.end method

.method public getVendorExtensionServiceOrBuilder()Lcom/google/android/projection/proto/Protos$VendorExtensionServiceOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->vendorExtensionServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/projection/proto/Protos$VendorExtensionServiceOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->vendorExtensionService_:Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/Protos$VendorExtensionService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getWifiProjectionService()Lcom/google/android/projection/proto/Protos$WifiProjectionService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->wifiProjectionServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->wifiProjectionService_:Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/Protos$WifiProjectionService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    .line 19
    .line 20
    return-object v0
.end method

.method public getWifiProjectionServiceBuilder()Lcom/google/android/projection/proto/Protos$WifiProjectionService$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x2000

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getWifiProjectionServiceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Protos$WifiProjectionService$Builder;

    .line 19
    .line 20
    return-object v0
.end method

.method public getWifiProjectionServiceOrBuilder()Lcom/google/android/projection/proto/Protos$WifiProjectionServiceOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->wifiProjectionServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/projection/proto/Protos$WifiProjectionServiceOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->wifiProjectionService_:Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/Protos$WifiProjectionService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public hasBluetoothService()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->hasId()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->hasSensorSourceService()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getSensorSourceService()Lcom/google/android/projection/proto/Protos$SensorSourceService;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->isInitialized()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return v1

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->hasMediaSinkService()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getMediaSinkService()Lcom/google/android/projection/proto/Protos$MediaSinkService;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->isInitialized()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    return v1

    .line 43
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->hasInputSourceService()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getInputSourceService()Lcom/google/android/projection/proto/Protos$InputSourceService;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$InputSourceService;->isInitialized()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_3

    .line 58
    .line 59
    return v1

    .line 60
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->hasMediaSourceService()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getMediaSourceService()Lcom/google/android/projection/proto/Protos$MediaSourceService;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$MediaSourceService;->isInitialized()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_4

    .line 75
    .line 76
    return v1

    .line 77
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->hasBluetoothService()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getBluetoothService()Lcom/google/android/projection/proto/Protos$BluetoothService;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$BluetoothService;->isInitialized()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_5

    .line 92
    .line 93
    return v1

    .line 94
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->hasRadioService()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_6

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getRadioService()Lcom/google/android/projection/proto/Protos$RadioService;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$RadioService;->isInitialized()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-nez v0, :cond_6

    .line 109
    .line 110
    return v1

    .line 111
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->hasNavigationStatusService()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_7

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getNavigationStatusService()Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->isInitialized()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-nez v0, :cond_7

    .line 126
    .line 127
    return v1

    .line 128
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->hasVendorExtensionService()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_8

    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->getVendorExtensionService()Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$VendorExtensionService;->isInitialized()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-nez v0, :cond_8

    .line 143
    .line 144
    return v1

    .line 145
    :cond_8
    const/4 v0, 0x1

    .line 146
    return v0
.end method

.method public mergeBluetoothService(Lcom/google/android/projection/proto/Protos$BluetoothService;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bluetoothServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0x20

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bluetoothService_:Lcom/google/android/projection/proto/Protos$BluetoothService;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/projection/proto/Protos$BluetoothService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$BluetoothService;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bluetoothService_:Lcom/google/android/projection/proto/Protos$BluetoothService;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$BluetoothService;->newBuilder(Lcom/google/android/projection/proto/Protos$BluetoothService;)Lcom/google/android/projection/proto/Protos$BluetoothService$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$BluetoothService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$BluetoothService;)Lcom/google/android/projection/proto/Protos$BluetoothService$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$BluetoothService$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$BluetoothService;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bluetoothService_:Lcom/google/android/projection/proto/Protos$BluetoothService;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bluetoothService_:Lcom/google/android/projection/proto/Protos$BluetoothService;

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 45
    .line 46
    .line 47
    :goto_1
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 48
    .line 49
    or-int/lit8 p1, p1, 0x20

    .line 50
    .line 51
    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 52
    .line 53
    return-object p0
.end method

.method public mergeFrom(Lcom/google/android/projection/proto/Protos$Service;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 10
    invoke-static {}, Lcom/google/android/projection/proto/Protos$Service;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$Service;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->setId(I)Lcom/google/android/projection/proto/Protos$Service$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->hasSensorSourceService()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->getSensorSourceService()Lcom/google/android/projection/proto/Protos$SensorSourceService;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->mergeSensorSourceService(Lcom/google/android/projection/proto/Protos$SensorSourceService;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->hasMediaSinkService()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->getMediaSinkService()Lcom/google/android/projection/proto/Protos$MediaSinkService;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->mergeMediaSinkService(Lcom/google/android/projection/proto/Protos$MediaSinkService;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    .line 17
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->hasInputSourceService()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->getInputSourceService()Lcom/google/android/projection/proto/Protos$InputSourceService;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->mergeInputSourceService(Lcom/google/android/projection/proto/Protos$InputSourceService;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->hasMediaSourceService()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->getMediaSourceService()Lcom/google/android/projection/proto/Protos$MediaSourceService;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->mergeMediaSourceService(Lcom/google/android/projection/proto/Protos$MediaSourceService;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    .line 21
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->hasBluetoothService()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->getBluetoothService()Lcom/google/android/projection/proto/Protos$BluetoothService;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->mergeBluetoothService(Lcom/google/android/projection/proto/Protos$BluetoothService;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    .line 23
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->hasRadioService()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 24
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->getRadioService()Lcom/google/android/projection/proto/Protos$RadioService;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->mergeRadioService(Lcom/google/android/projection/proto/Protos$RadioService;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    .line 25
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->hasNavigationStatusService()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 26
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->getNavigationStatusService()Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->mergeNavigationStatusService(Lcom/google/android/projection/proto/Protos$NavigationStatusService;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    .line 27
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->hasMediaPlaybackService()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 28
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->getMediaPlaybackService()Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->mergeMediaPlaybackService(Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    .line 29
    :cond_9
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->hasPhoneStatusService()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 30
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->getPhoneStatusService()Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->mergePhoneStatusService(Lcom/google/android/projection/proto/Protos$PhoneStatusService;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    .line 31
    :cond_a
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->hasMediaBrowserService()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 32
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->getMediaBrowserService()Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->mergeMediaBrowserService(Lcom/google/android/projection/proto/Protos$MediaBrowserService;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    .line 33
    :cond_b
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->hasVendorExtensionService()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 34
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->getVendorExtensionService()Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->mergeVendorExtensionService(Lcom/google/android/projection/proto/Protos$VendorExtensionService;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    .line 35
    :cond_c
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->hasGenericNotificationService()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 36
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->getGenericNotificationService()Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->mergeGenericNotificationService(Lcom/google/android/projection/proto/Protos$GenericNotificationService;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    .line 37
    :cond_d
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->hasWifiProjectionService()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 38
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Service;->getWifiProjectionService()Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->mergeWifiProjectionService(Lcom/google/android/projection/proto/Protos$WifiProjectionService;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    .line 39
    :cond_e
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$Service;->access$10200(Lcom/google/android/projection/proto/Protos$Service;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$Service$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    .line 40
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 2

    const/4 v0, 0x0

    .line 41
    :try_start_0
    sget-object v1, Lcom/google/android/projection/proto/Protos$Service;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$Service;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$Service$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$Service;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/android/projection/proto/Protos$Service;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$Service$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$Service;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    .line 46
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/google/android/projection/proto/Protos$Service;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/google/android/projection/proto/Protos$Service;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$Service$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$Service;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$Service$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$Service$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$Service$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$Service$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$Service$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$Service$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeGenericNotificationService(Lcom/google/android/projection/proto/Protos$GenericNotificationService;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->genericNotificationServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 6
    .line 7
    and-int/lit16 v0, v0, 0x1000

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->genericNotificationService_:Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/projection/proto/Protos$GenericNotificationService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->genericNotificationService_:Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$GenericNotificationService;->newBuilder(Lcom/google/android/projection/proto/Protos$GenericNotificationService;)Lcom/google/android/projection/proto/Protos$GenericNotificationService$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$GenericNotificationService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$GenericNotificationService;)Lcom/google/android/projection/proto/Protos$GenericNotificationService$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$GenericNotificationService$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->genericNotificationService_:Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->genericNotificationService_:Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 45
    .line 46
    .line 47
    :goto_1
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 48
    .line 49
    or-int/lit16 p1, p1, 0x1000

    .line 50
    .line 51
    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 52
    .line 53
    return-object p0
.end method

.method public mergeInputSourceService(Lcom/google/android/projection/proto/Protos$InputSourceService;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->inputSourceServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0x8

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->inputSourceService_:Lcom/google/android/projection/proto/Protos$InputSourceService;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/projection/proto/Protos$InputSourceService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$InputSourceService;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->inputSourceService_:Lcom/google/android/projection/proto/Protos$InputSourceService;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$InputSourceService;->newBuilder(Lcom/google/android/projection/proto/Protos$InputSourceService;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$InputSourceService;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$InputSourceService;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->inputSourceService_:Lcom/google/android/projection/proto/Protos$InputSourceService;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->inputSourceService_:Lcom/google/android/projection/proto/Protos$InputSourceService;

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 45
    .line 46
    .line 47
    :goto_1
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 48
    .line 49
    or-int/lit8 p1, p1, 0x8

    .line 50
    .line 51
    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 52
    .line 53
    return-object p0
.end method

.method public mergeMediaBrowserService(Lcom/google/android/projection/proto/Protos$MediaBrowserService;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaBrowserServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 6
    .line 7
    and-int/lit16 v0, v0, 0x400

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaBrowserService_:Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaBrowserService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaBrowserService_:Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$MediaBrowserService;->newBuilder(Lcom/google/android/projection/proto/Protos$MediaBrowserService;)Lcom/google/android/projection/proto/Protos$MediaBrowserService$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$MediaBrowserService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$MediaBrowserService;)Lcom/google/android/projection/proto/Protos$MediaBrowserService$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaBrowserService$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaBrowserService_:Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaBrowserService_:Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 45
    .line 46
    .line 47
    :goto_1
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 48
    .line 49
    or-int/lit16 p1, p1, 0x400

    .line 50
    .line 51
    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 52
    .line 53
    return-object p0
.end method

.method public mergeMediaPlaybackService(Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaPlaybackServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 6
    .line 7
    and-int/lit16 v0, v0, 0x100

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaPlaybackService_:Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaPlaybackService_:Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;->newBuilder(Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;)Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;)Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaPlaybackService_:Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaPlaybackService_:Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 45
    .line 46
    .line 47
    :goto_1
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 48
    .line 49
    or-int/lit16 p1, p1, 0x100

    .line 50
    .line 51
    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 52
    .line 53
    return-object p0
.end method

.method public mergeMediaSinkService(Lcom/google/android/projection/proto/Protos$MediaSinkService;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSinkServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0x4

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSinkService_:Lcom/google/android/projection/proto/Protos$MediaSinkService;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaSinkService;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSinkService_:Lcom/google/android/projection/proto/Protos$MediaSinkService;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->newBuilder(Lcom/google/android/projection/proto/Protos$MediaSinkService;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$MediaSinkService;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$MediaSinkService;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSinkService_:Lcom/google/android/projection/proto/Protos$MediaSinkService;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSinkService_:Lcom/google/android/projection/proto/Protos$MediaSinkService;

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 45
    .line 46
    .line 47
    :goto_1
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 48
    .line 49
    or-int/lit8 p1, p1, 0x4

    .line 50
    .line 51
    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 52
    .line 53
    return-object p0
.end method

.method public mergeMediaSourceService(Lcom/google/android/projection/proto/Protos$MediaSourceService;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSourceServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0x10

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSourceService_:Lcom/google/android/projection/proto/Protos$MediaSourceService;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaSourceService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaSourceService;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSourceService_:Lcom/google/android/projection/proto/Protos$MediaSourceService;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$MediaSourceService;->newBuilder(Lcom/google/android/projection/proto/Protos$MediaSourceService;)Lcom/google/android/projection/proto/Protos$MediaSourceService$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$MediaSourceService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$MediaSourceService;)Lcom/google/android/projection/proto/Protos$MediaSourceService$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSourceService$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$MediaSourceService;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSourceService_:Lcom/google/android/projection/proto/Protos$MediaSourceService;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSourceService_:Lcom/google/android/projection/proto/Protos$MediaSourceService;

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 45
    .line 46
    .line 47
    :goto_1
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 48
    .line 49
    or-int/lit8 p1, p1, 0x10

    .line 50
    .line 51
    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 52
    .line 53
    return-object p0
.end method

.method public mergeNavigationStatusService(Lcom/google/android/projection/proto/Protos$NavigationStatusService;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->navigationStatusServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 6
    .line 7
    and-int/lit16 v0, v0, 0x80

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->navigationStatusService_:Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->navigationStatusService_:Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->newBuilder(Lcom/google/android/projection/proto/Protos$NavigationStatusService;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationStatusService;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->navigationStatusService_:Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->navigationStatusService_:Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 45
    .line 46
    .line 47
    :goto_1
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 48
    .line 49
    or-int/lit16 p1, p1, 0x80

    .line 50
    .line 51
    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 52
    .line 53
    return-object p0
.end method

.method public mergePhoneStatusService(Lcom/google/android/projection/proto/Protos$PhoneStatusService;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->phoneStatusServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 6
    .line 7
    and-int/lit16 v0, v0, 0x200

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->phoneStatusService_:Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/projection/proto/Protos$PhoneStatusService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->phoneStatusService_:Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$PhoneStatusService;->newBuilder(Lcom/google/android/projection/proto/Protos$PhoneStatusService;)Lcom/google/android/projection/proto/Protos$PhoneStatusService$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$PhoneStatusService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$PhoneStatusService;)Lcom/google/android/projection/proto/Protos$PhoneStatusService$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$PhoneStatusService$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->phoneStatusService_:Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->phoneStatusService_:Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 45
    .line 46
    .line 47
    :goto_1
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 48
    .line 49
    or-int/lit16 p1, p1, 0x200

    .line 50
    .line 51
    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 52
    .line 53
    return-object p0
.end method

.method public mergeRadioService(Lcom/google/android/projection/proto/Protos$RadioService;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->radioServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0x40

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->radioService_:Lcom/google/android/projection/proto/Protos$RadioService;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$RadioService;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->radioService_:Lcom/google/android/projection/proto/Protos$RadioService;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$RadioService;->newBuilder(Lcom/google/android/projection/proto/Protos$RadioService;)Lcom/google/android/projection/proto/Protos$RadioService$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$RadioService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$RadioService;)Lcom/google/android/projection/proto/Protos$RadioService$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioService$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$RadioService;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->radioService_:Lcom/google/android/projection/proto/Protos$RadioService;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->radioService_:Lcom/google/android/projection/proto/Protos$RadioService;

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 45
    .line 46
    .line 47
    :goto_1
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 48
    .line 49
    or-int/lit8 p1, p1, 0x40

    .line 50
    .line 51
    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 52
    .line 53
    return-object p0
.end method

.method public mergeSensorSourceService(Lcom/google/android/projection/proto/Protos$SensorSourceService;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->sensorSourceServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->sensorSourceService_:Lcom/google/android/projection/proto/Protos$SensorSourceService;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$SensorSourceService;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->sensorSourceService_:Lcom/google/android/projection/proto/Protos$SensorSourceService;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->newBuilder(Lcom/google/android/projection/proto/Protos$SensorSourceService;)Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$SensorSourceService;)Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$SensorSourceService;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->sensorSourceService_:Lcom/google/android/projection/proto/Protos$SensorSourceService;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->sensorSourceService_:Lcom/google/android/projection/proto/Protos$SensorSourceService;

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 45
    .line 46
    .line 47
    :goto_1
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 48
    .line 49
    or-int/lit8 p1, p1, 0x2

    .line 50
    .line 51
    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 52
    .line 53
    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$Service$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$Service$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$Service$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$Service$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeVendorExtensionService(Lcom/google/android/projection/proto/Protos$VendorExtensionService;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->vendorExtensionServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 6
    .line 7
    and-int/lit16 v0, v0, 0x800

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->vendorExtensionService_:Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/projection/proto/Protos$VendorExtensionService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->vendorExtensionService_:Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$VendorExtensionService;->newBuilder(Lcom/google/android/projection/proto/Protos$VendorExtensionService;)Lcom/google/android/projection/proto/Protos$VendorExtensionService$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$VendorExtensionService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$VendorExtensionService;)Lcom/google/android/projection/proto/Protos$VendorExtensionService$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VendorExtensionService$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->vendorExtensionService_:Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->vendorExtensionService_:Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 45
    .line 46
    .line 47
    :goto_1
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 48
    .line 49
    or-int/lit16 p1, p1, 0x800

    .line 50
    .line 51
    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 52
    .line 53
    return-object p0
.end method

.method public mergeWifiProjectionService(Lcom/google/android/projection/proto/Protos$WifiProjectionService;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->wifiProjectionServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 6
    .line 7
    and-int/lit16 v0, v0, 0x2000

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->wifiProjectionService_:Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/projection/proto/Protos$WifiProjectionService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->wifiProjectionService_:Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$WifiProjectionService;->newBuilder(Lcom/google/android/projection/proto/Protos$WifiProjectionService;)Lcom/google/android/projection/proto/Protos$WifiProjectionService$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$WifiProjectionService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$WifiProjectionService;)Lcom/google/android/projection/proto/Protos$WifiProjectionService$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$WifiProjectionService$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->wifiProjectionService_:Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->wifiProjectionService_:Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 45
    .line 46
    .line 47
    :goto_1
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 48
    .line 49
    or-int/lit16 p1, p1, 0x2000

    .line 50
    .line 51
    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 52
    .line 53
    return-object p0
.end method

.method public setBluetoothService(Lcom/google/android/projection/proto/Protos$BluetoothService$Builder;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bluetoothServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$BluetoothService$Builder;->build()Lcom/google/android/projection/proto/Protos$BluetoothService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bluetoothService_:Lcom/google/android/projection/proto/Protos$BluetoothService;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$BluetoothService$Builder;->build()Lcom/google/android/projection/proto/Protos$BluetoothService;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    return-object p0
.end method

.method public setBluetoothService(Lcom/google/android/projection/proto/Protos$BluetoothService;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bluetoothServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bluetoothService_:Lcom/google/android/projection/proto/Protos$BluetoothService;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$Service$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$Service$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$Service$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setGenericNotificationService(Lcom/google/android/projection/proto/Protos$GenericNotificationService$Builder;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->genericNotificationServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$GenericNotificationService$Builder;->build()Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->genericNotificationService_:Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$GenericNotificationService$Builder;->build()Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    return-object p0
.end method

.method public setGenericNotificationService(Lcom/google/android/projection/proto/Protos$GenericNotificationService;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->genericNotificationServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->genericNotificationService_:Lcom/google/android/projection/proto/Protos$GenericNotificationService;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    return-object p0
.end method

.method public setId(I)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->id_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setInputSourceService(Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->inputSourceServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->build()Lcom/google/android/projection/proto/Protos$InputSourceService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->inputSourceService_:Lcom/google/android/projection/proto/Protos$InputSourceService;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->build()Lcom/google/android/projection/proto/Protos$InputSourceService;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    return-object p0
.end method

.method public setInputSourceService(Lcom/google/android/projection/proto/Protos$InputSourceService;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->inputSourceServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->inputSourceService_:Lcom/google/android/projection/proto/Protos$InputSourceService;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    return-object p0
.end method

.method public setMediaBrowserService(Lcom/google/android/projection/proto/Protos$MediaBrowserService$Builder;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaBrowserServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaBrowserService$Builder;->build()Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaBrowserService_:Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaBrowserService$Builder;->build()Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    return-object p0
.end method

.method public setMediaBrowserService(Lcom/google/android/projection/proto/Protos$MediaBrowserService;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaBrowserServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaBrowserService_:Lcom/google/android/projection/proto/Protos$MediaBrowserService;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    return-object p0
.end method

.method public setMediaPlaybackService(Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService$Builder;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaPlaybackServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService$Builder;->build()Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaPlaybackService_:Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService$Builder;->build()Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    return-object p0
.end method

.method public setMediaPlaybackService(Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaPlaybackServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaPlaybackService_:Lcom/google/android/projection/proto/Protos$MediaPlaybackStatusService;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    return-object p0
.end method

.method public setMediaSinkService(Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSinkServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->build()Lcom/google/android/projection/proto/Protos$MediaSinkService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSinkService_:Lcom/google/android/projection/proto/Protos$MediaSinkService;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->build()Lcom/google/android/projection/proto/Protos$MediaSinkService;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    return-object p0
.end method

.method public setMediaSinkService(Lcom/google/android/projection/proto/Protos$MediaSinkService;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSinkServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSinkService_:Lcom/google/android/projection/proto/Protos$MediaSinkService;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    return-object p0
.end method

.method public setMediaSourceService(Lcom/google/android/projection/proto/Protos$MediaSourceService$Builder;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSourceServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSourceService$Builder;->build()Lcom/google/android/projection/proto/Protos$MediaSourceService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSourceService_:Lcom/google/android/projection/proto/Protos$MediaSourceService;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSourceService$Builder;->build()Lcom/google/android/projection/proto/Protos$MediaSourceService;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    return-object p0
.end method

.method public setMediaSourceService(Lcom/google/android/projection/proto/Protos$MediaSourceService;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSourceServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->mediaSourceService_:Lcom/google/android/projection/proto/Protos$MediaSourceService;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    return-object p0
.end method

.method public setNavigationStatusService(Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->navigationStatusServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->build()Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->navigationStatusService_:Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->build()Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    return-object p0
.end method

.method public setNavigationStatusService(Lcom/google/android/projection/proto/Protos$NavigationStatusService;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->navigationStatusServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->navigationStatusService_:Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    return-object p0
.end method

.method public setPhoneStatusService(Lcom/google/android/projection/proto/Protos$PhoneStatusService$Builder;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->phoneStatusServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$PhoneStatusService$Builder;->build()Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->phoneStatusService_:Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$PhoneStatusService$Builder;->build()Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    return-object p0
.end method

.method public setPhoneStatusService(Lcom/google/android/projection/proto/Protos$PhoneStatusService;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->phoneStatusServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->phoneStatusService_:Lcom/google/android/projection/proto/Protos$PhoneStatusService;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    return-object p0
.end method

.method public setRadioService(Lcom/google/android/projection/proto/Protos$RadioService$Builder;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->radioServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioService$Builder;->build()Lcom/google/android/projection/proto/Protos$RadioService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->radioService_:Lcom/google/android/projection/proto/Protos$RadioService;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioService$Builder;->build()Lcom/google/android/projection/proto/Protos$RadioService;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    return-object p0
.end method

.method public setRadioService(Lcom/google/android/projection/proto/Protos$RadioService;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->radioServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->radioService_:Lcom/google/android/projection/proto/Protos$RadioService;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$Service$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$Service$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$Service$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSensorSourceService(Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->sensorSourceServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;->build()Lcom/google/android/projection/proto/Protos$SensorSourceService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->sensorSourceService_:Lcom/google/android/projection/proto/Protos$SensorSourceService;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;->build()Lcom/google/android/projection/proto/Protos$SensorSourceService;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    return-object p0
.end method

.method public setSensorSourceService(Lcom/google/android/projection/proto/Protos$SensorSourceService;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->sensorSourceServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->sensorSourceService_:Lcom/google/android/projection/proto/Protos$SensorSourceService;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$Service$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$Service$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$Service$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$Service$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setVendorExtensionService(Lcom/google/android/projection/proto/Protos$VendorExtensionService$Builder;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->vendorExtensionServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VendorExtensionService$Builder;->build()Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->vendorExtensionService_:Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VendorExtensionService$Builder;->build()Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    return-object p0
.end method

.method public setVendorExtensionService(Lcom/google/android/projection/proto/Protos$VendorExtensionService;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->vendorExtensionServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->vendorExtensionService_:Lcom/google/android/projection/proto/Protos$VendorExtensionService;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    return-object p0
.end method

.method public setWifiProjectionService(Lcom/google/android/projection/proto/Protos$WifiProjectionService$Builder;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->wifiProjectionServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$WifiProjectionService$Builder;->build()Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->wifiProjectionService_:Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$WifiProjectionService$Builder;->build()Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    return-object p0
.end method

.method public setWifiProjectionService(Lcom/google/android/projection/proto/Protos$WifiProjectionService;)Lcom/google/android/projection/proto/Protos$Service$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->wifiProjectionServiceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->wifiProjectionService_:Lcom/google/android/projection/proto/Protos$WifiProjectionService;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lcom/google/android/projection/proto/Protos$Service$Builder;->bitField0_:I

    return-object p0
.end method
