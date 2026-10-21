.class public Ly0/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly0/j;->N2(I[I[F[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[I

.field public final synthetic b:I

.field public final synthetic c:Ly0/j;


# direct methods
.method public constructor <init>(Ly0/j;[II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ly0/j$b;->c:Ly0/j;

    iput-object p2, p0, Ly0/j$b;->a:[I

    iput p3, p0, Ly0/j$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Ly0/j$b;->a:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v4, :cond_3

    if-eq v2, v3, :cond_2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    const/4 v5, 0x4

    if-eq v2, v5, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    sget-object v2, La/c;->d:Lbase/a;

    aget v0, v0, v4

    invoke-interface {v2, v0}, Lbase/a;->g(I)V

    .line 3
    iget v0, p0, Ly0/j$b;->b:I

    new-array v2, v3, [I

    iget-object v3, p0, Ly0/j$b;->a:[I

    aget v3, v3, v1

    aput v3, v2, v1

    invoke-static {}, La/c;->g()I

    move-result v1

    aput v1, v2, v4

    invoke-static {v0, v2}, Ly0/h;->s0(I[I)V

    goto :goto_0

    .line 4
    :cond_1
    sget-object v2, La/c;->f:Lbase/a;

    aget v0, v0, v4

    invoke-interface {v2, v0}, Lbase/a;->g(I)V

    .line 5
    iget v0, p0, Ly0/j$b;->b:I

    new-array v2, v3, [I

    iget-object v3, p0, Ly0/j$b;->a:[I

    aget v3, v3, v1

    aput v3, v2, v1

    invoke-static {}, La/c;->t()I

    move-result v1

    aput v1, v2, v4

    invoke-static {v0, v2}, Ly0/h;->s0(I[I)V

    goto :goto_0

    .line 6
    :cond_2
    sget-object v2, La/c;->c:Lbase/a;

    aget v0, v0, v4

    invoke-interface {v2, v0}, Lbase/a;->g(I)V

    .line 7
    iget v0, p0, Ly0/j$b;->b:I

    new-array v2, v3, [I

    iget-object v3, p0, Ly0/j$b;->a:[I

    aget v3, v3, v1

    aput v3, v2, v1

    invoke-static {}, La/c;->m()I

    move-result v1

    aput v1, v2, v4

    invoke-static {v0, v2}, Ly0/h;->s0(I[I)V

    goto :goto_0

    .line 8
    :cond_3
    sget-object v2, La/c;->e:Lbase/a;

    aget v0, v0, v4

    invoke-interface {v2, v0}, Lbase/a;->g(I)V

    .line 9
    iget v0, p0, Ly0/j$b;->b:I

    new-array v2, v3, [I

    iget-object v3, p0, Ly0/j$b;->a:[I

    aget v3, v3, v1

    aput v3, v2, v1

    invoke-static {}, La/c;->w()I

    move-result v1

    aput v1, v2, v4

    invoke-static {v0, v2}, Ly0/h;->s0(I[I)V

    goto :goto_0

    .line 10
    :cond_4
    sget-object v2, La/c;->b:Lbase/a;

    aget v0, v0, v4

    invoke-interface {v2, v0}, Lbase/a;->g(I)V

    .line 11
    iget v0, p0, Ly0/j$b;->b:I

    new-array v2, v3, [I

    iget-object v3, p0, Ly0/j$b;->a:[I

    aget v3, v3, v1

    aput v3, v2, v1

    invoke-static {}, La/c;->q()I

    move-result v1

    aput v1, v2, v4

    invoke-static {v0, v2}, Ly0/h;->s0(I[I)V

    :goto_0
    return-void
.end method
