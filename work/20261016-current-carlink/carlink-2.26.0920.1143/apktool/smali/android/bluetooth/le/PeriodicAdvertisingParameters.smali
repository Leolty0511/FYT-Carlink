.class public final Landroid/bluetooth/le/PeriodicAdvertisingParameters;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/le/PeriodicAdvertisingParameters;",
            ">;"
        }
    .end annotation
.end field

.field private static final INTERVAL_MAX:I = 0xffef

.field private static final INTERVAL_MIN:I = 0x50


# instance fields
.field private final includeTxPower:Z

.field private final interval:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/bluetooth/le/PeriodicAdvertisingParameters$1;

    invoke-direct {v0}, Landroid/bluetooth/le/PeriodicAdvertisingParameters$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->includeTxPower:Z

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->interval:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/le/PeriodicAdvertisingParameters$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/bluetooth/le/PeriodicAdvertisingParameters;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(ZI)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->includeTxPower:Z

    .line 5
    iput p2, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->interval:I

    return-void
.end method

.method public synthetic constructor <init>(ZILandroid/bluetooth/le/PeriodicAdvertisingParameters$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/le/PeriodicAdvertisingParameters;-><init>(ZI)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIncludeTxPower()Z
    .locals 1

    iget-boolean v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->includeTxPower:Z

    return v0
.end method

.method public getInterval()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->interval:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->includeTxPower:Z

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->interval:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
