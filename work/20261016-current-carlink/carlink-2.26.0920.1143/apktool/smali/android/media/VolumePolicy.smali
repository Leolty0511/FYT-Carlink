.class public final Landroid/media/VolumePolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final A11Y_MODE_INDEPENDENT_A11Y_VOLUME:I = 0x1

.field public static final A11Y_MODE_MEDIA_A11Y_VOLUME:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/VolumePolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT:Landroid/media/VolumePolicy;


# instance fields
.field public final doNotDisturbWhenSilent:Z

.field public final vibrateToSilentDebounce:I

.field public final volumeDownToEnterSilent:Z

.field public final volumeUpToExitSilent:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/media/VolumePolicy;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x190

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v3, v3, v1, v2}, Landroid/media/VolumePolicy;-><init>(ZZZI)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Landroid/media/VolumePolicy;->DEFAULT:Landroid/media/VolumePolicy;

    .line 11
    .line 12
    new-instance v0, Landroid/media/VolumePolicy$1;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/media/VolumePolicy$1;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Landroid/media/VolumePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(ZZZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    .line 5
    .line 6
    iput-boolean p2, p0, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    .line 9
    .line 10
    iput p4, p0, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Landroid/media/VolumePolicy;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    if-ne p1, p0, :cond_1

    .line 9
    .line 10
    return v0

    .line 11
    :cond_1
    check-cast p1, Landroid/media/VolumePolicy;

    .line 12
    .line 13
    iget-boolean v2, p1, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    .line 14
    .line 15
    iget-boolean v3, p0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    .line 16
    .line 17
    if-ne v2, v3, :cond_2

    .line 18
    .line 19
    iget-boolean v2, p1, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    .line 20
    .line 21
    iget-boolean v3, p0, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    .line 22
    .line 23
    if-ne v2, v3, :cond_2

    .line 24
    .line 25
    iget-boolean v2, p1, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    .line 26
    .line 27
    iget-boolean v3, p0, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    .line 28
    .line 29
    if-ne v2, v3, :cond_2

    .line 30
    .line 31
    iget p1, p1, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    .line 32
    .line 33
    iget v2, p0, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    .line 34
    .line 35
    if-ne p1, v2, :cond_2

    .line 36
    .line 37
    move v1, v0

    .line 38
    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget-boolean v1, p0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 12
    .line 13
    iget-boolean v1, p0, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    aput-object v1, v0, v2

    .line 21
    .line 22
    iget-boolean v1, p0, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x2

    .line 29
    aput-object v1, v0, v2

    .line 30
    .line 31
    iget v1, p0, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    .line 32
    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x3

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "VolumePolicy[volumeDownToEnterSilent="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ",volumeUpToExitSilent="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ",doNotDisturbWhenSilent="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ",vibrateToSilentDebounce="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    .line 39
    .line 40
    const-string v2, "]"

    .line 41
    .line 42
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-boolean p2, p0, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-boolean p2, p0, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
