.class public Li1/a0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li1/a0;


# direct methods
.method public constructor <init>(Li1/a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/a0$a;->a:Li1/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    sget v0, Lu0/b;->a0:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Li1/a0$a;->a:Li1/a0;

    iget-object v0, v0, Li1/a;->h:Li1/b0;

    invoke-virtual {v0}, Lb/c$b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Li1/a0$a;->a:Li1/a0;

    iget-object v0, v0, Li1/a;->i:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Li1/a0$a;->a:Li1/a0;

    iget-object v0, v0, Li1/a;->i:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Li1/a0$a;->a:Li1/a0;

    const/4 v2, 0x3

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    invoke-virtual {v0, v3}, Li1/a0;->H([I)V

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    const/4 v4, 0x6

    const/4 v5, 0x4

    const-wide/16 v6, 0x14

    if-gt v3, v4, :cond_2

    .line 6
    invoke-static {v6, v7}, Lo1/s0;->C(J)V

    .line 7
    iget-object v4, p0, Li1/a0$a;->a:Li1/a0;

    new-array v5, v5, [I

    const/16 v6, 0x90

    aput v6, v5, v0

    const/4 v6, 0x2

    aput v6, v5, v1

    const/16 v7, 0x7c

    aput v7, v5, v6

    aput v3, v5, v2

    invoke-virtual {v4, v5}, Li1/a0;->H([I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {v6, v7}, Lo1/s0;->C(J)V

    .line 9
    iget-object v0, p0, Li1/a0$a;->a:Li1/a0;

    new-array v1, v5, [I

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Li1/a0;->H([I)V

    .line 10
    invoke-static {v6, v7}, Lo1/s0;->C(J)V

    .line 11
    iget-object v0, p0, Li1/a0$a;->a:Li1/a0;

    new-array v1, v5, [I

    fill-array-data v1, :array_2

    invoke-virtual {v0, v1}, Li1/a0;->H([I)V

    .line 12
    invoke-static {v6, v7}, Lo1/s0;->C(J)V

    .line 13
    iget-object v0, p0, Li1/a0$a;->a:Li1/a0;

    new-array v1, v5, [I

    fill-array-data v1, :array_3

    invoke-virtual {v0, v1}, Li1/a0;->H([I)V

    .line 14
    invoke-static {v6, v7}, Lo1/s0;->C(J)V

    .line 15
    iget-object v0, p0, Li1/a0$a;->a:Li1/a0;

    new-array v1, v5, [I

    fill-array-data v1, :array_4

    invoke-virtual {v0, v1}, Li1/a0;->H([I)V

    .line 16
    invoke-static {v6, v7}, Lo1/s0;->C(J)V

    .line 17
    iget-object v0, p0, Li1/a0$a;->a:Li1/a0;

    new-array v1, v5, [I

    fill-array-data v1, :array_5

    invoke-virtual {v0, v1}, Li1/a0;->H([I)V

    return-void

    :array_0
    .array-data 4
        0x81
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x90
        0x2
        0x7c
        0xf
    .end array-data

    :array_2
    .array-data 4
        0x90
        0x2
        0x7c
        0x20
    .end array-data

    :array_3
    .array-data 4
        0x90
        0x2
        0x7c
        0x8d
    .end array-data

    :array_4
    .array-data 4
        0x90
        0x2
        0x7c
        0x8e
    .end array-data

    :array_5
    .array-data 4
        0x90
        0x2
        0x7c
        0x8f
    .end array-data
.end method
