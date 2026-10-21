.class public Li1/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Li1/n;


# direct methods
.method public constructor <init>(Li1/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/n$b;->b:Li1/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Li1/n$b;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Li1/n$b;->b:Li1/n;

    iget v1, v0, Li1/n;->m:I

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

    if-ne v4, v3, :cond_1

    or-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_1
    and-int/lit8 v2, v2, -0x5

    .line 4
    :goto_1
    sget v4, Lu0/b;->k:I

    if-ne v4, v3, :cond_2

    or-int/lit8 v2, v2, 0x8

    goto :goto_2

    :cond_2
    and-int/lit8 v2, v2, -0x9

    .line 5
    :goto_2
    sget v4, Lu0/b;->o:I

    if-ne v4, v3, :cond_3

    and-int/lit8 v2, v2, -0x21

    goto :goto_3

    :cond_3
    or-int/lit8 v2, v2, 0x20

    :goto_3
    if-eq v1, v2, :cond_4

    .line 6
    iput v2, v0, Li1/n;->m:I

    if-ne v4, v3, :cond_4

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Li1/n;->F:J

    .line 8
    :cond_4
    iget v0, p0, Li1/n$b;->a:I

    sget v1, Lu0/b;->a0:I

    if-eq v0, v1, :cond_5

    .line 9
    iput v1, p0, Li1/n$b;->a:I

    .line 10
    iget-object v0, p0, Li1/n$b;->b:Li1/n;

    iget-object v1, v0, Li1/n;->D:Landroid/os/Handler;

    iget-object v0, v0, Li1/n;->G:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    iget v0, p0, Li1/n$b;->a:I

    if-ne v0, v3, :cond_5

    .line 12
    iget-object v0, p0, Li1/n$b;->b:Li1/n;

    iget-object v1, v0, Li1/n;->D:Landroid/os/Handler;

    iget-object v0, v0, Li1/n;->G:Ljava/lang/Runnable;

    const-wide/32 v2, 0x3a980

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method
