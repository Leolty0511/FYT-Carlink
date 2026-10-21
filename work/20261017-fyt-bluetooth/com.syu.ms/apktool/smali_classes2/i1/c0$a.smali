.class public Li1/c0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li1/c0;


# direct methods
.method public constructor <init>(Li1/c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/c0$a;->a:Li1/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Li1/c0$a;->a:Li1/c0;

    iget v1, v0, Li1/c0;->l:I

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v1, v2, :cond_0

    new-array v1, v3, [I

    .line 2
    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Li1/c0;->w([I)V

    .line 3
    iget-object v0, p0, Li1/c0$a;->a:Li1/c0;

    new-array v1, v3, [I

    const/4 v4, 0x0

    aput v3, v1, v4

    iget v5, v0, Li1/c0;->m:I

    aput v5, v1, v2

    const/4 v6, 0x2

    aput v5, v1, v6

    invoke-virtual {v0, v1}, Li1/c0;->w([I)V

    .line 4
    iget-object v0, p0, Li1/c0$a;->a:Li1/c0;

    new-array v1, v3, [I

    aput v6, v1, v4

    iget v5, v0, Li1/c0;->n:I

    aput v5, v1, v2

    aput v5, v1, v6

    invoke-virtual {v0, v1}, Li1/c0;->w([I)V

    .line 5
    iget-object v0, p0, Li1/c0$a;->a:Li1/c0;

    iget v0, v0, Li1/c0;->o:I

    invoke-static {v0, v6}, Lo1/s0;->c(II)I

    move-result v0

    .line 6
    iget-object v1, p0, Li1/c0$a;->a:Li1/c0;

    iget v1, v1, Li1/c0;->o:I

    invoke-static {v1, v2}, Lo1/s0;->c(II)I

    move-result v1

    .line 7
    iget-object v5, p0, Li1/c0$a;->a:Li1/c0;

    iget v5, v5, Li1/c0;->o:I

    invoke-static {v5, v4}, Lo1/s0;->c(II)I

    move-result v5

    .line 8
    iget-object v7, p0, Li1/c0$a;->a:Li1/c0;

    const/4 v8, 0x7

    new-array v8, v8, [I

    const/4 v9, 0x4

    aput v9, v8, v4

    aput v0, v8, v2

    aput v1, v8, v6

    aput v5, v8, v3

    aput v0, v8, v9

    const/4 v0, 0x5

    aput v1, v8, v0

    const/4 v1, 0x6

    aput v5, v8, v1

    invoke-virtual {v7, v8}, Li1/c0;->w([I)V

    .line 9
    iget-object v1, p0, Li1/c0$a;->a:Li1/c0;

    new-array v3, v3, [I

    aput v0, v3, v4

    iget v0, v1, Li1/c0;->q:I

    aput v0, v3, v2

    iget v0, v1, Li1/c0;->p:I

    aput v0, v3, v6

    invoke-virtual {v1, v3}, Li1/c0;->w([I)V

    goto :goto_0

    :cond_0
    new-array v1, v3, [I

    .line 10
    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Li1/c0;->w([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x2
        0x42
        0x42
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data
.end method
