.class public Landroid/content/SyncRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final SYNC_TARGET_ADAPTER:I = 0x2

.field private static final SYNC_TARGET_UNKNOWN:I = 0x0

.field private static final SYNC_TYPE_ONCE:I = 0x2

.field private static final SYNC_TYPE_PERIODIC:I = 0x1

.field private static final SYNC_TYPE_UNKNOWN:I


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthority:Ljava/lang/String;

.field private mCustomExtras:Landroid/os/Bundle;

.field private mDisallowMetered:Z

.field private mExpedited:Z

.field private mIgnoreBackoff:Z

.field private mIgnoreSettings:Z

.field private mIsManual:Z

.field private mNoRetry:Z

.field private mRequiresCharging:Z

.field private mSyncConfigExtras:Landroid/os/Bundle;

.field private mSyncFlexTimeSecs:J

.field private mSyncRunTimeSecs:J

.field private mSyncTarget:I

.field private mSyncType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    .line 6
    .line 7
    iput v0, p0, Landroid/content/SyncRequest$Builder;->mSyncTarget:I

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic access$100(Landroid/content/SyncRequest$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/content/SyncRequest$Builder;->mSyncFlexTimeSecs:J

    return-wide v0
.end method

.method public static synthetic access$1000(Landroid/content/SyncRequest$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/SyncRequest$Builder;->mDisallowMetered:Z

    return p0
.end method

.method public static synthetic access$200(Landroid/content/SyncRequest$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/content/SyncRequest$Builder;->mSyncRunTimeSecs:J

    return-wide v0
.end method

.method public static synthetic access$300(Landroid/content/SyncRequest$Builder;)Landroid/accounts/Account;
    .locals 0

    iget-object p0, p0, Landroid/content/SyncRequest$Builder;->mAccount:Landroid/accounts/Account;

    return-object p0
.end method

.method public static synthetic access$400(Landroid/content/SyncRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/SyncRequest$Builder;->mAuthority:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Landroid/content/SyncRequest$Builder;)I
    .locals 0

    iget p0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    return p0
.end method

.method public static synthetic access$600(Landroid/content/SyncRequest$Builder;)I
    .locals 0

    iget p0, p0, Landroid/content/SyncRequest$Builder;->mSyncTarget:I

    return p0
.end method

.method public static synthetic access$700(Landroid/content/SyncRequest$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/SyncRequest$Builder;->mExpedited:Z

    return p0
.end method

.method public static synthetic access$800(Landroid/content/SyncRequest$Builder;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public static synthetic access$900(Landroid/content/SyncRequest$Builder;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method private setupInterval(JJ)V
    .locals 1

    .line 1
    cmp-long v0, p3, p1

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    iput-wide p1, p0, Landroid/content/SyncRequest$Builder;->mSyncRunTimeSecs:J

    .line 6
    .line 7
    iput-wide p3, p0, Landroid/content/SyncRequest$Builder;->mSyncFlexTimeSecs:J

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string p2, "Specified run time for the sync must be after the specified flex time."

    .line 13
    .line 14
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method


# virtual methods
.method public build()Landroid/content/SyncRequest;
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroid/os/Bundle;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    .line 16
    .line 17
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    .line 23
    .line 24
    iget-boolean v1, p0, Landroid/content/SyncRequest$Builder;->mIgnoreBackoff:Z

    .line 25
    .line 26
    const-string/jumbo v2, "ignore_backoff"

    .line 27
    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mDisallowMetered:Z

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    .line 40
    .line 41
    const-string v1, "allow_metered"

    .line 42
    .line 43
    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mRequiresCharging:Z

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    .line 51
    .line 52
    const-string/jumbo v1, "require_charging"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    :cond_3
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mIgnoreSettings:Z

    .line 59
    .line 60
    const-string/jumbo v1, "ignore_settings"

    .line 61
    .line 62
    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    .line 66
    .line 67
    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 68
    .line 69
    .line 70
    :cond_4
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mNoRetry:Z

    .line 71
    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    .line 75
    .line 76
    const-string v4, "do_not_retry"

    .line 77
    .line 78
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 79
    .line 80
    .line 81
    :cond_5
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mExpedited:Z

    .line 82
    .line 83
    if-eqz v0, :cond_6

    .line 84
    .line 85
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    .line 86
    .line 87
    const-string v4, "expedited"

    .line 88
    .line 89
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    .line 91
    .line 92
    :cond_6
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mIsManual:Z

    .line 93
    .line 94
    if-eqz v0, :cond_7

    .line 95
    .line 96
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    .line 97
    .line 98
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    .line 102
    .line 103
    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    .line 105
    .line 106
    :cond_7
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    .line 107
    .line 108
    if-ne v0, v3, :cond_9

    .line 109
    .line 110
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    .line 111
    .line 112
    invoke-static {v0}, Landroid/content/ContentResolver;->invalidPeriodicExtras(Landroid/os/Bundle;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_8

    .line 117
    .line 118
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    .line 119
    .line 120
    invoke-static {v0}, Landroid/content/ContentResolver;->invalidPeriodicExtras(Landroid/os/Bundle;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_8

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 128
    .line 129
    const-string v1, "Illegal extras were set"

    .line 130
    .line 131
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw v0

    .line 135
    :cond_9
    :goto_0
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncTarget:I

    .line 136
    .line 137
    if-eqz v0, :cond_a

    .line 138
    .line 139
    new-instance v0, Landroid/content/SyncRequest;

    .line 140
    .line 141
    invoke-direct {v0, p0}, Landroid/content/SyncRequest;-><init>(Landroid/content/SyncRequest$Builder;)V

    .line 142
    .line 143
    .line 144
    return-object v0

    .line 145
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 146
    .line 147
    const-string v1, "Must specify an adapter with setSyncAdapter(Account, String"

    .line 148
    .line 149
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw v0
.end method

.method public setDisallowMetered(Z)Landroid/content/SyncRequest$Builder;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mIgnoreSettings:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string/jumbo v0, "setDisallowMetered(true) after having specified that settings are ignored."

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1

    .line 17
    :cond_1
    :goto_0
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mDisallowMetered:Z

    .line 18
    .line 19
    return-object p0
.end method

.method public setExpedited(Z)Landroid/content/SyncRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mExpedited:Z

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/content/SyncRequest$Builder;
    .locals 0

    iput-object p1, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setIgnoreBackoff(Z)Landroid/content/SyncRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mIgnoreBackoff:Z

    return-object p0
.end method

.method public setIgnoreSettings(Z)Landroid/content/SyncRequest$Builder;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mDisallowMetered:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string/jumbo v0, "setIgnoreSettings(true) after having specified sync settings with this builder."

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1

    .line 17
    :cond_1
    :goto_0
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mIgnoreSettings:Z

    .line 18
    .line 19
    return-object p0
.end method

.method public setManual(Z)Landroid/content/SyncRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mIsManual:Z

    return-object p0
.end method

.method public setNoRetry(Z)Landroid/content/SyncRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mNoRetry:Z

    return-object p0
.end method

.method public setRequiresCharging(Z)Landroid/content/SyncRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mRequiresCharging:Z

    return-object p0
.end method

.method public setSyncAdapter(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncRequest$Builder;
    .locals 1

    .line 1
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncTarget:I

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string p2, "Authority must be non-empty"

    .line 17
    .line 18
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x2

    .line 23
    iput v0, p0, Landroid/content/SyncRequest$Builder;->mSyncTarget:I

    .line 24
    .line 25
    iput-object p1, p0, Landroid/content/SyncRequest$Builder;->mAccount:Landroid/accounts/Account;

    .line 26
    .line 27
    iput-object p2, p0, Landroid/content/SyncRequest$Builder;->mAuthority:Ljava/lang/String;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    const-string p2, "Sync target has already been defined."

    .line 33
    .line 34
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public syncOnce()Landroid/content/SyncRequest$Builder;
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    iput v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    invoke-direct {p0, v0, v1, v0, v1}, Landroid/content/SyncRequest$Builder;->setupInterval(JJ)V

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string v1, "Sync type has already been defined."

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public syncPeriodic(JJ)Landroid/content/SyncRequest$Builder;
    .locals 1

    .line 1
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    .line 7
    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/SyncRequest$Builder;->setupInterval(JJ)V

    .line 9
    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string p2, "Sync type has already been defined."

    .line 15
    .line 16
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method
