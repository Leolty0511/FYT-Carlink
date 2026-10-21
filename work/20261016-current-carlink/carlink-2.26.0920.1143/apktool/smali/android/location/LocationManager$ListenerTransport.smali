.class Landroid/location/LocationManager$ListenerTransport;
.super Landroid/location/ILocationListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListenerTransport"
.end annotation


# static fields
.field private static final TYPE_LOCATION_CHANGED:I = 0x1

.field private static final TYPE_PROVIDER_DISABLED:I = 0x4

.field private static final TYPE_PROVIDER_ENABLED:I = 0x3

.field private static final TYPE_STATUS_CHANGED:I = 0x2


# instance fields
.field private mListener:Landroid/location/LocationListener;

.field private final mListenerHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/location/LocationManager;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/location/LocationManager$ListenerTransport;->this$0:Landroid/location/LocationManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/location/ILocationListener$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroid/location/LocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    .line 7
    .line 8
    if-nez p3, :cond_0

    .line 9
    .line 10
    new-instance p2, Landroid/location/LocationManager$ListenerTransport$1;

    .line 11
    .line 12
    invoke-direct {p2, p0, p1}, Landroid/location/LocationManager$ListenerTransport$1;-><init>(Landroid/location/LocationManager$ListenerTransport;Landroid/location/LocationManager;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Landroid/location/LocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p2, Landroid/location/LocationManager$ListenerTransport$2;

    .line 19
    .line 20
    invoke-direct {p2, p0, p3, p1}, Landroid/location/LocationManager$ListenerTransport$2;-><init>(Landroid/location/LocationManager$ListenerTransport;Landroid/os/Looper;Landroid/location/LocationManager;)V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Landroid/location/LocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_3

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Landroid/location/LocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    .line 17
    .line 18
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, p0, Landroid/location/LocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    .line 27
    .line 28
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Ljava/lang/String;

    .line 31
    .line 32
    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onProviderEnabled(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p1, Landroid/os/Bundle;

    .line 39
    .line 40
    const-string/jumbo v0, "provider"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string/jumbo v1, "status"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    const-string v2, "extras"

    .line 55
    .line 56
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object v2, p0, Landroid/location/LocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    .line 61
    .line 62
    invoke-interface {v2, v0, v1, p1}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    new-instance v0, Landroid/location/Location;

    .line 67
    .line 68
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p1, Landroid/location/Location;

    .line 71
    .line 72
    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Landroid/location/LocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    .line 76
    .line 77
    invoke-interface {p1, v0}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    :try_start_0
    iget-object p1, p0, Landroid/location/LocationManager$ListenerTransport;->this$0:Landroid/location/LocationManager;

    .line 81
    .line 82
    invoke-static {p1}, Landroid/location/LocationManager;->access$100(Landroid/location/LocationManager;)Landroid/location/ILocationManager;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-interface {p1, p0}, Landroid/location/ILocationManager;->locationCallbackFinished(Landroid/location/ILocationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :catch_0
    move-exception p1

    .line 91
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    throw p1
.end method

.method public static synthetic access$000(Landroid/location/LocationManager$ListenerTransport;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/location/LocationManager$ListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    iput v1, v0, Landroid/os/Message;->what:I

    .line 7
    .line 8
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object p1, p0, Landroid/location/LocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x4

    .line 6
    iput v1, v0, Landroid/os/Message;->what:I

    .line 7
    .line 8
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object p1, p0, Landroid/location/LocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x3

    .line 6
    iput v1, v0, Landroid/os/Message;->what:I

    .line 7
    .line 8
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object p1, p0, Landroid/location/LocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    iput v1, v0, Landroid/os/Message;->what:I

    .line 7
    .line 8
    new-instance v1, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v2, "provider"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string/jumbo p1, "status"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    if-eqz p3, :cond_0

    .line 26
    .line 27
    const-string p1, "extras"

    .line 28
    .line 29
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 33
    .line 34
    iget-object p1, p0, Landroid/location/LocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method
