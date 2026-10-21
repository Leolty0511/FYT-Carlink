.class public final Landroid/hardware/radio/ProgramSelector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/ProgramSelector$Identifier;,
        Landroid/hardware/radio/ProgramSelector$IdentifierType;,
        Landroid/hardware/radio/ProgramSelector$ProgramType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/ProgramSelector;",
            ">;"
        }
    .end annotation
.end field

.field public static final IDENTIFIER_TYPE_AMFM_FREQUENCY:I = 0x1

.field public static final IDENTIFIER_TYPE_DAB_ENSEMBLE:I = 0x6

.field public static final IDENTIFIER_TYPE_DAB_FREQUENCY:I = 0x8

.field public static final IDENTIFIER_TYPE_DAB_SCID:I = 0x7

.field public static final IDENTIFIER_TYPE_DAB_SIDECC:I = 0x5

.field public static final IDENTIFIER_TYPE_DRMO_FREQUENCY:I = 0xa

.field public static final IDENTIFIER_TYPE_DRMO_MODULATION:I = 0xb

.field public static final IDENTIFIER_TYPE_DRMO_SERVICE_ID:I = 0x9

.field public static final IDENTIFIER_TYPE_HD_STATION_ID_EXT:I = 0x3

.field public static final IDENTIFIER_TYPE_HD_SUBCHANNEL:I = 0x4

.field public static final IDENTIFIER_TYPE_RDS_PI:I = 0x2

.field public static final IDENTIFIER_TYPE_SXM_CHANNEL:I = 0xd

.field public static final IDENTIFIER_TYPE_SXM_SERVICE_ID:I = 0xc

.field public static final IDENTIFIER_TYPE_VENDOR_PRIMARY_END:I = 0x7cf

.field public static final IDENTIFIER_TYPE_VENDOR_PRIMARY_START:I = 0x3e8

.field public static final PROGRAM_TYPE_AM:I = 0x1

.field public static final PROGRAM_TYPE_AM_HD:I = 0x3

.field public static final PROGRAM_TYPE_DAB:I = 0x5

.field public static final PROGRAM_TYPE_DRMO:I = 0x6

.field public static final PROGRAM_TYPE_FM:I = 0x2

.field public static final PROGRAM_TYPE_FM_HD:I = 0x4

.field public static final PROGRAM_TYPE_SXM:I = 0x7

.field public static final PROGRAM_TYPE_VENDOR_END:I = 0x7cf

.field public static final PROGRAM_TYPE_VENDOR_START:I = 0x3e8


# instance fields
.field private final mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

.field private final mProgramType:I

.field private final mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

.field private final mVendorIds:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/radio/ProgramSelector$1;

    invoke-direct {v0}, Landroid/hardware/radio/ProgramSelector$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/ProgramSelector;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/hardware/radio/ProgramSelector$Identifier;[Landroid/hardware/radio/ProgramSelector$Identifier;[J)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    new-array p3, v0, [Landroid/hardware/radio/ProgramSelector$Identifier;

    :cond_0
    if-nez p4, :cond_1

    new-array p4, v0, [J

    .line 3
    :cond_1
    invoke-static {p3}, Landroid/animation/b;->t([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/hardware/radio/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/hardware/radio/a;-><init>(I)V

    invoke-static {v0, v1}, Landroid/animation/b;->A(Ljava/util/stream/Stream;Landroid/hardware/radio/a;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iput p1, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 6
    iput-object p3, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 7
    iput-object p4, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    return-void

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "secondaryIds list must not contain nulls"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    .line 11
    sget-object v0, Landroid/hardware/radio/ProgramSelector$Identifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 13
    invoke-static {v0}, Landroid/animation/b;->t([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/hardware/radio/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/hardware/radio/a;-><init>(I)V

    invoke-static {v0, v1}, Landroid/animation/b;->A(Ljava/util/stream/Stream;Landroid/hardware/radio/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "secondaryIds list must not contain nulls"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/ProgramSelector$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/hardware/radio/ProgramSelector;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static synthetic a(Landroid/hardware/radio/ProgramSelector$Identifier;)Z
    .locals 0

    invoke-static {p0}, Landroid/hardware/radio/ProgramSelector;->lambda$new$0(Landroid/hardware/radio/ProgramSelector$Identifier;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Landroid/hardware/radio/ProgramSelector$Identifier;)Z
    .locals 0

    invoke-static {p0}, Landroid/hardware/radio/ProgramSelector;->lambda$new$1(Landroid/hardware/radio/ProgramSelector$Identifier;)Z

    move-result p0

    return p0
.end method

.method public static createAmFmSelector(II)Landroid/hardware/radio/ProgramSelector;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Landroid/hardware/radio/ProgramSelector;->createAmFmSelector(III)Landroid/hardware/radio/ProgramSelector;

    move-result-object p0

    return-object p0
.end method

.method public static createAmFmSelector(III)Landroid/hardware/radio/ProgramSelector;
    .locals 7

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    const/4 v4, 0x2

    if-eq p0, v0, :cond_3

    if-ne p0, v4, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v2

    :goto_3
    if-nez v3, :cond_5

    if-nez v0, :cond_5

    if-ne p0, v2, :cond_4

    goto :goto_4

    .line 2
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown band: "

    .line 3
    invoke-static {p2, p0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_4
    if-ltz p2, :cond_b

    const/16 p0, 0x8

    if-gt p2, p0, :cond_b

    if-lez p2, :cond_7

    if-eqz v0, :cond_6

    goto :goto_5

    .line 5
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Subchannels are not supported for non-HD radio"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_7
    :goto_5
    invoke-static {v3, p1}, Landroid/hardware/radio/ProgramSelector;->isValidAmFmFrequency(ZI)Z

    move-result p0

    if-eqz p0, :cond_a

    if-eqz v3, :cond_8

    move v4, v2

    .line 7
    :cond_8
    new-instance p0, Landroid/hardware/radio/ProgramSelector$Identifier;

    int-to-long v5, p1

    invoke-direct {p0, v2, v5, v6}, Landroid/hardware/radio/ProgramSelector$Identifier;-><init>(IJ)V

    const/4 p1, 0x0

    if-lez p2, :cond_9

    new-array v0, v2, [Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 8
    new-instance v3, Landroid/hardware/radio/ProgramSelector$Identifier;

    sub-int/2addr p2, v2

    int-to-long v5, p2

    const/4 p2, 0x4

    invoke-direct {v3, p2, v5, v6}, Landroid/hardware/radio/ProgramSelector$Identifier;-><init>(IJ)V

    aput-object v3, v0, v1

    goto :goto_6

    :cond_9
    move-object v0, p1

    .line 9
    :goto_6
    new-instance p2, Landroid/hardware/radio/ProgramSelector;

    invoke-direct {p2, v4, p0, v0, p1}, Landroid/hardware/radio/ProgramSelector;-><init>(ILandroid/hardware/radio/ProgramSelector$Identifier;[Landroid/hardware/radio/ProgramSelector$Identifier;[J)V

    return-object p2

    .line 10
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Provided value is not a valid AM/FM frequency"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid subchannel: "

    .line 12
    invoke-static {p1, p2}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static isValidAmFmFrequency(ZI)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const/16 p0, 0x96

    if-le p1, p0, :cond_0

    const/16 p0, 0x7530

    if-ge p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const p0, 0xea60

    if-le p1, p0, :cond_2

    const p0, 0x1adb0

    if-ge p1, p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method private static synthetic lambda$new$0(Landroid/hardware/radio/ProgramSelector$Identifier;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$new$1(Landroid/hardware/radio/ProgramSelector$Identifier;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
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
    instance-of v1, p1, Landroid/hardware/radio/ProgramSelector;

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
    check-cast p1, Landroid/hardware/radio/ProgramSelector;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector;->getProgramType()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget v3, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    .line 18
    .line 19
    if-ne v1, v3, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v1, p1}, Landroid/hardware/radio/ProgramSelector$Identifier;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    move v0, v2

    .line 35
    :goto_0
    return v0
.end method

.method public getAllIds(I)[Landroid/hardware/radio/ProgramSelector$Identifier;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-ne v1, p1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 20
    .line 21
    array-length v2, v1

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    if-ge v3, v2, :cond_2

    .line 24
    .line 25
    aget-object v4, v1, v3

    .line 26
    .line 27
    invoke-virtual {v4}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-ne v5, p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    new-array p1, p1, [Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, [Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 50
    .line 51
    return-object p1
.end method

.method public getFirstId(I)J
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    return-wide v0

    .line 16
    :cond_0
    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 17
    .line 18
    array-length v1, v0

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    if-ge v2, v1, :cond_2

    .line 21
    .line 22
    aget-object v3, v0, v2

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-ne v4, p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/hardware/radio/ProgramSelector$Identifier;->getValue()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    return-wide v0

    .line 35
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string v1, "Identifier "

    .line 41
    .line 42
    const-string v2, " not found"

    .line 43
    .line 44
    invoke-static {v1, p1, v2}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0
.end method

.method public getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object v0
.end method

.method public getProgramType()I
    .locals 1

    iget v0, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    return v0
.end method

.method public getSecondaryIds()[Landroid/hardware/radio/ProgramSelector$Identifier;
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object v0
.end method

.method public getVendorIds()[J
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget v1, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    const/4 v1, 0x1

    .line 14
    iget-object v2, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 15
    .line 16
    aput-object v2, v0, v1

    .line 17
    .line 18
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ProgramSelector(type="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", primary="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 24
    .line 25
    array-length v1, v1

    .line 26
    if-lez v1, :cond_0

    .line 27
    .line 28
    const-string v1, ", secondary="

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    .line 39
    .line 40
    array-length v1, v1

    .line 41
    if-lez v1, :cond_1

    .line 42
    .line 43
    const-string v1, ", vendor="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    :cond_1
    const-string v1, ")"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget p2, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 13
    .line 14
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
