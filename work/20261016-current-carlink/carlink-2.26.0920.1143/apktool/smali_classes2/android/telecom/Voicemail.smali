.class public Landroid/telecom/Voicemail;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Voicemail$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/Voicemail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDuration:Ljava/lang/Long;

.field private final mHasContent:Ljava/lang/Boolean;

.field private final mId:Ljava/lang/Long;

.field private final mIsRead:Ljava/lang/Boolean;

.field private final mNumber:Ljava/lang/String;

.field private final mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private final mProviderData:Ljava/lang/String;

.field private final mSource:Ljava/lang/String;

.field private final mTimestamp:Ljava/lang/Long;

.field private final mTranscription:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telecom/Voicemail$1;

    invoke-direct {v0}, Landroid/telecom/Voicemail$1;-><init>()V

    sput-object v0, Landroid/telecom/Voicemail;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Voicemail;->mTimestamp:Ljava/lang/Long;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/telecom/Voicemail;->mNumber:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 19
    sget-object v0, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    iput-object v0, p0, Landroid/telecom/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    goto :goto_0

    .line 20
    :cond_0
    iput-object v1, p0, Landroid/telecom/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 21
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Voicemail;->mId:Ljava/lang/Long;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Voicemail;->mDuration:Ljava/lang/Long;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/telecom/Voicemail;->mSource:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/telecom/Voicemail;->mProviderData:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    .line 26
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telecom/Voicemail;->mUri:Landroid/net/Uri;

    goto :goto_1

    .line 27
    :cond_1
    iput-object v1, p0, Landroid/telecom/Voicemail;->mUri:Landroid/net/Uri;

    .line 28
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Voicemail;->mIsRead:Ljava/lang/Boolean;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Voicemail;->mHasContent:Ljava/lang/Boolean;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/telecom/Voicemail;->mTranscription:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/telecom/Voicemail$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/telecom/Voicemail;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Long;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroid/telecom/Voicemail;->mTimestamp:Ljava/lang/Long;

    .line 5
    iput-object p2, p0, Landroid/telecom/Voicemail;->mNumber:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Landroid/telecom/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 7
    iput-object p4, p0, Landroid/telecom/Voicemail;->mId:Ljava/lang/Long;

    .line 8
    iput-object p5, p0, Landroid/telecom/Voicemail;->mDuration:Ljava/lang/Long;

    .line 9
    iput-object p6, p0, Landroid/telecom/Voicemail;->mSource:Ljava/lang/String;

    .line 10
    iput-object p7, p0, Landroid/telecom/Voicemail;->mProviderData:Ljava/lang/String;

    .line 11
    iput-object p8, p0, Landroid/telecom/Voicemail;->mUri:Landroid/net/Uri;

    .line 12
    iput-object p9, p0, Landroid/telecom/Voicemail;->mIsRead:Ljava/lang/Boolean;

    .line 13
    iput-object p10, p0, Landroid/telecom/Voicemail;->mHasContent:Ljava/lang/Boolean;

    .line 14
    iput-object p11, p0, Landroid/telecom/Voicemail;->mTranscription:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Landroid/telecom/Voicemail$1;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p11}, Landroid/telecom/Voicemail;-><init>(Ljava/lang/Long;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public static createForInsertion(JLjava/lang/String;)Landroid/telecom/Voicemail$Builder;
    .locals 2

    new-instance v0, Landroid/telecom/Voicemail$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telecom/Voicemail$Builder;-><init>(Landroid/telecom/Voicemail$1;)V

    invoke-virtual {v0, p2}, Landroid/telecom/Voicemail$Builder;->setNumber(Ljava/lang/String;)Landroid/telecom/Voicemail$Builder;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Landroid/telecom/Voicemail$Builder;->setTimestamp(J)Landroid/telecom/Voicemail$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static createForUpdate(JLjava/lang/String;)Landroid/telecom/Voicemail$Builder;
    .locals 2

    new-instance v0, Landroid/telecom/Voicemail$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telecom/Voicemail$Builder;-><init>(Landroid/telecom/Voicemail$1;)V

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Voicemail$Builder;->setId(J)Landroid/telecom/Voicemail$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/telecom/Voicemail$Builder;->setSourceData(Ljava/lang/String;)Landroid/telecom/Voicemail$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Landroid/telecom/Voicemail;->mDuration:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()J
    .locals 2

    iget-object v0, p0, Landroid/telecom/Voicemail;->mId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Voicemail;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public getSourceData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Voicemail;->mProviderData:Ljava/lang/String;

    return-object v0
.end method

.method public getSourcePackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Voicemail;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestampMillis()J
    .locals 2

    iget-object v0, p0, Landroid/telecom/Voicemail;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTranscription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Voicemail;->mTranscription:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Voicemail;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hasContent()Z
    .locals 1

    iget-object v0, p0, Landroid/telecom/Voicemail;->mHasContent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isRead()Z
    .locals 1

    iget-object v0, p0, Landroid/telecom/Voicemail;->mIsRead:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/telecom/Voicemail;->mTimestamp:Ljava/lang/Long;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/telecom/Voicemail;->mNumber:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroid/telecom/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x1

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroid/telecom/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 29
    .line 30
    invoke-virtual {v0, p1, p2}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v0, p0, Landroid/telecom/Voicemail;->mId:Ljava/lang/Long;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Landroid/telecom/Voicemail;->mDuration:Ljava/lang/Long;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 45
    .line 46
    .line 47
    move-result-wide v3

    .line 48
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Landroid/telecom/Voicemail;->mSource:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Landroid/telecom/Voicemail;->mProviderData:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Landroid/telecom/Voicemail;->mUri:Landroid/net/Uri;

    .line 62
    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Landroid/telecom/Voicemail;->mUri:Landroid/net/Uri;

    .line 73
    .line 74
    invoke-interface {v0, p1, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 75
    .line 76
    .line 77
    :goto_1
    iget-object p2, p0, Landroid/telecom/Voicemail;->mIsRead:Ljava/lang/Boolean;

    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-eqz p2, :cond_2

    .line 84
    .line 85
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    .line 91
    .line 92
    :goto_2
    iget-object p2, p0, Landroid/telecom/Voicemail;->mHasContent:Ljava/lang/Boolean;

    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-eqz p2, :cond_3

    .line 99
    .line 100
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    .line 106
    .line 107
    :goto_3
    iget-object p2, p0, Landroid/telecom/Voicemail;->mTranscription:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method
