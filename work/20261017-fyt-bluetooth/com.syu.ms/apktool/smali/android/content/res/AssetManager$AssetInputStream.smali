.class public final Landroid/content/res/AssetManager$AssetInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/AssetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AssetInputStream"
.end annotation


# instance fields
.field private mAsset:I

.field private mLength:J

.field private mMarkPos:J

.field public final synthetic this$0:Landroid/content/res/AssetManager;


# direct methods
.method private constructor <init>(Landroid/content/res/AssetManager;I)V
    .locals 0

    .line 2
    iput-object p1, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 3
    iput p2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    .line 4
    invoke-static {p1, p2}, Landroid/content/res/AssetManager;->access$100(Landroid/content/res/AssetManager;I)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/content/res/AssetManager$AssetInputStream;->mLength:J

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/res/AssetManager;ILandroid/content/res/AssetManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;I)V

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->access$300(Landroid/content/res/AssetManager;I)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method public final close()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    invoke-static {v2, v1}, Landroid/content/res/AssetManager;->access$400(Landroid/content/res/AssetManager;I)V

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    .line 5
    iget-object v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v1, v2}, Landroid/content/res/AssetManager;->access$500(Landroid/content/res/AssetManager;I)V

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public finalize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->close()V

    return-void
.end method

.method public final getAssetInt()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    return v0
.end method

.method public final mark(I)V
    .locals 4

    .line 1
    iget-object p1, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Landroid/content/res/AssetManager;->access$600(Landroid/content/res/AssetManager;IJI)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mMarkPos:J

    return-void
.end method

.method public final markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final read()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->access$200(Landroid/content/res/AssetManager;I)I

    move-result v0

    return v0
.end method

.method public final read([B)I
    .locals 4

    .line 2
    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v3, v2}, Landroid/content/res/AssetManager;->access$700(Landroid/content/res/AssetManager;I[BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 2

    .line 3
    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    invoke-static {v0, v1, p1, p2, p3}, Landroid/content/res/AssetManager;->access$700(Landroid/content/res/AssetManager;I[BII)I

    move-result p1

    return p1
.end method

.method public final reset()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    iget-wide v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mMarkPos:J

    const/4 v4, -0x1

    invoke-static {v0, v1, v2, v3, v4}, Landroid/content/res/AssetManager;->access$600(Landroid/content/res/AssetManager;IJI)J

    return-void
.end method

.method public final skip(J)J
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/content/res/AssetManager;->access$600(Landroid/content/res/AssetManager;IJI)J

    move-result-wide v0

    add-long v5, v0, p1

    .line 2
    iget-wide v7, p0, Landroid/content/res/AssetManager$AssetInputStream;->mLength:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    sub-long p1, v7, v0

    :cond_0
    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 3
    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    invoke-static {v0, v1, p1, p2, v4}, Landroid/content/res/AssetManager;->access$600(Landroid/content/res/AssetManager;IJI)J

    :cond_1
    return-wide p1
.end method
