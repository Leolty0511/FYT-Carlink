.class Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager$GpsStatusListenerTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Nmea"
.end annotation


# instance fields
.field public mNmea:Ljava/lang/String;

.field public mTimestamp:J

.field public final synthetic this$1:Landroid/location/LocationManager$GpsStatusListenerTransport;


# direct methods
.method public constructor <init>(Landroid/location/LocationManager$GpsStatusListenerTransport;JLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;->this$1:Landroid/location/LocationManager$GpsStatusListenerTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;->mTimestamp:J

    .line 3
    iput-object p4, p0, Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;->mNmea:Ljava/lang/String;

    return-void
.end method
