.class public Lk0/ll$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ll;


# direct methods
.method public constructor <init>(Lk0/ll;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ll$r;->a:Lk0/ll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Lh0/c;->E:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    .line 2
    iget-object v0, p0, Lk0/ll$r;->a:Lk0/ll;

    iget-boolean v1, v0, Lk0/ll;->C:Z

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 3
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget-object v0, La/b;->R:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lk0/ll$r;->a:Lk0/ll;

    invoke-static {v0, v3}, Lk0/ll;->e3(Lk0/ll;Z)V

    .line 6
    :cond_0
    iget-object v0, p0, Lk0/ll$r;->a:Lk0/ll;

    iput-boolean v3, v0, Lk0/ll;->C:Z

    goto :goto_0

    .line 7
    :cond_1
    iget v1, v0, Lk0/ll;->P:I

    if-nez v1, :cond_2

    .line 8
    invoke-static {v0, v3}, Lk0/ll;->e3(Lk0/ll;Z)V

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Lk0/ll$r;->a:Lk0/ll;

    iget v1, v0, Lk0/ll;->d0:I

    if-ne v1, v2, :cond_6

    .line 10
    sget-object v1, Lk0/nt;->g:[I

    const/16 v4, 0x85

    aget v1, v1, v4

    if-nez v1, :cond_6

    .line 11
    iget v1, v0, Lk0/ll;->J:I

    const/4 v4, 0x7

    if-ne v1, v4, :cond_6

    .line 12
    sget v1, Ly0/f;->i:I

    if-eq v1, v2, :cond_6

    iget v0, v0, Lk0/ll;->e0:I

    if-ne v0, v2, :cond_6

    const/16 v0, 0xc

    .line 13
    invoke-static {v0, v3}, Ll0/b0;->l0(II)V

    .line 14
    invoke-static {v0, v2}, Ll0/b0;->l0(II)V

    goto :goto_2

    .line 15
    :cond_3
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lk0/ll$r;->a:Lk0/ll;

    iget v1, v0, Lk0/ll;->J:I

    if-ne v1, v2, :cond_4

    goto :goto_1

    .line 16
    :cond_4
    iget v1, v0, Lk0/ll;->P:I

    if-nez v1, :cond_6

    .line 17
    invoke-static {v0, v2}, Lk0/ll;->e3(Lk0/ll;Z)V

    goto :goto_2

    :cond_5
    :goto_1
    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 18
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v0, v0, [I

    .line 19
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 20
    iget-object v0, p0, Lk0/ll$r;->a:Lk0/ll;

    invoke-static {v0, v2}, Lk0/ll;->e3(Lk0/ll;Z)V

    .line 21
    iget-object v0, p0, Lk0/ll$r;->a:Lk0/ll;

    iput-boolean v2, v0, Lk0/ll;->C:Z

    :cond_6
    :goto_2
    return-void

    :array_0
    .array-data 4
        0xe3
        0x97
        0x5
        0x1
        0x0
        0xa
        0x0
        0xa
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x97
        0x5
        0x0
        0x0
        0xa
        0x0
        0xa
    .end array-data
.end method
