.class Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager$GnssStatusListenerTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Nmea"
.end annotation


# instance fields
.field mNmea:Ljava/lang/String;

.field mTimestamp:J

.field final synthetic this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;


# direct methods
.method public constructor <init>(Landroid/location/LocationManager$GnssStatusListenerTransport;JLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-wide p2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;->mTimestamp:J

    .line 7
    .line 8
    iput-object p4, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;->mNmea:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method
