.class public Landroid/util/LogWriter;
.super Ljava/io/Writer;
.source "SourceFile"


# instance fields
.field private final mBuffer:I

.field private mBuilder:Ljava/lang/StringBuilder;

.field private final mPriority:I

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    .line 3
    iput p1, p0, Landroid/util/LogWriter;->mPriority:I

    .line 4
    iput-object p2, p0, Landroid/util/LogWriter;->mTag:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroid/util/LogWriter;->mBuffer:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    .line 8
    iput p1, p0, Landroid/util/LogWriter;->mPriority:I

    .line 9
    iput-object p2, p0, Landroid/util/LogWriter;->mTag:Ljava/lang/String;

    .line 10
    iput p3, p0, Landroid/util/LogWriter;->mBuffer:I

    return-void
.end method

.method private flushBuilder()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget v0, p0, Landroid/util/LogWriter;->mBuffer:I

    iget v1, p0, Landroid/util/LogWriter;->mPriority:I

    iget-object v2, p0, Landroid/util/LogWriter;->mTag:Ljava/lang/String;

    iget-object v3, p0, Landroid/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Landroid/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/util/LogWriter;->flushBuilder()V

    return-void
.end method

.method public flush()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/util/LogWriter;->flushBuilder()V

    return-void
.end method

.method public write([CII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    add-int v1, p2, v0

    .line 1
    aget-char v1, p1, v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/util/LogWriter;->flushBuilder()V

    goto :goto_1

    .line 3
    :cond_0
    iget-object v2, p0, Landroid/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
