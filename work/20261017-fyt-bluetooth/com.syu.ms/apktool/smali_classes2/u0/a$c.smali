.class public Lu0/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lu0/a;


# direct methods
.method public constructor <init>(Lu0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu0/a$c;->a:Lu0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lu0/a$c;->a:Lu0/a;

    invoke-static {v0}, Lu0/a;->d(Lu0/a;)I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lu0/a$c;->a:Lu0/a;

    invoke-static {v0}, Lu0/a;->e(Lu0/a;)I

    .line 3
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    iget-object v1, p0, Lu0/a$c;->a:Lu0/a;

    iget-object v1, v1, Lu0/a;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lu0/a$c;->a:Lu0/a;

    invoke-static {v0}, Lu0/a;->d(Lu0/a;)I

    move-result v0

    const-string v1, "Qin"

    const-string v2, "%02X "

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lu0/a$c;->a:Lu0/a;

    invoke-static {v0}, Lu0/a;->f(Lu0/a;)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    iget-object v0, p0, Lu0/a$c;->a:Lu0/a;

    invoke-static {v0}, Lu0/a;->f(Lu0/a;)I

    move-result v0

    sget v5, Lu0/b;->O:I

    if-eq v0, v5, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "to mcu <------2-----= "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lu0/a$c;->a:Lu0/a;

    invoke-static {v6}, Lu0/a;->f(Lu0/a;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    new-array v0, v0, [I

    aput v4, v0, v3

    aput v3, v0, v4

    const/4 v1, 0x2

    .line 6
    iget-object v2, p0, Lu0/a$c;->a:Lu0/a;

    invoke-static {v2}, Lu0/a;->f(Lu0/a;)I

    move-result v2

    aput v2, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 7
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    iget-object v1, p0, Lu0/a$c;->a:Lu0/a;

    iget-object v2, v1, Lu0/a;->g:Ljava/lang/Runnable;

    iget-wide v3, v1, Lu0/a;->c:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Ly0/h;->w()V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncMcuState =======last :"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v4, [Ljava/lang/Object;

    sget v6, Lu0/b;->O:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to sMcuState "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lu0/a$c;->a:Lu0/a;

    invoke-static {v5}, Lu0/a;->f(Lu0/a;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
