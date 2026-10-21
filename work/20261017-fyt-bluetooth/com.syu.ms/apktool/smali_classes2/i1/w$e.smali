.class public Li1/w$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:J

.field public b:Le/e$a;

.field public final synthetic c:Li1/w;


# direct methods
.method public constructor <init>(Li1/w;)V
    .locals 2

    .line 1
    iput-object p1, p0, Li1/w$e;->c:Li1/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Li1/w$e;->a:J

    .line 3
    new-instance p1, Le/e$a;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0}, Le/e$a;-><init>(III)V

    iput-object p1, p0, Li1/w$e;->b:Le/e$a;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    move-object/from16 v1, p1

    check-cast v1, Le/e$a;

    iput-object v1, v0, Li1/w$e;->b:Le/e$a;

    .line 2
    iget v2, v1, Le/e$a;->b:I

    mul-int/lit16 v2, v2, 0x1000

    div-int/lit16 v2, v2, 0x320

    .line 3
    iget v3, v1, Le/e$a;->c:I

    mul-int/lit16 v3, v3, 0x1000

    div-int/lit16 v3, v3, 0x1e0

    .line 4
    iget v1, v1, Le/e$a;->a:I

    const/4 v4, 0x6

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x5

    if-ne v1, v9, :cond_1

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 6
    iget-wide v14, v0, Li1/w$e;->a:J

    sub-long v14, v12, v14

    sget-wide v16, Li1/w;->H:J

    cmp-long v1, v14, v16

    if-lez v1, :cond_3

    .line 7
    iput-wide v12, v0, Li1/w$e;->a:J

    .line 8
    iget-object v1, v0, Li1/w$e;->c:Li1/w;

    new-array v7, v7, [I

    aput v11, v7, v8

    aput v11, v7, v10

    const/16 v8, 0x10

    aput v8, v7, v9

    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    aput v8, v7, v6

    and-int/lit16 v2, v2, 0xff

    aput v2, v7, v5

    shr-int/lit8 v2, v3, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v7, v11

    and-int/lit16 v2, v3, 0xff

    aput v2, v7, v4

    invoke-virtual {v1, v7}, Li1/w;->h([I)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iput-wide v12, v0, Li1/w$e;->a:J

    .line 10
    iget-object v1, v0, Li1/w$e;->c:Li1/w;

    new-array v7, v7, [I

    aput v11, v7, v8

    aput v11, v7, v10

    aput v10, v7, v9

    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    aput v8, v7, v6

    and-int/lit16 v2, v2, 0xff

    aput v2, v7, v5

    shr-int/lit8 v2, v3, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v7, v11

    and-int/lit16 v2, v3, 0xff

    aput v2, v7, v4

    invoke-virtual {v1, v7}, Li1/w;->h([I)V

    goto :goto_0

    :cond_2
    if-ne v1, v10, :cond_3

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iput-wide v12, v0, Li1/w$e;->a:J

    .line 12
    iget-object v1, v0, Li1/w$e;->c:Li1/w;

    new-array v7, v7, [I

    aput v11, v7, v8

    aput v11, v7, v10

    aput v8, v7, v9

    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    aput v8, v7, v6

    and-int/lit16 v2, v2, 0xff

    aput v2, v7, v5

    shr-int/lit8 v2, v3, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v7, v11

    and-int/lit16 v2, v3, 0xff

    aput v2, v7, v4

    invoke-virtual {v1, v7}, Li1/w;->h([I)V

    :cond_3
    :goto_0
    return-void
.end method
