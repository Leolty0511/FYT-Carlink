.class public final Landroid/app/timezone/DistroRulesVersion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/timezone/DistroRulesVersion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mRevision:I

.field private final mRulesVersion:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/timezone/DistroRulesVersion$1;

    invoke-direct {v0}, Landroid/app/timezone/DistroRulesVersion$1;-><init>()V

    sput-object v0, Landroid/app/timezone/DistroRulesVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "rulesVersion"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1}, Landroid/app/timezone/Utils;->validateRulesVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    .line 12
    .line 13
    const-string/jumbo p1, "revision"

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2}, Landroid/app/timezone/Utils;->validateVersion(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    const-class v1, Landroid/app/timezone/DistroRulesVersion;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eq v1, v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    check-cast p1, Landroid/app/timezone/DistroRulesVersion;

    .line 18
    .line 19
    iget v1, p0, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    .line 20
    .line 21
    iget v2, p1, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    .line 22
    .line 23
    if-eq v1, v2, :cond_2

    .line 24
    .line 25
    return v0

    .line 26
    :cond_2
    iget-object v0, p0, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    .line 27
    .line 28
    iget-object p1, p1, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1

    .line 35
    :cond_3
    :goto_0
    return v0
.end method

.method public getRevision()I
    .locals 1

    iget v0, p0, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    return v0
.end method

.method public getRulesVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    return v0
.end method

.method public isOlderThan(Landroid/app/timezone/DistroRulesVersion;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p1, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-gez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    const/4 v2, 0x0

    .line 14
    if-lez v0, :cond_1

    .line 15
    .line 16
    return v2

    .line 17
    :cond_1
    iget v0, p0, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    .line 18
    .line 19
    iget p1, p1, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    .line 20
    .line 21
    if-ge v0, p1, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    move v1, v2

    .line 25
    :goto_0
    return v1
.end method

.method public toDumpString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DistroRulesVersion{mRulesVersion=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\', mRevision=\'"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    .line 19
    .line 20
    const-string v2, "\'}"

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
