.class public Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundModelEvent"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final data:[B

.field public final soundModelHandle:I

.field public final status:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent$1;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->status:I

    .line 5
    .line 6
    iput p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->soundModelHandle:I

    .line 7
    .line 8
    iput-object p3, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->data:[B

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic access$900(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;
    .locals 0

    invoke-static {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;

    move-result-object p0

    return-object p0
.end method

.method private static fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/os/Parcel;->readBlob()[B

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;

    .line 14
    .line 15
    invoke-direct {v2, v0, v1, p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;-><init>(II[B)V

    .line 16
    .line 17
    .line 18
    return-object v2
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
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eq v2, v3, :cond_2

    .line 18
    .line 19
    return v1

    .line 20
    :cond_2
    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;

    .line 21
    .line 22
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->data:[B

    .line 23
    .line 24
    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->data:[B

    .line 25
    .line 26
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_3

    .line 31
    .line 32
    return v1

    .line 33
    :cond_3
    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->soundModelHandle:I

    .line 34
    .line 35
    iget v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->soundModelHandle:I

    .line 36
    .line 37
    if-eq v2, v3, :cond_4

    .line 38
    .line 39
    return v1

    .line 40
    :cond_4
    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->status:I

    .line 41
    .line 42
    iget p1, p1, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->status:I

    .line 43
    .line 44
    if-eq v2, p1, :cond_5

    .line 45
    .line 46
    return v1

    .line 47
    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->data:[B

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

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
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->soundModelHandle:I

    .line 12
    .line 13
    add-int/2addr v0, v1

    .line 14
    mul-int/lit8 v0, v0, 0x1f

    .line 15
    .line 16
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->status:I

    .line 17
    .line 18
    add-int/2addr v0, v1

    .line 19
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SoundModelEvent [status="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->status:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", soundModelHandle="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->soundModelHandle:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", data="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->data:[B

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    array-length v1, v1

    .line 35
    :goto_0
    const-string v2, "]"

    .line 36
    .line 37
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->status:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->soundModelHandle:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->data:[B

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBlob([B)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
