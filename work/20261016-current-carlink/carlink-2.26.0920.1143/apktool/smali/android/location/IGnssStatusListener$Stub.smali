.class public abstract Landroid/location/IGnssStatusListener$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/location/IGnssStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IGnssStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IGnssStatusListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.IGnssStatusListener"

.field static final TRANSACTION_onFirstFix:I = 0x3

.field static final TRANSACTION_onGnssStarted:I = 0x1

.field static final TRANSACTION_onGnssStopped:I = 0x2

.field static final TRANSACTION_onNmeaReceived:I = 0x5

.field static final TRANSACTION_onSvStatusChanged:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.location.IGnssStatusListener"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/IGnssStatusListener;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "android.location.IGnssStatusListener"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    instance-of v1, v0, Landroid/location/IGnssStatusListener;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/location/IGnssStatusListener;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/location/IGnssStatusListener$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/location/IGnssStatusListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9

    .line 1
    const-string v0, "android.location.IGnssStatusListener"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq p1, v1, :cond_5

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq p1, v2, :cond_4

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    if-eq p1, v2, :cond_3

    .line 11
    .line 12
    const/4 v2, 0x4

    .line 13
    if-eq p1, v2, :cond_2

    .line 14
    .line 15
    const/4 v2, 0x5

    .line 16
    if-eq p1, v2, :cond_1

    .line 17
    .line 18
    const v2, 0x5f4e5446

    .line 19
    .line 20
    .line 21
    if-eq p1, v2, :cond_0

    .line 22
    .line 23
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return v1

    .line 32
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 36
    .line 37
    .line 38
    move-result-wide p3

    .line 39
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {p0, p3, p4, p1}, Landroid/location/IGnssStatusListener;->onNmeaReceived(JLjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return v1

    .line 47
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    move-object v2, p0

    .line 75
    invoke-interface/range {v2 .. v8}, Landroid/location/IGnssStatusListener;->onSvStatusChanged(I[I[F[F[F[F)V

    .line 76
    .line 77
    .line 78
    return v1

    .line 79
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    invoke-interface {p0, p1}, Landroid/location/IGnssStatusListener;->onFirstFix(I)V

    .line 87
    .line 88
    .line 89
    return v1

    .line 90
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-interface {p0}, Landroid/location/IGnssStatusListener;->onGnssStopped()V

    .line 94
    .line 95
    .line 96
    return v1

    .line 97
    :cond_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-interface {p0}, Landroid/location/IGnssStatusListener;->onGnssStarted()V

    .line 101
    .line 102
    .line 103
    return v1
.end method
