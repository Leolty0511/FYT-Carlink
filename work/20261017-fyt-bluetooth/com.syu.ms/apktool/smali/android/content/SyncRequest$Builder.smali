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

.field private static final SYNC_TARGET_SERVICE:I = 0x1

.field private static final SYNC_TARGET_UNKNOWN:I = 0x0

.field private static final SYNC_TYPE_ONCE:I = 0x2

.field private static final SYNC_TYPE_PERIODIC:I = 0x1

.field private static final SYNC_TYPE_UNKNOWN:I


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthority:Ljava/lang/String;

.field private mComponentName:Landroid/content/ComponentName;

.field private mCustomExtras:Landroid/os/Bundle;

.field private mDisallowMetered:Z

.field private mExpedited:Z

.field private mIgnoreBackoff:Z

.field private mIgnoreSettings:Z

.field private mIsManual:Z

.field private mNoRetry:Z

.field private mPriority:I

.field private mRxBytes:J

.field private mSyncConfigExtras:Landroid/os/Bundle;

.field private mSyncFlexTimeSecs:J

.field private mSyncRunTimeSecs:J

.field private mSyncTarget:I

.field private mSyncType:I

.field private mTxBytes:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Landroid/content/SyncRequest$Builder;->mTxBytes:J

    .line 3
    iput-wide v0, p0, Landroid/content/SyncRequest$Builder;->mRxBytes:J

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroid/content/SyncRequest$Builder;->mPriority:I

    .line 5
    iput v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    .line 6
    iput v0, p0, Landroid/content/SyncRequest$Builder;->mSyncTarget:I

    return-void
.end method

.method public static synthetic access$100(Landroid/content/SyncRequest$Builder;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/content/SyncRequest$Builder;->mSyncFlexTimeSecs:J

    return-wide v0
.end method

.method public static synthetic access$1000(Landroid/content/SyncRequest$Builder;)Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public static synthetic access$1100(Landroid/content/SyncRequest$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/content/SyncRequest$Builder;->mDisallowMetered:Z

    return p0
.end method

.method public static synthetic access$1200(Landroid/content/SyncRequest$Builder;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/content/SyncRequest$Builder;->mTxBytes:J

    return-wide v0
.end method

.method public static synthetic access$1300(Landroid/content/SyncRequest$Builder;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/content/SyncRequest$Builder;->mRxBytes:J

    return-wide v0
.end method

.method public static synthetic access$200(Landroid/content/SyncRequest$Builder;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/content/SyncRequest$Builder;->mSyncRunTimeSecs:J

    return-wide v0
.end method

.method public static synthetic access$300(Landroid/content/SyncRequest$Builder;)Landroid/accounts/Account;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/content/SyncRequest$Builder;->mAccount:Landroid/accounts/Account;

    return-object p0
.end method

.method public static synthetic access$400(Landroid/content/SyncRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/content/SyncRequest$Builder;->mAuthority:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Landroid/content/SyncRequest$Builder;)Landroid/content/ComponentName;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/content/SyncRequest$Builder;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static synthetic access$600(Landroid/content/SyncRequest$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    return p0
.end method

.method public static synthetic access$700(Landroid/content/SyncRequest$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/content/SyncRequest$Builder;->mSyncTarget:I

    return p0
.end method

.method public static synthetic access$800(Landroid/content/SyncRequest$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/content/SyncRequest$Builder;->mExpedited:Z

    return p0
.end method

.method public static synthetic access$900(Landroid/content/SyncRequest$Builder;)Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method private setupInterval(JJ)V
    .locals 1

    cmp-long v0, p3, p1

    if-gtz v0, :cond_0

    .line 1
    iput-wide p1, p0, Landroid/content/SyncRequest$Builder;->mSyncRunTimeSecs:J

    .line 2
    iput-wide p3, p0, Landroid/content/SyncRequest$Builder;->mSyncFlexTimeSecs:J

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Specified run time for the sync must be after the specified flex time."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private validatePeriodicExtras(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "force"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "do_not_retry"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ignore_backoff"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ignore_settings"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "initialize"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "expedited"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal extras were set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Landroid/content/SyncRequest;
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    invoke-static {v0}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    .line 5
    iget-boolean v1, p0, Landroid/content/SyncRequest$Builder;->mIgnoreBackoff:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-string v1, "ignore_backoff"

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    :cond_1
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mDisallowMetered:Z

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    const-string v1, "disallow_metered"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    :cond_2
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mIgnoreSettings:Z

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    const-string v1, "ignore_settings"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    :cond_3
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mNoRetry:Z

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    const-string v1, "do_not_retry"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13
    :cond_4
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mExpedited:Z

    if-eqz v0, :cond_5

    .line 14
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    const-string v1, "expedited"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 15
    :cond_5
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mIsManual:Z

    if-eqz v0, :cond_6

    .line 16
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    const-string v1, "force"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 17
    :cond_6
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    iget-wide v3, p0, Landroid/content/SyncRequest$Builder;->mTxBytes:J

    const-string v1, "expected_upload"

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 18
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    iget-wide v3, p0, Landroid/content/SyncRequest$Builder;->mRxBytes:J

    const-string v1, "expected_download"

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 19
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    iget v1, p0, Landroid/content/SyncRequest$Builder;->mPriority:I

    const-string/jumbo v3, "sync_priority"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    if-ne v0, v2, :cond_9

    .line 21
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Landroid/content/SyncRequest$Builder;->validatePeriodicExtras(Landroid/os/Bundle;)V

    .line 22
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Landroid/content/SyncRequest$Builder;->validatePeriodicExtras(Landroid/os/Bundle;)V

    .line 23
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_8

    .line 24
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mAuthority:Ljava/lang/String;

    if-eqz v0, :cond_7

    goto :goto_0

    .line 25
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must not be null for periodic sync."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Account must not be null for periodic sync."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    if-eqz v0, :cond_b

    .line 27
    :goto_0
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncTarget:I

    if-eqz v0, :cond_a

    .line 28
    new-instance v0, Landroid/content/SyncRequest;

    invoke-direct {v0, p0}, Landroid/content/SyncRequest;-><init>(Landroid/content/SyncRequest$Builder;)V

    return-object v0

    .line 29
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify an adapter with setSyncAdapter(Account, String"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must call either syncOnce() or syncPeriodic()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDisallowMetered(Z)Landroid/content/SyncRequest$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mDisallowMetered:Z

    return-object p0
.end method

.method public setExpedited(Z)Landroid/content/SyncRequest$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mExpedited:Z

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/content/SyncRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setIgnoreBackoff(Z)Landroid/content/SyncRequest$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mIgnoreBackoff:Z

    return-object p0
.end method

.method public setIgnoreSettings(Z)Landroid/content/SyncRequest$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mIgnoreSettings:Z

    return-object p0
.end method

.method public setManual(Z)Landroid/content/SyncRequest$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mIsManual:Z

    return-object p0
.end method

.method public setNoRetry(Z)Landroid/content/SyncRequest$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mNoRetry:Z

    return-object p0
.end method

.method public setPriority(I)Landroid/content/SyncRequest$Builder;
    .locals 1

    const/4 v0, -0x2

    if-lt p1, v0, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 1
    iput p1, p0, Landroid/content/SyncRequest$Builder;->mPriority:I

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Priority must be within range [-2, 2]"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSyncAdapter(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncRequest$Builder;
    .locals 1

    .line 1
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncTarget:I

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Authority must be non-empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x2

    .line 4
    iput v0, p0, Landroid/content/SyncRequest$Builder;->mSyncTarget:I

    .line 5
    iput-object p1, p0, Landroid/content/SyncRequest$Builder;->mAccount:Landroid/accounts/Account;

    .line 6
    iput-object p2, p0, Landroid/content/SyncRequest$Builder;->mAuthority:Ljava/lang/String;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Landroid/content/SyncRequest$Builder;->mComponentName:Landroid/content/ComponentName;

    return-object p0

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Sync target has already been defined."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTransferSize(JJ)Landroid/content/SyncRequest$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/content/SyncRequest$Builder;->mRxBytes:J

    .line 2
    iput-wide p3, p0, Landroid/content/SyncRequest$Builder;->mTxBytes:J

    return-object p0
.end method

.method public syncOnce()Landroid/content/SyncRequest$Builder;
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    const-wide/16 v0, 0x0

    .line 3
    invoke-direct {p0, v0, v1, v0, v1}, Landroid/content/SyncRequest$Builder;->setupInterval(JJ)V

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sync type has already been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public syncPeriodic(JJ)Landroid/content/SyncRequest$Builder;
    .locals 1

    .line 1
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/SyncRequest$Builder;->setupInterval(JJ)V

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Sync type has already been defined."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
