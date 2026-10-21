.class public final Landroid/media/AudioFocusInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioFocusInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAttributes:Landroid/media/AudioAttributes;

.field private final mClientId:Ljava/lang/String;

.field private final mClientUid:I

.field private mFlags:I

.field private mGainRequest:I

.field private mLossReceived:I

.field private final mPackageName:Ljava/lang/String;

.field private final mSdkTarget:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/AudioFocusInfo$1;

    invoke-direct {v0}, Landroid/media/AudioFocusInfo$1;-><init>()V

    sput-object v0, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;ILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :cond_0
    iput-object p1, p0, Landroid/media/AudioFocusInfo;->mAttributes:Landroid/media/AudioAttributes;

    .line 16
    .line 17
    iput p2, p0, Landroid/media/AudioFocusInfo;->mClientUid:I

    .line 18
    .line 19
    const-string p1, ""

    .line 20
    .line 21
    if-nez p3, :cond_1

    .line 22
    .line 23
    move-object p3, p1

    .line 24
    :cond_1
    iput-object p3, p0, Landroid/media/AudioFocusInfo;->mClientId:Ljava/lang/String;

    .line 25
    .line 26
    if-nez p4, :cond_2

    .line 27
    .line 28
    move-object p4, p1

    .line 29
    :cond_2
    iput-object p4, p0, Landroid/media/AudioFocusInfo;->mPackageName:Ljava/lang/String;

    .line 30
    .line 31
    iput p5, p0, Landroid/media/AudioFocusInfo;->mGainRequest:I

    .line 32
    .line 33
    iput p6, p0, Landroid/media/AudioFocusInfo;->mLossReceived:I

    .line 34
    .line 35
    iput p7, p0, Landroid/media/AudioFocusInfo;->mFlags:I

    .line 36
    .line 37
    iput p8, p0, Landroid/media/AudioFocusInfo;->mSdkTarget:I

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public clearLossReceived()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioFocusInfo;->mLossReceived:I

    return-void
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
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    const-class v2, Landroid/media/AudioFocusInfo;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Landroid/media/AudioFocusInfo;

    .line 19
    .line 20
    iget-object v2, p0, Landroid/media/AudioFocusInfo;->mAttributes:Landroid/media/AudioAttributes;

    .line 21
    .line 22
    iget-object v3, p1, Landroid/media/AudioFocusInfo;->mAttributes:Landroid/media/AudioAttributes;

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_3

    .line 29
    .line 30
    return v1

    .line 31
    :cond_3
    iget v2, p0, Landroid/media/AudioFocusInfo;->mClientUid:I

    .line 32
    .line 33
    iget v3, p1, Landroid/media/AudioFocusInfo;->mClientUid:I

    .line 34
    .line 35
    if-eq v2, v3, :cond_4

    .line 36
    .line 37
    return v1

    .line 38
    :cond_4
    iget-object v2, p0, Landroid/media/AudioFocusInfo;->mClientId:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v3, p1, Landroid/media/AudioFocusInfo;->mClientId:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_5

    .line 47
    .line 48
    return v1

    .line 49
    :cond_5
    iget-object v2, p0, Landroid/media/AudioFocusInfo;->mPackageName:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v3, p1, Landroid/media/AudioFocusInfo;->mPackageName:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_6

    .line 58
    .line 59
    return v1

    .line 60
    :cond_6
    iget v2, p0, Landroid/media/AudioFocusInfo;->mGainRequest:I

    .line 61
    .line 62
    iget v3, p1, Landroid/media/AudioFocusInfo;->mGainRequest:I

    .line 63
    .line 64
    if-eq v2, v3, :cond_7

    .line 65
    .line 66
    return v1

    .line 67
    :cond_7
    iget v2, p0, Landroid/media/AudioFocusInfo;->mLossReceived:I

    .line 68
    .line 69
    iget v3, p1, Landroid/media/AudioFocusInfo;->mLossReceived:I

    .line 70
    .line 71
    if-eq v2, v3, :cond_8

    .line 72
    .line 73
    return v1

    .line 74
    :cond_8
    iget v2, p0, Landroid/media/AudioFocusInfo;->mFlags:I

    .line 75
    .line 76
    iget v3, p1, Landroid/media/AudioFocusInfo;->mFlags:I

    .line 77
    .line 78
    if-eq v2, v3, :cond_9

    .line 79
    .line 80
    return v1

    .line 81
    :cond_9
    iget v2, p0, Landroid/media/AudioFocusInfo;->mSdkTarget:I

    .line 82
    .line 83
    iget p1, p1, Landroid/media/AudioFocusInfo;->mSdkTarget:I

    .line 84
    .line 85
    if-eq v2, p1, :cond_a

    .line 86
    .line 87
    return v1

    .line 88
    :cond_a
    return v0
.end method

.method public getAttributes()Landroid/media/AudioAttributes;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioFocusInfo;->mAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioFocusInfo;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientUid()I
    .locals 1

    iget v0, p0, Landroid/media/AudioFocusInfo;->mClientUid:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Landroid/media/AudioFocusInfo;->mFlags:I

    return v0
.end method

.method public getGainRequest()I
    .locals 1

    iget v0, p0, Landroid/media/AudioFocusInfo;->mGainRequest:I

    return v0
.end method

.method public getLossReceived()I
    .locals 1

    iget v0, p0, Landroid/media/AudioFocusInfo;->mLossReceived:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioFocusInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkTarget()I
    .locals 1

    iget v0, p0, Landroid/media/AudioFocusInfo;->mSdkTarget:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Landroid/media/AudioFocusInfo;->mAttributes:Landroid/media/AudioAttributes;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    iget v1, p0, Landroid/media/AudioFocusInfo;->mClientUid:I

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    aput-object v1, v0, v2

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    iget-object v2, p0, Landroid/media/AudioFocusInfo;->mClientId:Ljava/lang/String;

    .line 20
    .line 21
    aput-object v2, v0, v1

    .line 22
    .line 23
    const/4 v1, 0x3

    .line 24
    iget-object v2, p0, Landroid/media/AudioFocusInfo;->mPackageName:Ljava/lang/String;

    .line 25
    .line 26
    aput-object v2, v0, v1

    .line 27
    .line 28
    iget v1, p0, Landroid/media/AudioFocusInfo;->mGainRequest:I

    .line 29
    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x4

    .line 35
    aput-object v1, v0, v2

    .line 36
    .line 37
    iget v1, p0, Landroid/media/AudioFocusInfo;->mFlags:I

    .line 38
    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/4 v2, 0x5

    .line 44
    aput-object v1, v0, v2

    .line 45
    .line 46
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/AudioFocusInfo;->mAttributes:Landroid/media/AudioAttributes;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/media/AudioFocusInfo;->mClientUid:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Landroid/media/AudioFocusInfo;->mClientId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Landroid/media/AudioFocusInfo;->mPackageName:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Landroid/media/AudioFocusInfo;->mGainRequest:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget p2, p0, Landroid/media/AudioFocusInfo;->mLossReceived:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    iget p2, p0, Landroid/media/AudioFocusInfo;->mFlags:I

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    iget p2, p0, Landroid/media/AudioFocusInfo;->mSdkTarget:I

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
