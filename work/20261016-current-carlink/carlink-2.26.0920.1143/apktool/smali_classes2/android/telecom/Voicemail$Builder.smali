.class public Landroid/telecom/Voicemail$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Voicemail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBuilderDuration:Ljava/lang/Long;

.field private mBuilderHasContent:Z

.field private mBuilderId:Ljava/lang/Long;

.field private mBuilderIsRead:Ljava/lang/Boolean;

.field private mBuilderNumber:Ljava/lang/String;

.field private mBuilderPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private mBuilderSourceData:Ljava/lang/String;

.field private mBuilderSourcePackage:Ljava/lang/String;

.field private mBuilderTimestamp:Ljava/lang/Long;

.field private mBuilderTranscription:Ljava/lang/String;

.field private mBuilderUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/telecom/Voicemail$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/telecom/Voicemail$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/telecom/Voicemail;
    .locals 14

    .line 1
    iget-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderId:Ljava/lang/Long;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, -0x1

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderId:Ljava/lang/Long;

    .line 17
    .line 18
    iget-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderTimestamp:Ljava/lang/Long;

    .line 19
    .line 20
    const-wide/16 v1, 0x0

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    move-wide v3, v1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderTimestamp:Ljava/lang/Long;

    .line 35
    .line 36
    iget-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderDuration:Ljava/lang/Long;

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 42
    .line 43
    .line 44
    move-result-wide v1

    .line 45
    :goto_2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderDuration:Ljava/lang/Long;

    .line 50
    .line 51
    iget-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderIsRead:Ljava/lang/Boolean;

    .line 52
    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    goto :goto_3

    .line 57
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderIsRead:Ljava/lang/Boolean;

    .line 66
    .line 67
    new-instance v0, Landroid/telecom/Voicemail;

    .line 68
    .line 69
    iget-object v2, p0, Landroid/telecom/Voicemail$Builder;->mBuilderTimestamp:Ljava/lang/Long;

    .line 70
    .line 71
    iget-object v3, p0, Landroid/telecom/Voicemail$Builder;->mBuilderNumber:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v4, p0, Landroid/telecom/Voicemail$Builder;->mBuilderPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 74
    .line 75
    iget-object v5, p0, Landroid/telecom/Voicemail$Builder;->mBuilderId:Ljava/lang/Long;

    .line 76
    .line 77
    iget-object v6, p0, Landroid/telecom/Voicemail$Builder;->mBuilderDuration:Ljava/lang/Long;

    .line 78
    .line 79
    iget-object v7, p0, Landroid/telecom/Voicemail$Builder;->mBuilderSourcePackage:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v8, p0, Landroid/telecom/Voicemail$Builder;->mBuilderSourceData:Ljava/lang/String;

    .line 82
    .line 83
    iget-object v9, p0, Landroid/telecom/Voicemail$Builder;->mBuilderUri:Landroid/net/Uri;

    .line 84
    .line 85
    iget-object v10, p0, Landroid/telecom/Voicemail$Builder;->mBuilderIsRead:Ljava/lang/Boolean;

    .line 86
    .line 87
    iget-boolean v1, p0, Landroid/telecom/Voicemail$Builder;->mBuilderHasContent:Z

    .line 88
    .line 89
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    iget-object v12, p0, Landroid/telecom/Voicemail$Builder;->mBuilderTranscription:Ljava/lang/String;

    .line 94
    .line 95
    const/4 v13, 0x0

    .line 96
    move-object v1, v0

    .line 97
    invoke-direct/range {v1 .. v13}, Landroid/telecom/Voicemail;-><init>(Ljava/lang/Long;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Landroid/telecom/Voicemail$1;)V

    .line 98
    .line 99
    .line 100
    return-object v0
.end method

.method public setDuration(J)Landroid/telecom/Voicemail$Builder;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Landroid/telecom/Voicemail$Builder;->mBuilderDuration:Ljava/lang/Long;

    return-object p0
.end method

.method public setHasContent(Z)Landroid/telecom/Voicemail$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/telecom/Voicemail$Builder;->mBuilderHasContent:Z

    return-object p0
.end method

.method public setId(J)Landroid/telecom/Voicemail$Builder;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Landroid/telecom/Voicemail$Builder;->mBuilderId:Ljava/lang/Long;

    return-object p0
.end method

.method public setIsRead(Z)Landroid/telecom/Voicemail$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroid/telecom/Voicemail$Builder;->mBuilderIsRead:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Landroid/telecom/Voicemail$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telecom/Voicemail$Builder;->mBuilderNumber:Ljava/lang/String;

    return-object p0
.end method

.method public setPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/Voicemail$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telecom/Voicemail$Builder;->mBuilderPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    return-object p0
.end method

.method public setSourceData(Ljava/lang/String;)Landroid/telecom/Voicemail$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telecom/Voicemail$Builder;->mBuilderSourceData:Ljava/lang/String;

    return-object p0
.end method

.method public setSourcePackage(Ljava/lang/String;)Landroid/telecom/Voicemail$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telecom/Voicemail$Builder;->mBuilderSourcePackage:Ljava/lang/String;

    return-object p0
.end method

.method public setTimestamp(J)Landroid/telecom/Voicemail$Builder;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Landroid/telecom/Voicemail$Builder;->mBuilderTimestamp:Ljava/lang/Long;

    return-object p0
.end method

.method public setTranscription(Ljava/lang/String;)Landroid/telecom/Voicemail$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telecom/Voicemail$Builder;->mBuilderTranscription:Ljava/lang/String;

    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Landroid/telecom/Voicemail$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telecom/Voicemail$Builder;->mBuilderUri:Landroid/net/Uri;

    return-object p0
.end method
