.class public Landroid/app/job/JobInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/JobInfo$Builder;,
        Landroid/app/job/JobInfo$TriggerContentUri;,
        Landroid/app/job/JobInfo$BackoffPolicy;,
        Landroid/app/job/JobInfo$NetworkType;
    }
.end annotation


# static fields
.field public static final BACKOFF_POLICY_EXPONENTIAL:I = 0x1

.field public static final BACKOFF_POLICY_LINEAR:I = 0x0

.field public static final CONSTRAINT_FLAG_BATTERY_NOT_LOW:I = 0x2

.field public static final CONSTRAINT_FLAG_CHARGING:I = 0x1

.field public static final CONSTRAINT_FLAG_DEVICE_IDLE:I = 0x4

.field public static final CONSTRAINT_FLAG_STORAGE_NOT_LOW:I = 0x8

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_BACKOFF_POLICY:I = 0x1

.field public static final DEFAULT_INITIAL_BACKOFF_MILLIS:J = 0x7530L

.field public static final FLAG_WILL_BE_FOREGROUND:I = 0x1

.field public static final MAX_BACKOFF_DELAY_MILLIS:J = 0x112a880L

.field public static final MIN_BACKOFF_MILLIS:J = 0x2710L

.field private static final MIN_FLEX_MILLIS:J = 0x493e0L

.field private static final MIN_PERIOD_MILLIS:J = 0xdbba0L

.field public static final NETWORK_TYPE_ANY:I = 0x1

.field public static final NETWORK_TYPE_METERED:I = 0x4

.field public static final NETWORK_TYPE_NONE:I = 0x0

.field public static final NETWORK_TYPE_NOT_ROAMING:I = 0x3

.field public static final NETWORK_TYPE_UNMETERED:I = 0x2

.field public static final PRIORITY_ADJ_ALWAYS_RUNNING:I = -0x50

.field public static final PRIORITY_ADJ_OFTEN_RUNNING:I = -0x28

.field public static final PRIORITY_DEFAULT:I = 0x0

.field public static final PRIORITY_FOREGROUND_APP:I = 0x1e

.field public static final PRIORITY_SYNC_EXPEDITED:I = 0xa

.field public static final PRIORITY_SYNC_INITIALIZATION:I = 0x14

.field public static final PRIORITY_TOP_APP:I = 0x28

.field private static TAG:Ljava/lang/String; = "JobInfo"


# instance fields
.field private final backoffPolicy:I

.field private final clipData:Landroid/content/ClipData;

.field private final clipGrantFlags:I

.field private final constraintFlags:I

.field private final extras:Landroid/os/PersistableBundle;

.field private final flags:I

.field private final flexMillis:J

.field private final hasEarlyConstraint:Z

.field private final hasLateConstraint:Z

.field private final initialBackoffMillis:J

.field private final intervalMillis:J

.field private final isPeriodic:Z

.field private final isPersisted:Z

.field private final isRescheduleEnable:Z

.field private final jobId:I

.field private final maxExecutionDelayMillis:J

.field private final minLatencyMillis:J

.field private final networkType:I

.field private final priority:I

.field private final service:Landroid/content/ComponentName;

.field private final transientExtras:Landroid/os/Bundle;

.field private final triggerContentMaxDelay:J

.field private final triggerContentUpdateDelay:J

.field private final triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/job/JobInfo$1;

    invoke-direct {v0}, Landroid/app/job/JobInfo$1;-><init>()V

    sput-object v0, Landroid/app/job/JobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/app/job/JobInfo$Builder;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$000(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->jobId:I

    .line 33
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$100(Landroid/app/job/JobInfo$Builder;)Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PersistableBundle;->deepCopy()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    .line 34
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$200(Landroid/app/job/JobInfo$Builder;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    .line 35
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$300(Landroid/app/job/JobInfo$Builder;)Landroid/content/ClipData;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    .line 36
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$400(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    .line 37
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$500(Landroid/app/job/JobInfo$Builder;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    .line 38
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$600(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    .line 39
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$700(Landroid/app/job/JobInfo$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$700(Landroid/app/job/JobInfo$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$700(Landroid/app/job/JobInfo$Builder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/job/JobInfo$TriggerContentUri;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    .line 41
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$800(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    .line 42
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$900(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    .line 43
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$1000(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->networkType:I

    .line 44
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$1100(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    .line 45
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$1200(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    .line 46
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$1300(Landroid/app/job/JobInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    .line 47
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$1400(Landroid/app/job/JobInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    .line 48
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$1500(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    .line 49
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$1600(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->flexMillis:J

    .line 50
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$1700(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    .line 51
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$1800(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    .line 52
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$1900(Landroid/app/job/JobInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    .line 53
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$2000(Landroid/app/job/JobInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    .line 54
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$2100(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->priority:I

    .line 55
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$2200(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->flags:I

    .line 56
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->access$2300(Landroid/app/job/JobInfo$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/app/job/JobInfo;->isRescheduleEnable:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/job/JobInfo$Builder;Landroid/app/job/JobInfo$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/app/job/JobInfo;-><init>(Landroid/app/job/JobInfo$Builder;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->jobId:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    iput-object v0, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    goto :goto_0

    .line 10
    :cond_0
    iput-object v1, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    .line 11
    iput v2, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    .line 12
    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    .line 14
    sget-object v0, Landroid/app/job/JobInfo$TriggerContentUri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/job/JobInfo$TriggerContentUri;

    iput-object v0, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->networkType:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/app/job/JobInfo;->flexMillis:J

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->priority:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->flags:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v1, :cond_5

    move v2, v1

    :cond_5
    iput-boolean v2, p0, Landroid/app/job/JobInfo;->isRescheduleEnable:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/job/JobInfo$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/app/job/JobInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static synthetic access$2700(Landroid/app/job/JobInfo;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    return-wide v0
.end method

.method public static synthetic access$2800()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/app/job/JobInfo;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$2900(Landroid/app/job/JobInfo;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo;->flexMillis:J

    return-wide v0
.end method

.method public static final getMinBackoffMillis()J
    .locals 2

    const-wide/16 v0, 0x2710

    return-wide v0
.end method

.method public static final getMinFlexMillis()J
    .locals 2

    const-wide/32 v0, 0x493e0

    return-wide v0
.end method

.method public static final getMinPeriodMillis()J
    .locals 2

    const-wide/32 v0, 0xdbba0

    return-wide v0
.end method

.method private static kindofEqualsBundle(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->kindofEquals(Landroid/os/BaseBundle;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Landroid/app/job/JobInfo;

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
    check-cast p1, Landroid/app/job/JobInfo;

    .line 8
    .line 9
    iget v0, p0, Landroid/app/job/JobInfo;->jobId:I

    .line 10
    .line 11
    iget v2, p1, Landroid/app/job/JobInfo;->jobId:I

    .line 12
    .line 13
    if-eq v0, v2, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    iget-object v0, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    .line 17
    .line 18
    iget-object v2, p1, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    .line 19
    .line 20
    invoke-static {v0, v2}, Landroid/app/job/JobInfo;->kindofEqualsBundle(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    return v1

    .line 27
    :cond_2
    iget-object v0, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    .line 28
    .line 29
    iget-object v2, p1, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-static {v0, v2}, Landroid/app/job/JobInfo;->kindofEqualsBundle(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    return v1

    .line 38
    :cond_3
    iget-object v0, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    .line 39
    .line 40
    iget-object v2, p1, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    .line 41
    .line 42
    if-eq v0, v2, :cond_4

    .line 43
    .line 44
    return v1

    .line 45
    :cond_4
    iget v0, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    .line 46
    .line 47
    iget v2, p1, Landroid/app/job/JobInfo;->clipGrantFlags:I

    .line 48
    .line 49
    if-eq v0, v2, :cond_5

    .line 50
    .line 51
    return v1

    .line 52
    :cond_5
    iget-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    .line 53
    .line 54
    iget-object v2, p1, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    .line 55
    .line 56
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_6

    .line 61
    .line 62
    return v1

    .line 63
    :cond_6
    iget v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    .line 64
    .line 65
    iget v2, p1, Landroid/app/job/JobInfo;->constraintFlags:I

    .line 66
    .line 67
    if-eq v0, v2, :cond_7

    .line 68
    .line 69
    return v1

    .line 70
    :cond_7
    iget-object v0, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    .line 71
    .line 72
    iget-object v2, p1, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    .line 73
    .line 74
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_8

    .line 79
    .line 80
    return v1

    .line 81
    :cond_8
    iget-wide v2, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    .line 82
    .line 83
    iget-wide v4, p1, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    .line 84
    .line 85
    cmp-long v0, v2, v4

    .line 86
    .line 87
    if-eqz v0, :cond_9

    .line 88
    .line 89
    return v1

    .line 90
    :cond_9
    iget-wide v2, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    .line 91
    .line 92
    iget-wide v4, p1, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    .line 93
    .line 94
    cmp-long v0, v2, v4

    .line 95
    .line 96
    if-eqz v0, :cond_a

    .line 97
    .line 98
    return v1

    .line 99
    :cond_a
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    .line 100
    .line 101
    iget-boolean v2, p1, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    .line 102
    .line 103
    if-eq v0, v2, :cond_b

    .line 104
    .line 105
    return v1

    .line 106
    :cond_b
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    .line 107
    .line 108
    iget-boolean v2, p1, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    .line 109
    .line 110
    if-eq v0, v2, :cond_c

    .line 111
    .line 112
    return v1

    .line 113
    :cond_c
    iget v0, p0, Landroid/app/job/JobInfo;->networkType:I

    .line 114
    .line 115
    iget v2, p1, Landroid/app/job/JobInfo;->networkType:I

    .line 116
    .line 117
    if-eq v0, v2, :cond_d

    .line 118
    .line 119
    return v1

    .line 120
    :cond_d
    iget-wide v2, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    .line 121
    .line 122
    iget-wide v4, p1, Landroid/app/job/JobInfo;->minLatencyMillis:J

    .line 123
    .line 124
    cmp-long v0, v2, v4

    .line 125
    .line 126
    if-eqz v0, :cond_e

    .line 127
    .line 128
    return v1

    .line 129
    :cond_e
    iget-wide v2, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    .line 130
    .line 131
    iget-wide v4, p1, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    .line 132
    .line 133
    cmp-long v0, v2, v4

    .line 134
    .line 135
    if-eqz v0, :cond_f

    .line 136
    .line 137
    return v1

    .line 138
    :cond_f
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    .line 139
    .line 140
    iget-boolean v2, p1, Landroid/app/job/JobInfo;->isPeriodic:Z

    .line 141
    .line 142
    if-eq v0, v2, :cond_10

    .line 143
    .line 144
    return v1

    .line 145
    :cond_10
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    .line 146
    .line 147
    iget-boolean v2, p1, Landroid/app/job/JobInfo;->isPersisted:Z

    .line 148
    .line 149
    if-eq v0, v2, :cond_11

    .line 150
    .line 151
    return v1

    .line 152
    :cond_11
    iget-wide v2, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    .line 153
    .line 154
    iget-wide v4, p1, Landroid/app/job/JobInfo;->intervalMillis:J

    .line 155
    .line 156
    cmp-long v0, v2, v4

    .line 157
    .line 158
    if-eqz v0, :cond_12

    .line 159
    .line 160
    return v1

    .line 161
    :cond_12
    iget-wide v2, p0, Landroid/app/job/JobInfo;->flexMillis:J

    .line 162
    .line 163
    iget-wide v4, p1, Landroid/app/job/JobInfo;->flexMillis:J

    .line 164
    .line 165
    cmp-long v0, v2, v4

    .line 166
    .line 167
    if-eqz v0, :cond_13

    .line 168
    .line 169
    return v1

    .line 170
    :cond_13
    iget-wide v2, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    .line 171
    .line 172
    iget-wide v4, p1, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    .line 173
    .line 174
    cmp-long v0, v2, v4

    .line 175
    .line 176
    if-eqz v0, :cond_14

    .line 177
    .line 178
    return v1

    .line 179
    :cond_14
    iget v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    .line 180
    .line 181
    iget v2, p1, Landroid/app/job/JobInfo;->backoffPolicy:I

    .line 182
    .line 183
    if-eq v0, v2, :cond_15

    .line 184
    .line 185
    return v1

    .line 186
    :cond_15
    iget v0, p0, Landroid/app/job/JobInfo;->priority:I

    .line 187
    .line 188
    iget v2, p1, Landroid/app/job/JobInfo;->priority:I

    .line 189
    .line 190
    if-eq v0, v2, :cond_16

    .line 191
    .line 192
    return v1

    .line 193
    :cond_16
    iget v0, p0, Landroid/app/job/JobInfo;->flags:I

    .line 194
    .line 195
    iget p1, p1, Landroid/app/job/JobInfo;->flags:I

    .line 196
    .line 197
    if-eq v0, p1, :cond_17

    .line 198
    .line 199
    return v1

    .line 200
    :cond_17
    const/4 p1, 0x1

    .line 201
    return p1
.end method

.method public getBackoffPolicy()I
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    return v0
.end method

.method public getClipData()Landroid/content/ClipData;
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public getClipGrantFlags()I
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    return v0
.end method

.method public getConstraintFlags()I
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    return v0
.end method

.method public getExtras()Landroid/os/PersistableBundle;
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo;->flags:I

    return v0
.end method

.method public getFlexMillis()J
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x5

    .line 6
    .line 7
    mul-long/2addr v2, v0

    .line 8
    const-wide/16 v4, 0x64

    .line 9
    .line 10
    div-long/2addr v2, v4

    .line 11
    iget-wide v4, p0, Landroid/app/job/JobInfo;->flexMillis:J

    .line 12
    .line 13
    invoke-static {}, Landroid/app/job/JobInfo;->getMinFlexMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v6

    .line 17
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    cmp-long v4, v2, v0

    .line 26
    .line 27
    if-gtz v4, :cond_0

    .line 28
    .line 29
    move-wide v0, v2

    .line 30
    :cond_0
    return-wide v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo;->jobId:I

    return v0
.end method

.method public getInitialBackoffMillis()J
    .locals 5

    .line 1
    invoke-static {}, Landroid/app/job/JobInfo;->getMinBackoffMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    .line 6
    .line 7
    cmp-long v4, v2, v0

    .line 8
    .line 9
    if-ltz v4, :cond_0

    .line 10
    .line 11
    move-wide v0, v2

    .line 12
    :cond_0
    return-wide v0
.end method

.method public getIntervalMillis()J
    .locals 5

    .line 1
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    .line 6
    .line 7
    cmp-long v4, v2, v0

    .line 8
    .line 9
    if-ltz v4, :cond_0

    .line 10
    .line 11
    move-wide v0, v2

    .line 12
    :cond_0
    return-wide v0
.end method

.method public getMaxExecutionDelayMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    return-wide v0
.end method

.method public getMinLatencyMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    return-wide v0
.end method

.method public getNetworkType()I
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo;->networkType:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo;->priority:I

    return v0
.end method

.method public getService()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getTransientExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getTriggerContentMaxDelay()J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    return-wide v0
.end method

.method public getTriggerContentUpdateDelay()J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    return-wide v0
.end method

.method public getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    return-object v0
.end method

.method public hasEarlyConstraint()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    return v0
.end method

.method public hasLateConstraint()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    return v0
.end method

.method public hashCode()I
    .locals 9

    .line 1
    iget v0, p0, Landroid/app/job/JobInfo;->jobId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr v0, v1

    .line 14
    :cond_0
    iget-object v1, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    mul-int/lit8 v0, v0, 0x1f

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    :cond_1
    iget-object v1, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    mul-int/lit8 v0, v0, 0x1f

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v0, v1

    .line 36
    :cond_2
    mul-int/lit8 v0, v0, 0x1f

    .line 37
    .line 38
    iget v1, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    .line 39
    .line 40
    add-int/2addr v0, v1

    .line 41
    iget-object v1, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    mul-int/lit8 v0, v0, 0x1f

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/content/ComponentName;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v0, v1

    .line 52
    :cond_3
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    .line 54
    iget v1, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    .line 55
    .line 56
    add-int/2addr v0, v1

    .line 57
    iget-object v1, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    .line 58
    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    mul-int/lit8 v0, v0, 0x1f

    .line 62
    .line 63
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    add-int/2addr v0, v1

    .line 68
    :cond_4
    mul-int/lit8 v0, v0, 0x1f

    .line 69
    .line 70
    iget-wide v1, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    .line 71
    .line 72
    const/16 v3, 0x20

    .line 73
    .line 74
    ushr-long v4, v1, v3

    .line 75
    .line 76
    xor-long/2addr v1, v4

    .line 77
    long-to-int v1, v1

    .line 78
    add-int/2addr v0, v1

    .line 79
    mul-int/lit8 v0, v0, 0x1f

    .line 80
    .line 81
    iget-wide v1, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    .line 82
    .line 83
    ushr-long v4, v1, v3

    .line 84
    .line 85
    xor-long/2addr v1, v4

    .line 86
    long-to-int v1, v1

    .line 87
    add-int/2addr v0, v1

    .line 88
    mul-int/lit8 v0, v0, 0x1f

    .line 89
    .line 90
    iget-boolean v1, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    .line 91
    .line 92
    const/16 v2, 0x4cf

    .line 93
    .line 94
    const/16 v4, 0x4d5

    .line 95
    .line 96
    if-eqz v1, :cond_5

    .line 97
    .line 98
    move v1, v2

    .line 99
    goto :goto_0

    .line 100
    :cond_5
    move v1, v4

    .line 101
    :goto_0
    add-int/2addr v0, v1

    .line 102
    mul-int/lit8 v0, v0, 0x1f

    .line 103
    .line 104
    iget-boolean v1, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    .line 105
    .line 106
    if-eqz v1, :cond_6

    .line 107
    .line 108
    move v1, v2

    .line 109
    goto :goto_1

    .line 110
    :cond_6
    move v1, v4

    .line 111
    :goto_1
    add-int/2addr v0, v1

    .line 112
    mul-int/lit8 v0, v0, 0x1f

    .line 113
    .line 114
    iget v1, p0, Landroid/app/job/JobInfo;->networkType:I

    .line 115
    .line 116
    add-int/2addr v0, v1

    .line 117
    mul-int/lit8 v0, v0, 0x1f

    .line 118
    .line 119
    iget-wide v5, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    .line 120
    .line 121
    ushr-long v7, v5, v3

    .line 122
    .line 123
    xor-long/2addr v5, v7

    .line 124
    long-to-int v1, v5

    .line 125
    add-int/2addr v0, v1

    .line 126
    mul-int/lit8 v0, v0, 0x1f

    .line 127
    .line 128
    iget-wide v5, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    .line 129
    .line 130
    ushr-long v7, v5, v3

    .line 131
    .line 132
    xor-long/2addr v5, v7

    .line 133
    long-to-int v1, v5

    .line 134
    add-int/2addr v0, v1

    .line 135
    mul-int/lit8 v0, v0, 0x1f

    .line 136
    .line 137
    iget-boolean v1, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    .line 138
    .line 139
    if-eqz v1, :cond_7

    .line 140
    .line 141
    move v1, v2

    .line 142
    goto :goto_2

    .line 143
    :cond_7
    move v1, v4

    .line 144
    :goto_2
    add-int/2addr v0, v1

    .line 145
    mul-int/lit8 v0, v0, 0x1f

    .line 146
    .line 147
    iget-boolean v1, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    .line 148
    .line 149
    if-eqz v1, :cond_8

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_8
    move v2, v4

    .line 153
    :goto_3
    add-int/2addr v0, v2

    .line 154
    mul-int/lit8 v0, v0, 0x1f

    .line 155
    .line 156
    iget-wide v1, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    .line 157
    .line 158
    ushr-long v4, v1, v3

    .line 159
    .line 160
    xor-long/2addr v1, v4

    .line 161
    long-to-int v1, v1

    .line 162
    add-int/2addr v0, v1

    .line 163
    mul-int/lit8 v0, v0, 0x1f

    .line 164
    .line 165
    iget-wide v1, p0, Landroid/app/job/JobInfo;->flexMillis:J

    .line 166
    .line 167
    ushr-long v4, v1, v3

    .line 168
    .line 169
    xor-long/2addr v1, v4

    .line 170
    long-to-int v1, v1

    .line 171
    add-int/2addr v0, v1

    .line 172
    mul-int/lit8 v0, v0, 0x1f

    .line 173
    .line 174
    iget-wide v1, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    .line 175
    .line 176
    ushr-long v3, v1, v3

    .line 177
    .line 178
    xor-long/2addr v1, v3

    .line 179
    long-to-int v1, v1

    .line 180
    add-int/2addr v0, v1

    .line 181
    mul-int/lit8 v0, v0, 0x1f

    .line 182
    .line 183
    iget v1, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    .line 184
    .line 185
    add-int/2addr v0, v1

    .line 186
    mul-int/lit8 v0, v0, 0x1f

    .line 187
    .line 188
    iget v1, p0, Landroid/app/job/JobInfo;->priority:I

    .line 189
    .line 190
    add-int/2addr v0, v1

    .line 191
    mul-int/lit8 v0, v0, 0x1f

    .line 192
    .line 193
    iget v1, p0, Landroid/app/job/JobInfo;->flags:I

    .line 194
    .line 195
    add-int/2addr v0, v1

    .line 196
    return v0
.end method

.method public isPeriodic()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    return v0
.end method

.method public isPersisted()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    return v0
.end method

.method public isRequireBatteryNotLow()Z
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRequireCharging()Z
    .locals 2

    iget v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isRequireDeviceIdle()Z
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRequireStorageNotLow()Z
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRescheduleEnable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isRescheduleEnable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(job:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/app/job/JobInfo;->jobId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/app/job/JobInfo;->jobId:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    .line 25
    .line 26
    invoke-virtual {v0, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 27
    .line 28
    .line 29
    iget v0, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    .line 38
    .line 39
    :goto_0
    iget-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    .line 40
    .line 41
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 42
    .line 43
    .line 44
    iget v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    .line 50
    .line 51
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 52
    .line 53
    .line 54
    iget-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    .line 55
    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 57
    .line 58
    .line 59
    iget-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    .line 60
    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 62
    .line 63
    .line 64
    iget p2, p0, Landroid/app/job/JobInfo;->networkType:I

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    .line 68
    .line 69
    iget-wide v0, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    .line 70
    .line 71
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 72
    .line 73
    .line 74
    iget-wide v0, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    .line 75
    .line 76
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    .line 78
    .line 79
    iget-boolean p2, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    .line 80
    .line 81
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    .line 83
    .line 84
    iget-boolean p2, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    .line 88
    .line 89
    iget-wide v0, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    .line 90
    .line 91
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 92
    .line 93
    .line 94
    iget-wide v0, p0, Landroid/app/job/JobInfo;->flexMillis:J

    .line 95
    .line 96
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 97
    .line 98
    .line 99
    iget-wide v0, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    .line 100
    .line 101
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 102
    .line 103
    .line 104
    iget p2, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    .line 108
    .line 109
    iget-boolean p2, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    .line 110
    .line 111
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    .line 113
    .line 114
    iget-boolean p2, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    .line 115
    .line 116
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    .line 118
    .line 119
    iget p2, p0, Landroid/app/job/JobInfo;->priority:I

    .line 120
    .line 121
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    .line 123
    .line 124
    iget p2, p0, Landroid/app/job/JobInfo;->flags:I

    .line 125
    .line 126
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    .line 128
    .line 129
    iget-boolean p2, p0, Landroid/app/job/JobInfo;->isRescheduleEnable:Z

    .line 130
    .line 131
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    .line 133
    .line 134
    return-void
.end method
