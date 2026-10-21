.class public Landroid/location/GpsNavigationMessageEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsNavigationMessageEvent$Listener;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GpsNavigationMessageEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static STATUS_GPS_LOCATION_DISABLED:I = 0x2

.field public static STATUS_NOT_SUPPORTED:I = 0x0

.field public static STATUS_READY:I = 0x1


# instance fields
.field private final mNavigationMessage:Landroid/location/GpsNavigationMessage;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/location/GpsNavigationMessageEvent$1;

    invoke-direct {v0}, Landroid/location/GpsNavigationMessageEvent$1;-><init>()V

    sput-object v0, Landroid/location/GpsNavigationMessageEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/location/GpsNavigationMessage;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Landroid/location/GpsNavigationMessageEvent;->mNavigationMessage:Landroid/location/GpsNavigationMessage;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    .line 10
    .line 11
    const-string v0, "Parameter \'message\' must not be null."

    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNavigationMessage()Landroid/location/GpsNavigationMessage;
    .locals 1

    iget-object v0, p0, Landroid/location/GpsNavigationMessageEvent;->mNavigationMessage:Landroid/location/GpsNavigationMessage;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[ GpsNavigationMessageEvent:\n\n"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroid/location/GpsNavigationMessageEvent;->mNavigationMessage:Landroid/location/GpsNavigationMessage;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/location/GpsNavigationMessage;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "\n]"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/location/GpsNavigationMessageEvent;->mNavigationMessage:Landroid/location/GpsNavigationMessage;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
