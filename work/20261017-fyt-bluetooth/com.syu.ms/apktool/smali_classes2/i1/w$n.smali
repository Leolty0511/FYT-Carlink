.class public Li1/w$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li1/w;


# direct methods
.method public constructor <init>(Li1/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/w$n;->a:Li1/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Li1/w$n;->a:Li1/w;

    iget v1, v0, Li1/w;->g:I

    .line 2
    sget v2, Lu0/b;->a0:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    or-int/lit8 v2, v1, 0x2

    goto :goto_0

    :cond_0
    and-int/lit8 v2, v1, -0x3

    .line 3
    :goto_0
    sget v4, Lu0/b;->w:I

    const/4 v5, 0x4

    if-ne v4, v3, :cond_1

    or-int/2addr v2, v5

    goto :goto_1

    :cond_1
    and-int/lit8 v2, v2, -0x5

    .line 4
    :goto_1
    sget v4, Lu0/b;->k:I

    const/16 v6, 0x8

    if-ne v4, v3, :cond_2

    or-int/2addr v2, v6

    goto :goto_2

    :cond_2
    and-int/lit8 v2, v2, -0x9

    :goto_2
    if-eq v1, v2, :cond_4

    .line 5
    iput v2, v0, Li1/w;->g:I

    .line 6
    sget v1, Lu0/b;->o:I

    if-ne v1, v3, :cond_3

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Li1/w;->p:J

    .line 8
    :cond_3
    sget-boolean v0, Li1/w;->G:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Li1/w$n;->a:Li1/w;

    const/16 v1, 0xa

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v4, 0x3

    aput v4, v1, v2

    aput v6, v1, v3

    iget v2, v0, Li1/w;->g:I

    const/4 v3, 0x2

    aput v2, v1, v3

    iget v2, v0, Li1/w;->h:I

    aput v2, v1, v4

    iget v2, v0, Li1/w;->i:I

    aput v2, v1, v5

    const/4 v2, 0x5

    iget v3, v0, Li1/w;->j:I

    aput v3, v1, v2

    const/4 v2, 0x6

    iget v3, v0, Li1/w;->k:I

    aput v3, v1, v2

    const/4 v2, 0x7

    iget v3, v0, Li1/w;->l:I

    aput v3, v1, v2

    iget v2, v0, Li1/w;->n:I

    aput v2, v1, v6

    const/16 v2, 0x9

    iget v3, v0, Li1/w;->o:I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Li1/w;->h([I)V

    :cond_4
    return-void
.end method
