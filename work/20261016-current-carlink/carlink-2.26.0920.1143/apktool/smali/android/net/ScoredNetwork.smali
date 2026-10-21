.class public Landroid/net/ScoredNetwork;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ATTRIBUTES_KEY_BADGING_CURVE:Ljava/lang/String; = "android.net.attributes.key.BADGING_CURVE"

.field public static final ATTRIBUTES_KEY_HAS_CAPTIVE_PORTAL:Ljava/lang/String; = "android.net.attributes.key.HAS_CAPTIVE_PORTAL"

.field public static final ATTRIBUTES_KEY_RANKING_SCORE_OFFSET:Ljava/lang/String; = "android.net.attributes.key.RANKING_SCORE_OFFSET"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/ScoredNetwork;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final attributes:Landroid/os/Bundle;

.field public final meteredHint:Z

.field public final networkKey:Landroid/net/NetworkKey;

.field public final rssiCurve:Landroid/net/RssiCurve;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/ScoredNetwork$1;

    invoke-direct {v0}, Landroid/net/ScoredNetwork$1;-><init>()V

    sput-object v0, Landroid/net/ScoredNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkKey;Landroid/net/RssiCurve;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/net/ScoredNetwork;-><init>(Landroid/net/NetworkKey;Landroid/net/RssiCurve;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkKey;Landroid/net/RssiCurve;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/ScoredNetwork;-><init>(Landroid/net/NetworkKey;Landroid/net/RssiCurve;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkKey;Landroid/net/RssiCurve;ZLandroid/os/Bundle;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    .line 6
    iput-object p2, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    .line 7
    iput-boolean p3, p0, Landroid/net/ScoredNetwork;->meteredHint:Z

    .line 8
    iput-object p4, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Landroid/net/NetworkKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkKey;

    iput-object v0, p0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 12
    sget-object v0, Landroid/net/RssiCurve;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RssiCurve;

    iput-object v0, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    .line 14
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Landroid/net/ScoredNetwork;->meteredHint:Z

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/ScoredNetwork$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/ScoredNetwork;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public calculateBadge(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "android.net.attributes.key.BADGING_CURVE"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/net/RssiCurve;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/net/RssiCurve;->lookupScore(I)B

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    return p1
.end method

.method public calculateRankingScore(I)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/net/ScoredNetwork;->hasRankingScore()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v2, "android.net.attributes.key.RANKING_SCORE_OFFSET"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    add-int/2addr v0, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v1

    .line 21
    :goto_0
    iget-object v2, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    .line 22
    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {v2, p1}, Landroid/net/RssiCurve;->lookupScore(I)B

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    shl-int/lit8 v1, p1, 0x8

    .line 31
    .line 32
    :goto_1
    int-to-long v2, v1

    .line 33
    int-to-long v4, v0

    .line 34
    add-long/2addr v2, v4

    .line 35
    long-to-int p1, v2

    .line 36
    int-to-long v4, p1

    .line 37
    cmp-long v0, v2, v4

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    return p1

    .line 42
    :cond_2
    :try_start_0
    new-instance p1, Ljava/lang/ArithmeticException;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/lang/ArithmeticException;-><init>()V

    .line 45
    .line 46
    .line 47
    throw p1
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :catch_0
    if-gez v1, :cond_3

    .line 49
    .line 50
    const/high16 p1, -0x80000000

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_3
    const p1, 0x7fffffff

    .line 54
    .line 55
    .line 56
    :goto_2
    return p1

    .line 57
    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 58
    .line 59
    const-string v0, "Either rssiCurve or rankingScoreOffset is required to calculate the ranking score"

    .line 60
    .line 61
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1
.end method

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
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    check-cast p1, Landroid/net/ScoredNetwork;

    .line 20
    .line 21
    iget-object v2, p0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    .line 22
    .line 23
    iget-object v3, p1, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    .line 24
    .line 25
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    iget-object v2, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    .line 32
    .line 33
    iget-object v3, p1, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    .line 34
    .line 35
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    iget-boolean v2, p0, Landroid/net/ScoredNetwork;->meteredHint:Z

    .line 42
    .line 43
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iget-boolean v3, p1, Landroid/net/ScoredNetwork;->meteredHint:Z

    .line 48
    .line 49
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    iget-object v2, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    .line 60
    .line 61
    iget-object p1, p1, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    .line 62
    .line 63
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    move v0, v1

    .line 71
    :goto_0
    return v0

    .line 72
    :cond_3
    :goto_1
    return v1
.end method

.method public hasRankingScore()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "android.net.attributes.key.RANKING_SCORE_OFFSET"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iget-object v2, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    iget-boolean v1, p0, Landroid/net/ScoredNetwork;->meteredHint:Z

    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x2

    .line 21
    aput-object v1, v0, v2

    .line 22
    .line 23
    const/4 v1, 0x3

    .line 24
    iget-object v2, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    .line 25
    .line 26
    aput-object v2, v0, v1

    .line 27
    .line 28
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "ScoredNetwork{networkKey="

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ", rssiCurve="

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ", meteredHint="

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-boolean v2, p0, Landroid/net/ScoredNetwork;->meteredHint:Z

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    .line 43
    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_0

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v2, ", attributes="

    .line 55
    .line 56
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    :cond_0
    const/16 v1, 0x7d

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/net/NetworkKey;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2}, Landroid/net/RssiCurve;->writeToParcel(Landroid/os/Parcel;I)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p2, 0x0

    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-boolean p2, p0, Landroid/net/ScoredNetwork;->meteredHint:Z

    .line 25
    .line 26
    int-to-byte p2, p2

    .line 27
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 28
    .line 29
    .line 30
    iget-object p2, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
