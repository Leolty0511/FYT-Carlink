.class Landroid/location/GnssMeasurementCallbackTransport;
.super Landroid/location/LocalListenerHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/location/LocalListenerHelper<",
        "Landroid/location/GnssMeasurementsEvent$Callback;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListenerTransport:Landroid/location/IGnssMeasurementsListener;

.field private final mLocationManager:Landroid/location/ILocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .locals 1

    .line 1
    const-string v0, "GnssMeasurementListenerTransport"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Landroid/location/LocalListenerHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;-><init>(Landroid/location/GnssMeasurementCallbackTransport;Landroid/location/GnssMeasurementCallbackTransport$1;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Landroid/location/GnssMeasurementCallbackTransport;->mListenerTransport:Landroid/location/IGnssMeasurementsListener;

    .line 13
    .line 14
    iput-object p2, p0, Landroid/location/GnssMeasurementCallbackTransport;->mLocationManager:Landroid/location/ILocationManager;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public registerWithServer()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/location/GnssMeasurementCallbackTransport;->mLocationManager:Landroid/location/ILocationManager;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/location/GnssMeasurementCallbackTransport;->mListenerTransport:Landroid/location/IGnssMeasurementsListener;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/location/LocalListenerHelper;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v0, v1, v2}, Landroid/location/ILocationManager;->addGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public unregisterFromServer()V
    .locals 2

    iget-object v0, p0, Landroid/location/GnssMeasurementCallbackTransport;->mLocationManager:Landroid/location/ILocationManager;

    iget-object v1, p0, Landroid/location/GnssMeasurementCallbackTransport;->mListenerTransport:Landroid/location/IGnssMeasurementsListener;

    invoke-interface {v0, v1}, Landroid/location/ILocationManager;->removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V

    return-void
.end method
