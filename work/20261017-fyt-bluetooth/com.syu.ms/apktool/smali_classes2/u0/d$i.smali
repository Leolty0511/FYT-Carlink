.class public Lu0/d$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    sget v0, Lu0/b;->H3:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    sub-int/2addr v0, v2

    .line 2
    sput v0, Lu0/b;->H3:I

    if-nez v0, :cond_1

    const/16 v3, 0x20

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3
    :goto_0
    invoke-static {v3, v0}, Ly0/h;->Y(IZ)V

    .line 4
    :cond_1
    sget v0, Lu0/b;->i4:I

    if-lez v0, :cond_3

    sub-int/2addr v0, v2

    .line 5
    sput v0, Lu0/b;->i4:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    const/16 v0, 0x39

    new-array v2, v2, [I

    aput v1, v2, v1

    .line 6
    invoke-static {v0, v2}, Lu0/d;->I3(I[I)V

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    .line 7
    invoke-static {v1}, Lu0/d;->P3(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
