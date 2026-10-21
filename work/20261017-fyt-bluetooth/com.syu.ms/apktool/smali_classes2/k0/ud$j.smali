.class public Lk0/ud$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ud;


# direct methods
.method public constructor <init>(Lk0/ud;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ud$j;->a:Lk0/ud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lk0/ud$j;->a:Lk0/ud;

    iget v1, v0, Lk0/ud;->o:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/ud;->o:I

    const/4 v3, 0x5

    if-lez v1, :cond_1

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/16 v4, 0xe3

    const/4 v5, 0x0

    aput v4, v1, v5

    const/16 v4, 0x81

    aput v4, v1, v2

    const/4 v4, 0x2

    aput v2, v1, v4

    .line 2
    sget v6, Lu0/b;->a0:I

    const/4 v7, 0x3

    aput v6, v1, v7

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_2

    new-array v1, v3, [I

    .line 4
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    .line 5
    iget-object v1, p0, Lk0/ud$j;->a:Lk0/ud;

    invoke-static {v1}, Lk0/ud;->B3(Lk0/ud;)Lo1/g0;

    move-result-object v6

    invoke-virtual {v6, v2, v2}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/ud;->C3(Lk0/ud;I)V

    .line 6
    iget-object v1, p0, Lk0/ud$j;->a:Lk0/ud;

    invoke-static {v1}, Lk0/ud;->B3(Lk0/ud;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/ud;->D3(Lk0/ud;I)V

    .line 7
    iget-object v1, p0, Lk0/ud$j;->a:Lk0/ud;

    invoke-static {v1}, Lk0/ud;->B3(Lk0/ud;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v7, v5}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/ud;->E3(Lk0/ud;I)V

    .line 8
    iget-object v1, p0, Lk0/ud$j;->a:Lk0/ud;

    invoke-static {v1}, Lk0/ud;->B3(Lk0/ud;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v0, v5}, Lo1/g0;->b(II)I

    move-result v0

    invoke-static {v1, v0}, Lk0/ud;->F3(Lk0/ud;I)V

    .line 9
    sget v0, Lk0/nt;->c:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lk0/ud$j;->a:Lk0/ud;

    invoke-static {v0}, Lk0/ud;->B3(Lk0/ud;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v3, v5}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/ud;->G3(Lk0/ud;I)V

    .line 11
    iget-object v0, p0, Lk0/ud$j;->a:Lk0/ud;

    iput v5, v0, Lk0/ud;->C:I

    .line 12
    iput-boolean v5, v0, Lk0/ud;->D:Z

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {v0}, Lk0/ud;->A3(Lk0/ud;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 14
    iget-object v0, p0, Lk0/ud$j;->a:Lk0/ud;

    iput v3, v0, Lk0/ud;->o:I

    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x30
        0x0
    .end array-data
.end method
