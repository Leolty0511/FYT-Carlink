.class public Ly0/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ly0/c;


# direct methods
.method public constructor <init>(Ly0/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly0/c$b;->a:Ly0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ly0/c$b;->a:Ly0/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ly0/c;->q(Ly0/c;Z)Z

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lo1/q0;->y(I)V

    const/16 v2, 0xfe

    const/16 v3, 0x81

    .line 3
    invoke-static {v2, v3}, Lz/k;->m(II)I

    const/16 v2, 0xe7

    .line 4
    invoke-static {v0, v2}, Lz/k;->m(II)I

    move-result v2

    add-int/2addr v2, v1

    if-gez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-boolean v3, Ly0/f;->Y0:Z

    const/4 v4, 0x3

    const/16 v5, 0x11

    const/4 v6, 0x2

    if-eqz v3, :cond_1

    .line 6
    invoke-static {v6, v4}, Lz/k;->m(II)I

    move-result v3

    add-int/2addr v2, v3

    if-gez v2, :cond_2

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v6, v5}, Lz/k;->m(II)I

    move-result v3

    add-int/2addr v2, v3

    if-gez v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v3, 0x19

    .line 8
    invoke-static {v4, v3}, Lz/k;->m(II)I

    move-result v3

    add-int/2addr v2, v3

    if-gez v2, :cond_3

    goto :goto_0

    :cond_3
    const/16 v3, 0x90

    const/16 v4, 0x30

    .line 9
    invoke-static {v3, v4}, Lz/k;->m(II)I

    const/16 v3, 0x41

    const/16 v4, 0x10

    .line 10
    invoke-static {v3, v4}, Lz/k;->m(II)I

    move-result v3

    add-int/2addr v2, v3

    if-gez v2, :cond_4

    goto :goto_0

    :cond_4
    const/16 v3, 0x44

    .line 11
    invoke-static {v3, v5}, Lz/k;->m(II)I

    move-result v3

    add-int/2addr v2, v3

    if-gez v2, :cond_5

    goto :goto_0

    :cond_5
    const/16 v3, 0x47

    .line 12
    invoke-static {v3, v0}, Lz/k;->m(II)I

    move-result v0

    add-int/2addr v2, v0

    if-gez v2, :cond_6

    goto :goto_0

    :cond_6
    const/16 v0, 0x75

    const/16 v3, 0x60

    .line 13
    invoke-static {v0, v3}, Lz/k;->m(II)I

    move-result v0

    add-int/2addr v2, v0

    :goto_0
    if-gez v2, :cond_7

    .line 14
    iget-object v0, p0, Ly0/c$b;->a:Ly0/c;

    invoke-virtual {v0}, Ly0/c;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    .line 16
    :cond_7
    :try_start_1
    sget-boolean v0, Ly0/f;->Y0:Z

    const/16 v2, 0x2c

    if-eqz v0, :cond_8

    .line 17
    sget v0, Ly0/f;->V0:I

    const/16 v3, 0xa

    invoke-static {v0, v1, v3}, Lo1/o0;->a(III)I

    move-result v0

    .line 18
    sget-object v1, Ly0/b;->g:[I

    aget v0, v1, v0

    invoke-static {v2, v0}, Ly0/c;->x(II)V

    goto :goto_1

    :cond_8
    const/16 v0, 0xff

    .line 19
    invoke-static {v2, v0}, Ly0/c;->x(II)V

    .line 20
    :goto_1
    iget-object v0, p0, Ly0/c$b;->a:Ly0/c;

    sget v1, Lu0/b;->D:I

    invoke-virtual {v0, v1}, Ly0/c;->a(I)V

    .line 21
    invoke-static {}, Ly0/h;->M()V

    .line 22
    iget-object v0, p0, Ly0/c$b;->a:Ly0/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ly0/c;->g([I)V

    .line 23
    iget-object v0, p0, Ly0/c$b;->a:Ly0/c;

    invoke-virtual {v0, v1}, Ly0/c;->j([I)V

    .line 24
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    new-instance v1, Ly0/c$b$a;

    invoke-direct {v1, p0}, Ly0/c$b$a;-><init>(Ly0/c$b;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
