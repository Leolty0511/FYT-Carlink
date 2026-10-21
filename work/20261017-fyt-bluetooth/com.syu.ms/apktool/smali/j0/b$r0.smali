.class public Lj0/b$r0;
.super Li0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj0/b;->T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final e:I

.field public final synthetic f:Lj0/b;


# direct methods
.method public varargs constructor <init>(Lj0/b;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj0/b$r0;->f:Lj0/b;

    invoke-direct {p0, p2}, Li0/a;-><init>([Ljava/lang/String;)V

    const/16 p1, 0xd

    .line 2
    iput p1, p0, Lj0/b$r0;->e:I

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0xd

    .line 2
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lj0/b$r0;->f:Lj0/b;

    iget-object v3, v3, Lj0/b;->b:Ljava/util/LinkedHashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 3
    iget-object v3, p0, Lj0/b$r0;->f:Lj0/b;

    iget-object v3, v3, Lj0/b;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move v3, v0

    :cond_1
    :goto_1
    if-ge v3, v1, :cond_4

    mul-int/lit8 v4, v3, 0xd

    add-int/lit8 v5, v4, 0x1

    .line 4
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v6, v3, 0xd

    .line 5
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "000000000000"

    .line 6
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 7
    iget-object v6, p0, Lj0/b$r0;->f:Lj0/b;

    iget-object v6, v6, Lj0/b;->a:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 8
    iget-object v6, p0, Lj0/b$r0;->f:Lj0/b;

    iget-object v6, v6, Lj0/b;->a:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_2
    iget-object v6, p0, Lj0/b$r0;->f:Lj0/b;

    iget-object v6, v6, Lj0/b;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 10
    :cond_3
    iget-object v5, p0, Lj0/b$r0;->f:Lj0/b;

    iget-object v5, v5, Lj0/b;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 11
    invoke-static {v4}, Li0/c;->T(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_4
    iget-object p1, p0, Lj0/b$r0;->f:Lj0/b;

    invoke-static {p1}, Lj0/b;->e(Lj0/b;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 13
    :try_start_0
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 14
    iget-object v3, p0, Lj0/b$r0;->f:Lj0/b;

    iget-object v3, v3, Lj0/b;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    move v3, v0

    :goto_3
    const-string v4, "BT"

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " == lost Slave: lost = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mac: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lj0/b$r0;->f:Lj0/b;

    iget-object v6, v6, Lj0/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_5

    .line 16
    iget-object v3, p0, Lj0/b$r0;->f:Lj0/b;

    iget-object v3, v3, Lj0/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 17
    iget-object v3, p0, Lj0/b$r0;->f:Lj0/b;

    iget-object v3, v3, Lj0/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li0/c;

    if-nez v2, :cond_7

    goto :goto_2

    .line 18
    :cond_7
    iget-object v3, p0, Lj0/b$r0;->f:Lj0/b;

    invoke-static {v3}, Lj0/b;->f(Lj0/b;)Li0/c;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    iget-object v3, p0, Lj0/b$r0;->f:Lj0/b;

    invoke-static {v3}, Lj0/b;->f(Lj0/b;)Li0/c;

    move-result-object v3

    invoke-virtual {v3}, Li0/c;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Li0/c;->y()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 19
    invoke-virtual {v2}, Li0/c;->n()V

    .line 20
    iget-object v3, p0, Lj0/b$r0;->f:Lj0/b;

    invoke-static {v3, v4}, Lj0/b;->g(Lj0/b;Li0/c;)Li0/c;

    .line 21
    :cond_8
    iget-object v3, p0, Lj0/b$r0;->f:Lj0/b;

    invoke-static {v3}, Lj0/b;->h(Lj0/b;)Li0/c;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lj0/b$r0;->f:Lj0/b;

    invoke-static {v3}, Lj0/b;->h(Lj0/b;)Li0/c;

    move-result-object v3

    invoke-virtual {v3}, Li0/c;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Li0/c;->y()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 22
    iget-object v3, p0, Lj0/b$r0;->f:Lj0/b;

    invoke-static {v3, v4}, Lj0/b;->i(Lj0/b;Li0/c;)Li0/c;

    .line 23
    :cond_9
    iget-object v3, p0, Lj0/b$r0;->f:Lj0/b;

    invoke-static {v3}, Lj0/b;->j(Lj0/b;)Li0/c;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lj0/b$r0;->f:Lj0/b;

    invoke-static {v3}, Lj0/b;->j(Lj0/b;)Li0/c;

    move-result-object v3

    invoke-virtual {v3}, Li0/c;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Li0/c;->y()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 24
    iget-object v3, p0, Lj0/b$r0;->f:Lj0/b;

    invoke-static {v3, v4}, Lj0/b;->k(Lj0/b;Li0/c;)Li0/c;

    .line 25
    :cond_a
    invoke-virtual {v2}, Li0/c;->y()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lj0/b$r0;->f:Lj0/b;

    invoke-static {v4}, Lj0/b;->l(Lj0/b;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 26
    iget-object v3, p0, Lj0/b$r0;->f:Lj0/b;

    const-string v4, "000000000000"

    invoke-static {v3, v4}, Lj0/b;->m(Lj0/b;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    :cond_b
    invoke-virtual {v2}, Li0/c;->p()V

    .line 28
    invoke-virtual {v2}, Li0/c;->S()V

    goto/16 :goto_2

    .line 29
    :cond_c
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    iget-object p1, p0, Lj0/b$r0;->f:Lj0/b;

    iget-object p1, p1, Lj0/b;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 31
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "000000000000"

    .line 32
    invoke-static {v2, v1}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 33
    iget-object v2, p0, Lj0/b$r0;->f:Lj0/b;

    invoke-static {v2, v1}, Lj0/b;->d(Lj0/b;Ljava/lang/String;)Li0/c;

    move-result-object v1

    .line 34
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Li0/c;->e0(Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    return-void

    :catchall_0
    move-exception v0

    .line 35
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
