.class public Le1/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le1/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le1/i;


# direct methods
.method public constructor <init>(Le1/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le1/i$a;->a:Le1/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Le1/i$a;->a:Le1/i;

    const/4 v1, 0x1

    iput-boolean v1, v0, Le1/c;->r:Z

    const/4 v2, 0x2

    .line 2
    iput v2, v0, Le1/c;->f:I

    .line 3
    iget-object v2, v0, Le1/i;->z:[I

    const/16 v3, 0x5e

    invoke-virtual {v0, v3, v2}, Le1/i;->F(I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le1/i$a;->a:Le1/i;

    const/16 v2, 0x5c

    iget-object v3, v0, Le1/i;->A:[I

    invoke-virtual {v0, v2, v3}, Le1/i;->F(I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Le1/i$a;->a:Le1/i;

    invoke-virtual {v2, v0}, Le1/i;->w(Z)V

    .line 5
    iget-object v0, p0, Le1/i$a;->a:Le1/i;

    iget-object v2, v0, Le1/c;->j:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 6
    iget-object v0, v0, Le1/i;->B:Ljava/lang/Runnable;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    :cond_1
    iget-object v0, p0, Le1/i$a;->a:Le1/i;

    iget-boolean v2, v0, Le1/c;->i:Z

    if-nez v2, :cond_3

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ========>>  flushParams  error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le1/i$a;->a:Le1/i;

    iget v1, v1, Le1/c;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " loaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le1/i$a;->a:Le1/i;

    iget-boolean v1, v1, Le1/c;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "V2100"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Le1/i$a;->a:Le1/i;

    const/4 v1, -0x1

    iput v1, v0, Le1/c;->f:I

    .line 10
    iget-object v1, v0, Le1/c;->j:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v0, v0, Le1/i;->B:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void

    .line 11
    :cond_3
    iget v2, v0, Le1/c;->e:I

    if-eq v2, v1, :cond_4

    if-eqz v2, :cond_4

    .line 12
    invoke-virtual {v0}, Le1/c;->a()V

    .line 13
    iget-object v0, p0, Le1/i$a;->a:Le1/i;

    invoke-virtual {v0, v2}, Le1/c;->c(I)V

    .line 14
    :cond_4
    iget-object v0, p0, Le1/i$a;->a:Le1/i;

    invoke-virtual {v0}, Le1/c;->C()V

    return-void
.end method
