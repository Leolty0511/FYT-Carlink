.class Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;
.super Landroid/location/IGnssMeasurementsListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssMeasurementCallbackTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListenerTransport"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/location/GnssMeasurementCallbackTransport;


# direct methods
.method private constructor <init>(Landroid/location/GnssMeasurementCallbackTransport;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;->this$0:Landroid/location/GnssMeasurementCallbackTransport;

    invoke-direct {p0}, Landroid/location/IGnssMeasurementsListener$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/location/GnssMeasurementCallbackTransport;Landroid/location/GnssMeasurementCallbackTransport$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;-><init>(Landroid/location/GnssMeasurementCallbackTransport;)V

    return-void
.end method


# virtual methods
.method public onGnssMeasurementsReceived(Landroid/location/GnssMeasurementsEvent;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport$1;-><init>(Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;Landroid/location/GnssMeasurementsEvent;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;->this$0:Landroid/location/GnssMeasurementCallbackTransport;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/location/LocalListenerHelper;->foreach(Landroid/location/LocalListenerHelper$ListenerOperation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onStatusChanged(I)V
    .locals 1

    .line 1
    new-instance v0, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport$2;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport$2;-><init>(Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;->this$0:Landroid/location/GnssMeasurementCallbackTransport;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/location/LocalListenerHelper;->foreach(Landroid/location/LocalListenerHelper$ListenerOperation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
