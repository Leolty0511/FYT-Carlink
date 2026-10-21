.class Landroid/location/GnssNavigationMessageCallbackTransport;
.super Landroid/location/LocalListenerHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssNavigationMessageCallbackTransport$ListenerTransport;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/location/LocalListenerHelper<",
        "Landroid/location/GnssNavigationMessage$Callback;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListenerTransport:Landroid/location/IGnssNavigationMessageListener;

.field private final mLocationManager:Landroid/location/ILocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .locals 1

    .line 1
    const-string v0, "GnssNavigationMessageCallbackTransport"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Landroid/location/LocalListenerHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/location/GnssNavigationMessageCallbackTransport$ListenerTransport;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, Landroid/location/GnssNavigationMessageCallbackTransport$ListenerTransport;-><init>(Landroid/location/GnssNavigationMessageCallbackTransport;Landroid/location/GnssNavigationMessageCallbackTransport$1;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Landroid/location/GnssNavigationMessageCallbackTransport;->mListenerTransport:Landroid/location/IGnssNavigationMessageListener;

    .line 13
    .line 14
    iput-object p2, p0, Landroid/location/GnssNavigationMessageCallbackTransport;->mLocationManager:Landroid/location/ILocationManager;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public registerWithServer()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/location/GnssNavigationMessageCallbackTransport;->mLocationManager:Landroid/location/ILocationManager;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/location/GnssNavigationMessageCallbackTransport;->mListenerTransport:Landroid/location/IGnssNavigationMessageListener;

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
    invoke-interface {v0, v1, v2}, Landroid/location/ILocationManager;->addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public unregisterFromServer()V
    .locals 2

    iget-object v0, p0, Landroid/location/GnssNavigationMessageCallbackTransport;->mLocationManager:Landroid/location/ILocationManager;

    iget-object v1, p0, Landroid/location/GnssNavigationMessageCallbackTransport;->mListenerTransport:Landroid/location/IGnssNavigationMessageListener;

    invoke-interface {v0, v1}, Landroid/location/ILocationManager;->removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V

    return-void
.end method
