.class Landroid/location/LocationManager$GnssStatusListenerTransport;
.super Landroid/location/IGnssStatusListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GnssStatusListenerTransport"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;,
        Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;
    }
.end annotation


# static fields
.field private static final NMEA_RECEIVED:I = 0x3e8


# instance fields
.field private final mGnssCallback:Landroid/location/GnssStatus$Callback;

.field private final mGnssHandler:Landroid/os/Handler;

.field private final mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

.field private final mGpsListener:Landroid/location/GpsStatus$Listener;

.field private final mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

.field private final mNmeaBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/location/LocationManager;Landroid/location/GnssStatus$Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, p2, v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GnssStatus$Callback;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/location/LocationManager;Landroid/location/GnssStatus$Callback;Landroid/os/Handler;)V
    .locals 0

    .line 18
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/location/IGnssStatusListener$Stub;-><init>()V

    .line 19
    iput-object p2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    .line 20
    new-instance p1, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;

    invoke-direct {p1, p0, p3}, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;Landroid/os/Handler;)V

    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

    .line 22
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    .line 23
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsListener:Landroid/location/GpsStatus$Listener;

    .line 24
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    return-void
.end method

.method public constructor <init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$Listener;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$Listener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$Listener;Landroid/os/Handler;)V
    .locals 1

    .line 2
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/location/IGnssStatusListener$Stub;-><init>()V

    .line 3
    iput-object p2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsListener:Landroid/location/GpsStatus$Listener;

    .line 4
    new-instance v0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;

    invoke-direct {v0, p0, p3}, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    const/4 p3, 0x0

    .line 5
    iput-object p3, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    .line 6
    iput-object p3, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    .line 7
    new-instance p2, Landroid/location/LocationManager$GnssStatusListenerTransport$1;

    invoke-direct {p2, p0, p1}, Landroid/location/LocationManager$GnssStatusListenerTransport$1;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;Landroid/location/LocationManager;)V

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    iput-object p2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    .line 8
    iput-object p3, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

    return-void
.end method

.method public constructor <init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$NmeaListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, p2, v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$NmeaListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$NmeaListener;Landroid/os/Handler;)V
    .locals 2

    .line 10
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/location/IGnssStatusListener$Stub;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsListener:Landroid/location/GpsStatus$Listener;

    .line 12
    new-instance v1, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;

    invoke-direct {v1, p0, p3}, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    .line 13
    iput-object p2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    .line 14
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    .line 15
    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    if-eqz p2, :cond_0

    .line 16
    new-instance v0, Landroid/location/LocationManager$GnssStatusListenerTransport$2;

    invoke-direct {v0, p0, p1}, Landroid/location/LocationManager$GnssStatusListenerTransport$2;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;Landroid/location/LocationManager;)V

    :cond_0
    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

    return-void
.end method

.method public constructor <init>(Landroid/location/LocationManager;Landroid/location/OnNmeaMessageListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/OnNmeaMessageListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/location/LocationManager;Landroid/location/OnNmeaMessageListener;Landroid/os/Handler;)V
    .locals 1

    .line 26
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/location/IGnssStatusListener$Stub;-><init>()V

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    .line 28
    new-instance v0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;

    invoke-direct {v0, p0, p3}, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    .line 29
    iput-object p2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

    .line 30
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsListener:Landroid/location/GpsStatus$Listener;

    .line 31
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic access$200(Landroid/location/LocationManager$GnssStatusListenerTransport;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$300(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/OnNmeaMessageListener;
    .locals 0

    iget-object p0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

    return-object p0
.end method

.method public static synthetic access$400(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GnssStatus$Callback;
    .locals 0

    iget-object p0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    return-object p0
.end method

.method public static synthetic access$700(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GpsStatus$Listener;
    .locals 0

    iget-object p0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsListener:Landroid/location/GpsStatus$Listener;

    return-object p0
.end method

.method public static synthetic access$800(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GpsStatus$NmeaListener;
    .locals 0

    iget-object p0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    return-object p0
.end method


# virtual methods
.method public onFirstFix(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    .line 6
    .line 7
    invoke-static {v0, p1}, Landroid/location/LocationManager;->access$502(Landroid/location/LocationManager;I)I

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x3

    .line 15
    iput v0, p1, Landroid/os/Message;->what:I

    .line 16
    .line 17
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onGnssStarted()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    iput v1, v0, Landroid/os/Message;->what:I

    .line 11
    .line 12
    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onGnssStopped()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x2

    .line 10
    iput v1, v0, Landroid/os/Message;->what:I

    .line 11
    .line 12
    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onNmeaReceived(JLjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    .line 9
    .line 10
    new-instance v2, Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;

    .line 11
    .line 12
    invoke-direct {v2, p0, p1, p2, p3}, Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;JLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/16 p2, 0x3e8

    .line 24
    .line 25
    iput p2, p1, Landroid/os/Message;->what:I

    .line 26
    .line 27
    iget-object p3, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    .line 28
    .line 29
    invoke-virtual {p3, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p1

    .line 41
    :cond_0
    :goto_0
    return-void
.end method

.method public onSvStatusChanged(I[I[F[F[F[F)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    .line 6
    .line 7
    new-instance v8, Landroid/location/GnssStatus;

    .line 8
    .line 9
    move-object v1, v8

    .line 10
    move v2, p1

    .line 11
    move-object v3, p2

    .line 12
    move-object v4, p3

    .line 13
    move-object v5, p4

    .line 14
    move-object v6, p5

    .line 15
    move-object v7, p6

    .line 16
    invoke-direct/range {v1 .. v7}, Landroid/location/GnssStatus;-><init>(I[I[F[F[F[F)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v8}, Landroid/location/LocationManager;->access$602(Landroid/location/LocationManager;Landroid/location/GnssStatus;)Landroid/location/GnssStatus;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x4

    .line 27
    iput p2, p1, Landroid/os/Message;->what:I

    .line 28
    .line 29
    iget-object p3, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    .line 30
    .line 31
    invoke-virtual {p3, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method
