.class public Landroid/os/PowerSaveState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerSaveState$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/PowerSaveState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final batterySaverEnabled:Z

.field public final brightnessFactor:F

.field public final globalBatterySaverEnabled:Z

.field public final gpsMode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/PowerSaveState$1;

    invoke-direct {v0}, Landroid/os/PowerSaveState$1;-><init>()V

    sput-object v0, Landroid/os/PowerSaveState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Landroid/os/PowerSaveState;->globalBatterySaverEnabled:Z

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/PowerSaveState;->gpsMode:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/os/PowerSaveState;->brightnessFactor:F

    return-void
.end method

.method public constructor <init>(Landroid/os/PowerSaveState$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/os/PowerSaveState$Builder;->access$000(Landroid/os/PowerSaveState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 3
    invoke-static {p1}, Landroid/os/PowerSaveState$Builder;->access$100(Landroid/os/PowerSaveState$Builder;)I

    move-result v0

    iput v0, p0, Landroid/os/PowerSaveState;->gpsMode:I

    .line 4
    invoke-static {p1}, Landroid/os/PowerSaveState$Builder;->access$200(Landroid/os/PowerSaveState$Builder;)F

    move-result v0

    iput v0, p0, Landroid/os/PowerSaveState;->brightnessFactor:F

    .line 5
    invoke-static {p1}, Landroid/os/PowerSaveState$Builder;->access$300(Landroid/os/PowerSaveState$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/os/PowerSaveState;->globalBatterySaverEnabled:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 2
    .line 3
    int-to-byte p2, p2

    .line 4
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 5
    .line 6
    .line 7
    iget-boolean p2, p0, Landroid/os/PowerSaveState;->globalBatterySaverEnabled:Z

    .line 8
    .line 9
    int-to-byte p2, p2

    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 11
    .line 12
    .line 13
    iget p2, p0, Landroid/os/PowerSaveState;->gpsMode:I

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    .line 17
    .line 18
    iget p2, p0, Landroid/os/PowerSaveState;->brightnessFactor:F

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
