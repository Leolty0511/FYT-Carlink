.class public Landroid/os/VibrationEffect$OneShot;
.super Landroid/os/VibrationEffect;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OneShot"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibrationEffect$OneShot;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAmplitude:I

.field private mTiming:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/VibrationEffect$OneShot$1;

    invoke-direct {v0}, Landroid/os/VibrationEffect$OneShot$1;-><init>()V

    sput-object v0, Landroid/os/VibrationEffect$OneShot;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    .line 3
    iput-wide p1, p0, Landroid/os/VibrationEffect$OneShot;->mTiming:J

    .line 4
    iput p3, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Landroid/os/VibrationEffect$OneShot;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Landroid/os/VibrationEffect$OneShot;

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
    check-cast p1, Landroid/os/VibrationEffect$OneShot;

    .line 8
    .line 9
    iget-wide v2, p1, Landroid/os/VibrationEffect$OneShot;->mTiming:J

    .line 10
    .line 11
    iget-wide v4, p0, Landroid/os/VibrationEffect$OneShot;->mTiming:J

    .line 12
    .line 13
    cmp-long v0, v2, v4

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget p1, p1, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    .line 18
    .line 19
    iget v0, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    .line 20
    .line 21
    if-ne p1, v0, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    :cond_1
    return v1
.end method

.method public getAmplitude()I
    .locals 1

    iget v0, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    return v0
.end method

.method public getTiming()J
    .locals 2

    iget-wide v0, p0, Landroid/os/VibrationEffect$OneShot;->mTiming:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    mul-int/lit8 v0, v0, 0x25

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "OneShot{mTiming="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Landroid/os/VibrationEffect$OneShot;->mTiming:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mAmplitude="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    .line 19
    .line 20
    const-string/jumbo v2, "}"

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public validate()V
    .locals 5

    .line 1
    iget v0, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const-string v2, ")"

    .line 5
    .line 6
    if-lt v0, v1, :cond_1

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const/16 v1, 0xff

    .line 11
    .line 12
    if-gt v0, v1, :cond_1

    .line 13
    .line 14
    iget-wide v0, p0, Landroid/os/VibrationEffect$OneShot;->mTiming:J

    .line 15
    .line 16
    const-wide/16 v3, 0x0

    .line 17
    .line 18
    cmp-long v0, v0, v3

    .line 19
    .line 20
    if-lez v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string/jumbo v3, "timing must be positive (timing="

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-wide v3, p0, Landroid/os/VibrationEffect$OneShot;->mTiming:J

    .line 34
    .line 35
    invoke-static {v1, v3, v4, v2}, Landroid/app/m;->k(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v3, "amplitude must either be DEFAULT_AMPLITUDE, or between 1 and 255 inclusive (amplitude="

    .line 48
    .line 49
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget v3, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    .line 53
    .line 54
    invoke-static {v1, v3, v2}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    const/4 p2, 0x1

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    .line 4
    .line 5
    iget-wide v0, p0, Landroid/os/VibrationEffect$OneShot;->mTiming:J

    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 8
    .line 9
    .line 10
    iget p2, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
