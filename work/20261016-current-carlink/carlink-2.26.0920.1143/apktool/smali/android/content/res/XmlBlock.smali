.class final Landroid/content/res/XmlBlock;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/XmlBlock$Parser;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field private final mAssets:Landroid/content/res/AssetManager;

.field private final mNative:J

.field private mOpen:Z

.field private mOpenCount:I

.field final mStrings:Landroid/content/res/StringBlock;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;J)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    .line 15
    iput v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    .line 16
    iput-object p1, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    .line 17
    iput-wide p2, p0, Landroid/content/res/XmlBlock;->mNative:J

    .line 18
    new-instance p1, Landroid/content/res/StringBlock;

    invoke-static {p2, p3}, Landroid/content/res/XmlBlock;->nativeGetStringBlock(J)J

    move-result-wide p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, p3, v0}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object p1, p0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    .line 3
    iput v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    .line 5
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/content/res/XmlBlock;->nativeCreate([BII)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/content/res/XmlBlock;->mNative:J

    .line 6
    new-instance p1, Landroid/content/res/StringBlock;

    invoke-static {v2, v3}, Landroid/content/res/XmlBlock;->nativeGetStringBlock(J)J

    move-result-wide v2

    invoke-direct {p1, v2, v3, v1}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object p1, p0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    .line 9
    iput v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    .line 11
    invoke-static {p1, p2, p3}, Landroid/content/res/XmlBlock;->nativeCreate([BII)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/content/res/XmlBlock;->mNative:J

    .line 12
    new-instance p3, Landroid/content/res/StringBlock;

    invoke-static {p1, p2}, Landroid/content/res/XmlBlock;->nativeGetStringBlock(J)J

    move-result-wide p1

    const/4 v0, 0x0

    invoke-direct {p3, p1, p2, v0}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object p3, p0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    return-void
.end method

.method public static synthetic access$008(Landroid/content/res/XmlBlock;)I
    .locals 2

    iget v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    return v0
.end method

.method public static synthetic access$100(J)I
    .locals 0

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetText(J)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1000(JLjava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/content/res/XmlBlock;->nativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1100(JI)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeResource(JI)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1200(J)I
    .locals 0

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetIdAttribute(J)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1300(J)I
    .locals 0

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetClassAttribute(J)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1400(J)I
    .locals 0

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetStyleAttribute(J)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1500(J)V
    .locals 0

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeDestroyParseState(J)V

    return-void
.end method

.method public static synthetic access$1600(Landroid/content/res/XmlBlock;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/res/XmlBlock;->decOpenCountLocked()V

    return-void
.end method

.method public static synthetic access$200(J)I
    .locals 0

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetLineNumber(J)I

    move-result p0

    return p0
.end method

.method public static synthetic access$300(J)I
    .locals 0

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetNamespace(J)I

    move-result p0

    return p0
.end method

.method public static synthetic access$400(JI)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeNamespace(JI)I

    move-result p0

    return p0
.end method

.method public static synthetic access$500(JI)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeName(JI)I

    move-result p0

    return p0
.end method

.method public static synthetic access$600(J)I
    .locals 0

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetAttributeCount(J)I

    move-result p0

    return p0
.end method

.method public static synthetic access$700(JI)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeStringValue(JI)I

    move-result p0

    return p0
.end method

.method public static synthetic access$800(JI)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeDataType(JI)I

    move-result p0

    return p0
.end method

.method public static synthetic access$900(JI)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeData(JI)I

    move-result p0

    return p0
.end method

.method private decOpenCountLocked()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Landroid/content/res/XmlBlock;->mNative:J

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->nativeDestroy(J)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->xmlBlockGone(I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method private static final native nativeCreate([BII)J
.end method

.method private static final native nativeCreateParseState(J)J
.end method

.method private static final native nativeDestroy(J)V
.end method

.method private static final native nativeDestroyParseState(J)V
.end method

.method private static final native nativeGetAttributeCount(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetAttributeData(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetAttributeDataType(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetAttributeName(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetAttributeNamespace(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetAttributeResource(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetAttributeStringValue(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetClassAttribute(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetIdAttribute(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetLineNumber(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static final native nativeGetName(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetNamespace(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetStringBlock(J)J
.end method

.method private static final native nativeGetStyleAttribute(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetText(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static final native nativeNext(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/content/res/XmlBlock;->decOpenCountLocked()V

    .line 10
    .line 11
    .line 12
    :cond_0
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw v0
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Landroid/content/res/XmlBlock;->close()V

    return-void
.end method

.method public newParser()Landroid/content/res/XmlResourceParser;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Landroid/content/res/XmlBlock;->mNative:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v2, v0, v2

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    new-instance v2, Landroid/content/res/XmlBlock$Parser;

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->nativeCreateParseState(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    invoke-direct {v2, p0, v0, v1, p0}, Landroid/content/res/XmlBlock$Parser;-><init>(Landroid/content/res/XmlBlock;JLandroid/content/res/XmlBlock;)V

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-object v2

    .line 21
    :cond_0
    monitor-exit p0

    .line 22
    const/4 v0, 0x0

    .line 23
    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw v0
.end method
