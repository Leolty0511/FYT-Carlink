.class public Li1/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li1/a;


# direct methods
.method public constructor <init>(Li1/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/a$a;->a:Li1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=======>>>  0x03, 0x02, 0x01, 0x00   serial:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li1/a$a;->a:Li1/a;

    iget-object v1, v1, Li1/a;->h:Li1/b0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Device"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Li1/a$a;->a:Li1/a;

    iget-object v0, v0, Li1/a;->h:Li1/b0;

    if-eqz v0, :cond_0

    const-string v0, "=======>>>  0x03, 0x02, 0x01, 0x00"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Li1/a$a;->a:Li1/a;

    iget-object v0, v0, Li1/a;->h:Li1/b0;

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lb/c$b;->f([I)V

    .line 5
    :cond_0
    iget-object v0, p0, Li1/a$a;->a:Li1/a;

    iget-object v0, v0, Li1/a;->i:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Li1/a$a;->a:Li1/a;

    iget-object v0, v0, Li1/a;->i:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x2
        0x1
        0x0
    .end array-data
.end method
