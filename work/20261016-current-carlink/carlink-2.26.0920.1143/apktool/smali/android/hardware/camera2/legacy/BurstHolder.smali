.class public Landroid/hardware/camera2/legacy/BurstHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BurstHolder"


# instance fields
.field private final mRepeating:Z

.field private final mRequestBuilders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/legacy/RequestHolder$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestId:I


# direct methods
.method public constructor <init>(IZ[Landroid/hardware/camera2/CaptureRequest;Ljava/util/Collection;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ[",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/hardware/camera2/legacy/BurstHolder;->mRequestBuilders:Ljava/util/ArrayList;

    .line 10
    .line 11
    array-length v0, p3

    .line 12
    const/4 v1, 0x0

    .line 13
    move v8, v1

    .line 14
    :goto_0
    if-ge v1, v0, :cond_0

    .line 15
    .line 16
    aget-object v5, p3, v1

    .line 17
    .line 18
    iget-object v9, p0, Landroid/hardware/camera2/legacy/BurstHolder;->mRequestBuilders:Ljava/util/ArrayList;

    .line 19
    .line 20
    new-instance v10, Landroid/hardware/camera2/legacy/RequestHolder$Builder;

    .line 21
    .line 22
    move-object v2, v10

    .line 23
    move v3, p1

    .line 24
    move v4, v8

    .line 25
    move v6, p2

    .line 26
    move-object v7, p4

    .line 27
    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/legacy/RequestHolder$Builder;-><init>(IILandroid/hardware/camera2/CaptureRequest;ZLjava/util/Collection;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    add-int/lit8 v8, v8, 0x1

    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-boolean p2, p0, Landroid/hardware/camera2/legacy/BurstHolder;->mRepeating:Z

    .line 39
    .line 40
    iput p1, p0, Landroid/hardware/camera2/legacy/BurstHolder;->mRequestId:I

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public getNumberOfRequests()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/legacy/BurstHolder;->mRequestBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRequestId()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/legacy/BurstHolder;->mRequestId:I

    return v0
.end method

.method public isRepeating()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/BurstHolder;->mRepeating:Z

    return v0
.end method

.method public produceRequestHolders(J)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/legacy/RequestHolder;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroid/hardware/camera2/legacy/BurstHolder;->mRequestBuilders:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Landroid/hardware/camera2/legacy/RequestHolder$Builder;

    .line 24
    .line 25
    int-to-long v4, v2

    .line 26
    add-long/2addr v4, p1

    .line 27
    invoke-virtual {v3, v4, v5}, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->build(J)Landroid/hardware/camera2/legacy/RequestHolder;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-object v0
.end method
