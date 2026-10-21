.class public Landroid/hardware/radio/RadioManager$ProgramInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgramInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_LIVE:I = 0x1

.field private static final FLAG_MUTED:I = 0x2

.field private static final FLAG_TRAFFIC_ANNOUNCEMENT:I = 0x8

.field private static final FLAG_TRAFFIC_PROGRAM:I = 0x4


# instance fields
.field private final mDigital:Z

.field private final mFlags:I

.field private final mMetadata:Landroid/hardware/radio/RadioMetadata;

.field private final mSelector:Landroid/hardware/radio/ProgramSelector;

.field private final mSignalStrength:I

.field private final mStereo:Z

.field private final mTuned:Z

.field private final mVendorInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/radio/RadioManager$ProgramInfo$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioManager$ProgramInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/radio/ProgramSelector;ZZZILandroid/hardware/radio/RadioMetadata;ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/ProgramSelector;",
            "ZZZI",
            "Landroid/hardware/radio/RadioMetadata;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    .line 4
    iput-boolean p2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    .line 5
    iput-boolean p3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    .line 6
    iput-boolean p4, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    .line 7
    iput p7, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mFlags:I

    .line 8
    iput p5, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    .line 9
    iput-object p6, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    if-nez p8, :cond_0

    .line 10
    new-instance p8, Ljava/util/HashMap;

    invoke-direct {p8}, Ljava/util/HashMap;-><init>()V

    :cond_0
    iput-object p8, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/ProgramSelector;

    iput-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v3, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v3, :cond_3

    .line 18
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioMetadata;

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    goto :goto_2

    .line 19
    :cond_3
    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    .line 20
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mFlags:I

    .line 21
    invoke-static {p1}, Landroid/hardware/radio/RadioManager;->access$000(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;-><init>(Landroid/os/Parcel;)V

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
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 12
    .line 13
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v1, v3}, Landroid/hardware/radio/ProgramSelector;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    return v2

    .line 26
    :cond_2
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->isTuned()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eq v1, v3, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->isStereo()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eq v1, v3, :cond_4

    .line 42
    .line 43
    return v2

    .line 44
    :cond_4
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->isDigital()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eq v1, v3, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mFlags:I

    .line 54
    .line 55
    iget v3, p1, Landroid/hardware/radio/RadioManager$ProgramInfo;->mFlags:I

    .line 56
    .line 57
    if-eq v1, v3, :cond_6

    .line 58
    .line 59
    return v2

    .line 60
    :cond_6
    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSignalStrength()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eq v1, v3, :cond_7

    .line 67
    .line 68
    return v2

    .line 69
    :cond_7
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    .line 70
    .line 71
    if-nez v1, :cond_8

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getMetadata()Landroid/hardware/radio/RadioMetadata;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    if-eqz v1, :cond_9

    .line 78
    .line 79
    return v2

    .line 80
    :cond_8
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getMetadata()Landroid/hardware/radio/RadioMetadata;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_9

    .line 89
    .line 90
    return v2

    .line 91
    :cond_9
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    .line 92
    .line 93
    iget-object p1, p1, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    .line 94
    .line 95
    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_a

    .line 100
    .line 101
    return v2

    .line 102
    :cond_a
    return v0
.end method

.method public getChannel()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/hardware/radio/ProgramSelector;->getFirstId(I)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    long-to-int v0, v0

    .line 9
    return v0

    .line 10
    :catch_0
    const-string v0, "BroadcastRadio.manager"

    .line 11
    .line 12
    const-string v1, "Not an AM/FM program"

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public getMetadata()Landroid/hardware/radio/RadioMetadata;
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    return-object v0
.end method

.method public getSelector()Landroid/hardware/radio/ProgramSelector;
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    return-object v0
.end method

.method public getSignalStrength()I
    .locals 1

    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    return v0
.end method

.method public getSubChannel()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/radio/ProgramSelector;->getFirstId(I)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVendorInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    .line 11
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    .line 12
    .line 13
    add-int/2addr v0, v1

    .line 14
    mul-int/lit8 v0, v0, 0x1f

    .line 15
    .line 16
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    .line 17
    .line 18
    add-int/2addr v0, v1

    .line 19
    mul-int/lit8 v0, v0, 0x1f

    .line 20
    .line 21
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    .line 22
    .line 23
    add-int/2addr v0, v1

    .line 24
    mul-int/lit8 v0, v0, 0x1f

    .line 25
    .line 26
    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mFlags:I

    .line 27
    .line 28
    add-int/2addr v0, v1

    .line 29
    mul-int/lit8 v0, v0, 0x1f

    .line 30
    .line 31
    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    .line 32
    .line 33
    add-int/2addr v0, v1

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    .line 37
    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    :goto_0
    add-int/2addr v0, v1

    .line 47
    mul-int/lit8 v0, v0, 0x1f

    .line 48
    .line 49
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    add-int/2addr v1, v0

    .line 56
    return v1
.end method

.method public isDigital()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    return v0
.end method

.method public isLive()Z
    .locals 2

    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isMuted()Z
    .locals 1

    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStereo()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    return v0
.end method

.method public isTrafficAnnouncementActive()Z
    .locals 1

    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTrafficProgram()Z
    .locals 1

    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTuned()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ProgramInfo [mSelector="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mTuned="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mStereo="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", mDigital="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", mFlags="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mFlags:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", mSignalStrength="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    .line 64
    .line 65
    if-nez v1, :cond_0

    .line 66
    .line 67
    const-string v1, ""

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v2, ", mMetadata="

    .line 73
    .line 74
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    :goto_0
    const-string v2, "]"

    .line 91
    .line 92
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    .line 8
    .line 9
    int-to-byte v0, v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 11
    .line 12
    .line 13
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    .line 14
    .line 15
    int-to-byte v0, v0

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 17
    .line 18
    .line 19
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    .line 20
    .line 21
    int-to-byte v0, v0

    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 23
    .line 24
    .line 25
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x1

    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    .line 43
    .line 44
    invoke-virtual {v0, p1, p2}, Landroid/hardware/radio/RadioMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    .line 45
    .line 46
    .line 47
    :goto_0
    iget p2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mFlags:I

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    .line 53
    .line 54
    invoke-static {p1, p2}, Landroid/hardware/radio/RadioManager;->access$200(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
