.class public Li1/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li1/v;


# direct methods
.method public constructor <init>(Li1/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/v$a;->a:Li1/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Lu0/b;->a0:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Li1/v$a;->a:Li1/v;

    iget-object v2, v0, Li1/a;->h:Li1/b0;

    if-nez v2, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, v0, Li1/a;->i:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Li1/v$a;->a:Li1/v;

    iget-object v0, v0, Li1/a;->i:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    :cond_2
    sget v0, Lu0/b;->o:I

    const/4 v2, 0x7

    if-ne v0, v1, :cond_3

    .line 7
    iget-object v0, p0, Li1/v$a;->a:Li1/v;

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Li1/v;->z([I)V

    goto :goto_0

    .line 8
    :cond_3
    sget v0, Lu0/b;->X1:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_4

    .line 9
    iget-object v0, p0, Li1/v$a;->a:Li1/v;

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Li1/v;->z([I)V

    goto :goto_0

    .line 10
    :cond_4
    iget-object v0, p0, Li1/v$a;->a:Li1/v;

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    invoke-virtual {v0, v1}, Li1/v;->z([I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x58
        0x46
        0x0
        0x2
        0x0
        0x2
        0xa2
    .end array-data

    :array_1
    .array-data 4
        0x58
        0x46
        0x0
        0x2
        0x0
        0x0
        0xa0
    .end array-data

    :array_2
    .array-data 4
        0x58
        0x46
        0x0
        0x2
        0x0
        0x1
        0xa1
    .end array-data
.end method
