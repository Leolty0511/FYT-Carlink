.class public Lh1/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh1/a;


# direct methods
.method public constructor <init>(Lh1/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh1/a$b;->a:Lh1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 6

    const-string v0, ":"

    const-string v1, "AA"

    .line 1
    :try_start_0
    check-cast p1, [Ljava/lang/String;

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==============>>> onNotify : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 3
    invoke-static {p1, v2}, Lo1/s0;->i([Ljava/lang/Object;I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    aget-object v3, p1, v4

    if-eqz v3, :cond_4

    aget-object v3, p1, v2

    if-eqz v3, :cond_4

    .line 4
    aget-object v3, p1, v4

    .line 5
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v3, v0, v4

    .line 7
    :cond_0
    sget-object v0, La/b;->c:Lo1/e;

    invoke-virtual {v0, v3}, Lo1/e;->c(Ljava/lang/Comparable;)I

    move-result v0

    .line 8
    invoke-static {v0, v3}, La/i;->q(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v3}, Le/f;->n(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "play"

    .line 9
    aget-object v5, p1, v2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lh1/a$b;->a:Lh1/a;

    iget-object v0, v0, Lh1/a;->d:Ljava/util/HashMap;

    aget-object p1, p1, v2

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 11
    :cond_2
    iget-object p1, p0, Lh1/a$b;->a:Lh1/a;

    iget-object p1, p1, Lh1/a;->d:Ljava/util/HashMap;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    .line 12
    :cond_4
    :goto_1
    iget-object p1, p0, Lh1/a$b;->a:Lh1/a;

    invoke-static {p1}, Lh1/a;->a(Lh1/a;)V

    .line 13
    iget-object p1, p0, Lh1/a$b;->a:Lh1/a;

    iget-object p1, p1, Lh1/a;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 14
    iget-object p1, p0, Lh1/a$b;->a:Lh1/a;

    iget-object v0, p1, Lh1/a;->d:Ljava/util/HashMap;

    const-string v3, "/system/bin/CarplayService"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lh1/a$b;->a:Lh1/a;

    iget-object v0, v0, Lh1/a;->d:Ljava/util/HashMap;

    const-string v3, "com.syu.carlink"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move v2, v4

    :cond_6
    :goto_2
    iput-boolean v2, p1, Lh1/a;->e:Z

    .line 15
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "==============>>> active Media : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lh1/a$b;->a:Lh1/a;

    iget-object v0, v0, Lh1/a;->d:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " carlinkActive: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lh1/a$b;->a:Lh1/a;

    iget-boolean v0, v0, Lh1/a;->e:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
