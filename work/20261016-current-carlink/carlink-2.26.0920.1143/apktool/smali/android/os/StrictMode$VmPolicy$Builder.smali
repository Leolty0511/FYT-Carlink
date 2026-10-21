.class public final Landroid/os/StrictMode$VmPolicy$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode$VmPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mClassInstanceLimit:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mClassInstanceLimitNeedCow:Z

.field private mMask:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimitNeedCow:Z

    .line 3
    iput v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    return-void
.end method

.method public constructor <init>(Landroid/os/StrictMode$VmPolicy;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimitNeedCow:Z

    .line 6
    iget v0, p1, Landroid/os/StrictMode$VmPolicy;->mask:I

    iput v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimitNeedCow:Z

    .line 8
    iget-object p1, p1, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    iput-object p1, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    return-void
.end method

.method public static synthetic access$400(Landroid/os/StrictMode$VmPolicy$Builder;I)Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object p0

    return-object p0
.end method

.method private enable(I)Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    iget v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    return-object p0
.end method


# virtual methods
.method public build()Landroid/os/StrictMode$VmPolicy;
    .locals 4

    .line 1
    iget v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/high16 v1, 0x270000

    .line 6
    .line 7
    and-int/2addr v0, v1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 11
    .line 12
    .line 13
    :cond_0
    new-instance v0, Landroid/os/StrictMode$VmPolicy;

    .line 14
    .line 15
    iget v1, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    .line 16
    .line 17
    iget-object v2, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->access$100()Ljava/util/HashMap;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    :goto_0
    const/4 v3, 0x0

    .line 27
    invoke-direct {v0, v1, v2, v3}, Landroid/os/StrictMode$VmPolicy;-><init>(ILjava/util/HashMap;Landroid/os/StrictMode$1;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public detectActivityLeaks()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public detectAll()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0xb

    .line 13
    .line 14
    if-lt v0, v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectActivityLeaks()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 20
    .line 21
    .line 22
    :cond_0
    const/16 v1, 0x10

    .line 23
    .line 24
    if-lt v0, v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedRegistrationObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 27
    .line 28
    .line 29
    :cond_1
    const/16 v1, 0x12

    .line 30
    .line 31
    if-lt v0, v1, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectFileUriExposure()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 34
    .line 35
    .line 36
    :cond_2
    const/16 v1, 0x17

    .line 37
    .line 38
    if-lt v0, v1, :cond_3

    .line 39
    .line 40
    const-string/jumbo v1, "persist.sys.strictmode.clear"

    .line 41
    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectCleartextNetwork()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 51
    .line 52
    .line 53
    :cond_3
    const/16 v1, 0x1a

    .line 54
    .line 55
    if-lt v0, v1, :cond_4

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectContentUriWithoutPermission()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectUntaggedSockets()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 61
    .line 62
    .line 63
    :cond_4
    return-object p0
.end method

.method public detectCleartextNetwork()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public detectContentUriWithoutPermission()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    const v0, 0x8000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public detectFileUriExposure()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public detectLeakedRegistrationObjects()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public detectUntaggedSockets()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    const/high16 v0, -0x80000000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public disable(I)Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    iget v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    return-object p0
.end method

.method public penaltyDeath()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public penaltyDeathOnCleartextNetwork()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    const/high16 v0, 0x2000000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public penaltyDeathOnFileUriExposure()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    const/high16 v0, 0x4000000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public penaltyDropBox()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    const/high16 v0, 0x200000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setClassInstanceLimit(Ljava/lang/Class;I)Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-boolean v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimitNeedCow:Z

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-ne v0, p2, :cond_0

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimitNeedCow:Z

    .line 32
    .line 33
    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/util/HashMap;

    .line 40
    .line 41
    iput-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    new-instance v0, Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    .line 54
    .line 55
    :cond_2
    :goto_0
    iget v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    .line 56
    .line 57
    or-int/lit16 v0, v0, 0x800

    .line 58
    .line 59
    iput v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    .line 60
    .line 61
    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    return-object p0

    .line 71
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    .line 72
    .line 73
    const-string/jumbo p2, "klass == null"

    .line 74
    .line 75
    .line 76
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1
.end method
