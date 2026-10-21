.class public final Landroid/media/VolumeShaper$Operation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumeShaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/VolumeShaper$Operation$Builder;,
        Landroid/media/VolumeShaper$Operation$Flag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/VolumeShaper$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_CREATE_IF_NEEDED:I = 0x10

.field private static final FLAG_DEFER:I = 0x8

.field private static final FLAG_JOIN:I = 0x4

.field private static final FLAG_NONE:I = 0x0

.field private static final FLAG_PUBLIC_ALL:I = 0x3

.field private static final FLAG_REVERSE:I = 0x1

.field private static final FLAG_TERMINATE:I = 0x2

.field public static final PLAY:Landroid/media/VolumeShaper$Operation;

.field public static final REVERSE:Landroid/media/VolumeShaper$Operation;


# instance fields
.field private final mFlags:I

.field private final mReplaceId:I

.field private final mXOffset:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/media/VolumeShaper$Operation$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/media/VolumeShaper$Operation$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Landroid/media/VolumeShaper$Operation;->PLAY:Landroid/media/VolumeShaper$Operation;

    .line 11
    .line 12
    new-instance v0, Landroid/media/VolumeShaper$Operation$Builder;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/media/VolumeShaper$Operation$Builder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->reverse()Landroid/media/VolumeShaper$Operation$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Landroid/media/VolumeShaper$Operation;->REVERSE:Landroid/media/VolumeShaper$Operation;

    .line 26
    .line 27
    new-instance v0, Landroid/media/VolumeShaper$Operation$1;

    .line 28
    .line 29
    invoke-direct {v0}, Landroid/media/VolumeShaper$Operation$1;-><init>()V

    .line 30
    .line 31
    .line 32
    sput-object v0, Landroid/media/VolumeShaper$Operation;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 33
    .line 34
    return-void
.end method

.method private constructor <init>(IIF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    .line 4
    iput p2, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    .line 5
    iput p3, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    return-void
.end method

.method public synthetic constructor <init>(IIFLandroid/media/VolumeShaper$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/media/VolumeShaper$Operation;-><init>(IIF)V

    return-void
.end method

.method public static synthetic access$500(Landroid/media/VolumeShaper$Operation;)I
    .locals 0

    iget p0, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    return p0
.end method

.method public static synthetic access$600(Landroid/media/VolumeShaper$Operation;)I
    .locals 0

    iget p0, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    return p0
.end method

.method public static synthetic access$700(Landroid/media/VolumeShaper$Operation;)F
    .locals 0

    iget p0, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

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
    instance-of v0, p1, Landroid/media/VolumeShaper$Operation;

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
    check-cast p1, Landroid/media/VolumeShaper$Operation;

    .line 12
    .line 13
    iget v2, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    .line 14
    .line 15
    iget v3, p1, Landroid/media/VolumeShaper$Operation;->mFlags:I

    .line 16
    .line 17
    if-ne v2, v3, :cond_2

    .line 18
    .line 19
    iget v2, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    .line 20
    .line 21
    iget v3, p1, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    .line 22
    .line 23
    if-ne v2, v3, :cond_2

    .line 24
    .line 25
    iget v2, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    .line 26
    .line 27
    iget p1, p1, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    .line 28
    .line 29
    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    move v1, v0

    .line 36
    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

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
    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "VolumeShaper.Operation{mFlags = 0x"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ", mReplaceId = "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", mXOffset = "

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    .line 37
    .line 38
    const-string/jumbo v2, "}"

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1, v2}, Landroid/app/m;->i(Ljava/lang/StringBuilder;FLjava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
