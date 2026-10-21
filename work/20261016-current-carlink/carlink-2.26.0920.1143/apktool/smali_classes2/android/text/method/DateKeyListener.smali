.class public Landroid/text/method/DateKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "SourceFile"


# static fields
.field public static final CHARACTERS:[C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final SKELETONS:[Ljava/lang/String;

.field private static final SYMBOLS_TO_IGNORE:Ljava/lang/String; = "yMLd"

.field private static final sInstanceCache:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/Locale;",
            "Landroid/text/method/DateKeyListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mCharacters:[C

.field private final mNeedsAdvancedInput:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string/jumbo v0, "yM"

    .line 2
    .line 3
    .line 4
    const-string v1, "Md"

    .line 5
    .line 6
    const-string/jumbo v2, "yMd"

    .line 7
    .line 8
    .line 9
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Landroid/text/method/DateKeyListener;->SKELETONS:[Ljava/lang/String;

    .line 14
    .line 15
    const/16 v0, 0xd

    .line 16
    .line 17
    new-array v0, v0, [C

    .line 18
    .line 19
    fill-array-data v0, :array_0

    .line 20
    .line 21
    .line 22
    sput-object v0, Landroid/text/method/DateKeyListener;->CHARACTERS:[C

    .line 23
    .line 24
    new-instance v0, Ljava/lang/Object;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    sput-object v0, Landroid/text/method/DateKeyListener;->sLock:Ljava/lang/Object;

    .line 30
    .line 31
    new-instance v0, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    sput-object v0, Landroid/text/method/DateKeyListener;->sInstanceCache:Ljava/util/HashMap;

    .line 37
    .line 38
    return-void

    .line 39
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2fs
        0x2ds
        0x2es
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroid/text/method/DateKeyListener;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    .line 3
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    invoke-static {v0, p1}, Landroid/text/method/NumberKeyListener;->addDigits(Ljava/util/Collection;Ljava/util/Locale;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Landroid/text/method/DateKeyListener;->SKELETONS:[Ljava/lang/String;

    const-string/jumbo v4, "yMLd"

    .line 5
    invoke-static {v0, p1, v1, v4}, Landroid/text/method/NumberKeyListener;->addFormatCharsFromSkeletons(Ljava/util/Collection;Ljava/util/Locale;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    if-eqz p1, :cond_1

    .line 6
    invoke-static {v0}, Landroid/text/method/NumberKeyListener;->collectionToArray(Ljava/util/Collection;)[C

    move-result-object p1

    iput-object p1, p0, Landroid/text/method/DateKeyListener;->mCharacters:[C

    .line 7
    sget-object v0, Landroid/text/method/DateKeyListener;->CHARACTERS:[C

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->containsAll([C[C)Z

    move-result p1

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Landroid/text/method/DateKeyListener;->mNeedsAdvancedInput:Z

    goto :goto_1

    .line 8
    :cond_1
    sget-object p1, Landroid/text/method/DateKeyListener;->CHARACTERS:[C

    iput-object p1, p0, Landroid/text/method/DateKeyListener;->mCharacters:[C

    .line 9
    iput-boolean v3, p0, Landroid/text/method/DateKeyListener;->mNeedsAdvancedInput:Z

    :goto_1
    return-void
.end method

.method public static getInstance()Landroid/text/method/DateKeyListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Landroid/text/method/DateKeyListener;->getInstance(Ljava/util/Locale;)Landroid/text/method/DateKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/text/method/DateKeyListener;
    .locals 3

    .line 2
    sget-object v0, Landroid/text/method/DateKeyListener;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Landroid/text/method/DateKeyListener;->sInstanceCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/method/DateKeyListener;

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Landroid/text/method/DateKeyListener;

    invoke-direct {v2, p0}, Landroid/text/method/DateKeyListener;-><init>(Ljava/util/Locale;)V

    .line 5
    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public getAcceptedChars()[C
    .locals 1

    iget-object v0, p0, Landroid/text/method/DateKeyListener;->mCharacters:[C

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    iget-boolean v0, p0, Landroid/text/method/DateKeyListener;->mNeedsAdvancedInput:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/16 v0, 0x14

    return v0
.end method
