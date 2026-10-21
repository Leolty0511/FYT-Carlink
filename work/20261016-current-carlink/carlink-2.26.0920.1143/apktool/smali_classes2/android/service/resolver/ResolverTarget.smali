.class public final Landroid/service/resolver/ResolverTarget;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ResolverTarget"


# instance fields
.field private mChooserScore:F

.field private mLaunchScore:F

.field private mRecencyScore:F

.field private mSelectProbability:F

.field private mTimeSpentScore:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/resolver/ResolverTarget$1;

    invoke-direct {v0}, Landroid/service/resolver/ResolverTarget$1;-><init>()V

    sput-object v0, Landroid/service/resolver/ResolverTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/service/resolver/ResolverTarget;->mRecencyScore:F

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/service/resolver/ResolverTarget;->mTimeSpentScore:F

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/service/resolver/ResolverTarget;->mLaunchScore:F

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/service/resolver/ResolverTarget;->mChooserScore:F

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/service/resolver/ResolverTarget;->mSelectProbability:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChooserScore()F
    .locals 1

    iget v0, p0, Landroid/service/resolver/ResolverTarget;->mChooserScore:F

    return v0
.end method

.method public getLaunchScore()F
    .locals 1

    iget v0, p0, Landroid/service/resolver/ResolverTarget;->mLaunchScore:F

    return v0
.end method

.method public getRecencyScore()F
    .locals 1

    iget v0, p0, Landroid/service/resolver/ResolverTarget;->mRecencyScore:F

    return v0
.end method

.method public getSelectProbability()F
    .locals 1

    iget v0, p0, Landroid/service/resolver/ResolverTarget;->mSelectProbability:F

    return v0
.end method

.method public getTimeSpentScore()F
    .locals 1

    iget v0, p0, Landroid/service/resolver/ResolverTarget;->mTimeSpentScore:F

    return v0
.end method

.method public setChooserScore(F)V
    .locals 0

    iput p1, p0, Landroid/service/resolver/ResolverTarget;->mChooserScore:F

    return-void
.end method

.method public setLaunchScore(F)V
    .locals 0

    iput p1, p0, Landroid/service/resolver/ResolverTarget;->mLaunchScore:F

    return-void
.end method

.method public setRecencyScore(F)V
    .locals 0

    iput p1, p0, Landroid/service/resolver/ResolverTarget;->mRecencyScore:F

    return-void
.end method

.method public setSelectProbability(F)V
    .locals 0

    iput p1, p0, Landroid/service/resolver/ResolverTarget;->mSelectProbability:F

    return-void
.end method

.method public setTimeSpentScore(F)V
    .locals 0

    iput p1, p0, Landroid/service/resolver/ResolverTarget;->mTimeSpentScore:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ResolverTarget{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroid/service/resolver/ResolverTarget;->mRecencyScore:F

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v2, p0, Landroid/service/resolver/ResolverTarget;->mTimeSpentScore:F

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget v2, p0, Landroid/service/resolver/ResolverTarget;->mLaunchScore:F

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget v2, p0, Landroid/service/resolver/ResolverTarget;->mChooserScore:F

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v1, p0, Landroid/service/resolver/ResolverTarget;->mSelectProbability:F

    .line 43
    .line 44
    const-string/jumbo v2, "}"

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1, v2}, Landroid/app/m;->i(Ljava/lang/StringBuilder;FLjava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/service/resolver/ResolverTarget;->mRecencyScore:F

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/service/resolver/ResolverTarget;->mTimeSpentScore:F

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/service/resolver/ResolverTarget;->mLaunchScore:F

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/service/resolver/ResolverTarget;->mChooserScore:F

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Landroid/service/resolver/ResolverTarget;->mSelectProbability:F

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
