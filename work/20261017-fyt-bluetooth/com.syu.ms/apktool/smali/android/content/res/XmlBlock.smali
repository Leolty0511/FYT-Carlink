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

.field private final mNative:I

.field private mOpen:Z

.field private mOpenCount:I

.field public final mStrings:Landroid/content/res/StringBlock;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;I)V
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
    iput p2, p0, Landroid/content/res/XmlBlock;->mNative:I

    .line 18
    new-instance p1, Landroid/content/res/StringBlock;

    invoke-static {p2}, Landroid/content/res/XmlBlock;->nativeGetStringBlock(I)I

    move-result p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Landroid/content/res/StringBlock;-><init>(IZ)V

    iput-object p1, p0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

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

    invoke-static {p1, v1, v0}, Landroid/content/res/XmlBlock;->nativeCreate([BII)I

    move-result p1

    iput p1, p0, Landroid/content/res/XmlBlock;->mNative:I

    .line 6
    new-instance v0, Landroid/content/res/StringBlock;

    invoke-static {p1}, Landroid/content/res/XmlBlock;->nativeGetStringBlock(I)I

    move-result p1

    invoke-direct {v0, p1, v1}, Landroid/content/res/StringBlock;-><init>(IZ)V

    iput-object v0, p0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

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
    invoke-static {p1, p2, p3}, Landroid/content/res/XmlBlock;->nativeCreate([BII)I

    move-result p1

    iput p1, p0, Landroid/content/res/XmlBlock;->mNative:I

    .line 12
    new-instance p2, Landroid/content/res/StringBlock;

    invoke-static {p1}, Landroid/content/res/XmlBlock;->nativeGetStringBlock(I)I

    move-result p1

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Landroid/content/res/StringBlock;-><init>(IZ)V

    iput-object p2, p0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    return-void
.end method

.method public static synthetic access$008(Landroid/content/res/XmlBlock;)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    return v0
.end method

.method public static synthetic access$100(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/content/res/XmlBlock;->nativeGetText(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1000(ILjava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeIndex(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1100(II)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetAttributeResource(II)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1200(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/content/res/XmlBlock;->nativeGetIdAttribute(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1300(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/content/res/XmlBlock;->nativeGetClassAttribute(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1400(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/content/res/XmlBlock;->nativeGetStyleAttribute(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1500(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/content/res/XmlBlock;->nativeDestroyParseState(I)V

    return-void
.end method

.method public static synthetic access$1600(Landroid/content/res/XmlBlock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/res/XmlBlock;->decOpenCountLocked()V

    return-void
.end method

.method public static synthetic access$200(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/content/res/XmlBlock;->nativeGetLineNumber(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$300(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/content/res/XmlBlock;->nativeGetNamespace(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$400(II)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetAttributeNamespace(II)I

    move-result p0

    return p0
.end method

.method public static synthetic access$500(II)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetAttributeName(II)I

    move-result p0

    return p0
.end method

.method public static synthetic access$600(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/content/res/XmlBlock;->nativeGetAttributeCount(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$700(II)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetAttributeStringValue(II)I

    move-result p0

    return p0
.end method

.method public static synthetic access$800(II)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetAttributeDataType(II)I

    move-result p0

    return p0
.end method

.method public static synthetic access$900(II)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetAttributeData(II)I

    move-result p0

    return p0
.end method

.method private decOpenCountLocked()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Landroid/content/res/XmlBlock;->mNative:I

    invoke-static {v0}, Landroid/content/res/XmlBlock;->nativeDestroy(I)V

    .line 3
    iget-object v0, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->xmlBlockGone(I)V

    :cond_0
    return-void
.end method

.method private static final native nativeCreate([BII)I
.end method

.method private static final native nativeCreateParseState(I)I
.end method

.method private static final native nativeDestroy(I)V
.end method

.method private static final native nativeDestroyParseState(I)V
.end method

.method private static final native nativeGetAttributeCount(I)I
.end method

.method private static final native nativeGetAttributeData(II)I
.end method

.method private static final native nativeGetAttributeDataType(II)I
.end method

.method private static final native nativeGetAttributeIndex(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method private static final native nativeGetAttributeName(II)I
.end method

.method private static final native nativeGetAttributeNamespace(II)I
.end method

.method private static final native nativeGetAttributeResource(II)I
.end method

.method private static final native nativeGetAttributeStringValue(II)I
.end method

.method private static final native nativeGetClassAttribute(I)I
.end method

.method private static final native nativeGetIdAttribute(I)I
.end method

.method private static final native nativeGetLineNumber(I)I
.end method

.method public static final native nativeGetName(I)I
.end method

.method private static final native nativeGetNamespace(I)I
.end method

.method private static final native nativeGetStringBlock(I)I
.end method

.method private static final native nativeGetStyleAttribute(I)I
.end method

.method private static final native nativeGetText(I)I
.end method

.method public static final native nativeNext(I)I
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    .line 4
    invoke-direct {p0}, Landroid/content/res/XmlBlock;->decOpenCountLocked()V

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public finalize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/res/XmlBlock;->close()V

    return-void
.end method

.method public newParser()Landroid/content/res/XmlResourceParser;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Landroid/content/res/XmlBlock;->mNative:I

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Landroid/content/res/XmlBlock$Parser;

    invoke-static {v0}, Landroid/content/res/XmlBlock;->nativeCreateParseState(I)I

    move-result v0

    invoke-direct {v1, p0, v0, p0}, Landroid/content/res/XmlBlock$Parser;-><init>(Landroid/content/res/XmlBlock;ILandroid/content/res/XmlBlock;)V

    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
