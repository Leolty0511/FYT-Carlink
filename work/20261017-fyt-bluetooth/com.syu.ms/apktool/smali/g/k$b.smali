.class public Lg/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/k;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Lg/k;


# direct methods
.method public constructor <init>(Lg/k;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lg/k$b;->b:Lg/k;

    iput-object p2, p0, Lg/k$b;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 7

    const-string v0, ":"

    .line 1
    iget-object v1, p0, Lg/k$b;->b:Lg/k;

    iget-object v1, v1, Lg/k;->p0:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 2
    :try_start_0
    check-cast p1, [Ljava/lang/String;

    const/4 v2, 0x1

    .line 3
    invoke-static {p1, v2}, Lo1/s0;->i([Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    aget-object v4, p1, v3

    if-eqz v4, :cond_4

    aget-object v4, p1, v2

    if-eqz v4, :cond_4

    const-string v4, "Qin"

    .line 4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "------------->>>fix audio play status:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    aget-object v4, p1, v3

    .line 6
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v4, v0, v3

    .line 8
    :cond_0
    sget-object v0, La/b;->c:Lo1/e;

    invoke-virtual {v0, v4}, Lo1/e;->c(Ljava/lang/Comparable;)I

    move-result v0

    .line 9
    invoke-static {v0, v4}, La/i;->q(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v4}, Le/f;->n(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "play"

    .line 10
    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lg/k$b;->b:Lg/k;

    iget-object v0, v0, Lg/k;->p0:Ljava/util/HashMap;

    aget-object p1, p1, v2

    invoke-virtual {v0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lg/k$b;->b:Lg/k;

    iget-object p1, p1, Lg/k;->p0:Ljava/util/HashMap;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :goto_0
    iget-object p1, p0, Lg/k$b;->b:Lg/k;

    iget-object p1, p1, Lchip/Chip;->s:Landroid/os/Handler;

    iget-object v0, p0, Lg/k$b;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string p1, "mediaOn"

    .line 14
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 15
    iget-object p1, p0, Lg/k$b;->b:Lg/k;

    iget-object p1, p1, Lchip/Chip;->s:Landroid/os/Handler;

    iget-object v0, p0, Lg/k$b;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_3
    :goto_1
    return-void

    .line 16
    :catch_0
    :cond_4
    :goto_2
    iget-object p1, p0, Lg/k$b;->b:Lg/k;

    iget-object p1, p1, Lg/k;->p0:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_5

    if-gtz v1, :cond_6

    :cond_5
    iget-object p1, p0, Lg/k$b;->b:Lg/k;

    iget-object p1, p1, Lg/k;->p0:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_7

    if-nez v1, :cond_7

    .line 17
    :cond_6
    sget-object p1, Ly0/g;->v:Lo1/y;

    invoke-virtual {p1}, Lo1/y;->c()V

    :cond_7
    return-void
.end method
