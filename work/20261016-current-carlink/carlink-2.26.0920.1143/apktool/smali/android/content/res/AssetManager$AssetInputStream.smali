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
.field private mAsset:J

.field private mLength:J

.field private mMarkPos:J

.field final synthetic this$0:Landroid/content/res/AssetManager;


# direct methods
.method private constructor <init>(Landroid/content/res/AssetManager;J)V
    .locals 0

    .line 2
    iput-object p1, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 3
    iput-wide p2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    .line 4
    invoke-static {p1, p2, p3}, Landroid/content/res/AssetManager;->access$100(Landroid/content/res/AssetManager;J)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/content/res/AssetManager$AssetInputStream;->mLength:J

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/res/AssetManager;JLandroid/content/res/AssetManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;J)V

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 4

    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget-wide v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    invoke-static {v0, v1, v2}, Landroid/content/res/AssetManager;->access$300(Landroid/content/res/AssetManager;J)J

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
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    .line 5
    .line 6
    const-wide/16 v3, 0x0

    .line 7
    .line 8
    cmp-long v5, v1, v3

    .line 9
    .line 10
    if-eqz v5, :cond_0

    .line 11
    .line 12
    iget-object v5, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    .line 13
    .line 14
    invoke-static {v5, v1, v2}, Landroid/content/res/AssetManager;->access$400(Landroid/content/res/AssetManager;J)V

    .line 15
    .line 16
    .line 17
    iput-wide v3, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    .line 18
    .line 19
    iget-object v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    int-to-long v2, v2

    .line 26
    invoke-static {v1, v2, v3}, Landroid/content/res/AssetManager;->access$500(Landroid/content/res/AssetManager;J)V

    .line 27
    .line 28
    .line 29
    :cond_0
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw v1
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->close()V

    return-void
.end method

.method public final getAssetInt()I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getNativeAsset()J
    .locals 2

    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    return-wide v0
.end method

.method public final mark(I)V
    .locals 6

    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget-wide v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/content/res/AssetManager;->access$600(Landroid/content/res/AssetManager;JJI)J

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
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget-wide v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    invoke-static {v0, v1, v2}, Landroid/content/res/AssetManager;->access$200(Landroid/content/res/AssetManager;J)I

    move-result v0

    return v0
.end method

.method public final read([B)I
    .locals 6

    .line 2
    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget-wide v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    const/4 v4, 0x0

    array-length v5, p1

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Landroid/content/res/AssetManager;->access$700(Landroid/content/res/AssetManager;J[BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 6

    .line 3
    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget-wide v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/content/res/AssetManager;->access$700(Landroid/content/res/AssetManager;J[BII)I

    move-result p1

    return p1
.end method

.method public final reset()V
    .locals 6

    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget-wide v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    iget-wide v3, p0, Landroid/content/res/AssetManager$AssetInputStream;->mMarkPos:J

    const/4 v5, -0x1

    invoke-static/range {v0 .. v5}, Landroid/content/res/AssetManager;->access$600(Landroid/content/res/AssetManager;JJI)J

    return-void
.end method

.method public final skip(J)J
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    .line 2
    .line 3
    iget-wide v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const/4 v5, 0x0

    .line 8
    invoke-static/range {v0 .. v5}, Landroid/content/res/AssetManager;->access$600(Landroid/content/res/AssetManager;JJI)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    add-long v2, v0, p1

    .line 13
    .line 14
    iget-wide v4, p0, Landroid/content/res/AssetManager$AssetInputStream;->mLength:J

    .line 15
    .line 16
    cmp-long v2, v2, v4

    .line 17
    .line 18
    if-lez v2, :cond_0

    .line 19
    .line 20
    sub-long p1, v4, v0

    .line 21
    .line 22
    :cond_0
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    cmp-long v0, p1, v0

    .line 25
    .line 26
    if-lez v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    .line 29
    .line 30
    iget-wide v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    move-wide v3, p1

    .line 34
    invoke-static/range {v0 .. v5}, Landroid/content/res/AssetManager;->access$600(Landroid/content/res/AssetManager;JJI)J

    .line 35
    .line 36
    .line 37
    :cond_1
    return-wide p1
.end method
