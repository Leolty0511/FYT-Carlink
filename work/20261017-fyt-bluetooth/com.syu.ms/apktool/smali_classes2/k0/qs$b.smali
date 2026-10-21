.class public Lk0/qs$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/qs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/qs;


# direct methods
.method public constructor <init>(Lk0/qs;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/qs$b;->a:Lk0/qs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lk0/qs$b;->a:Lk0/qs;

    iget v1, v0, Lk0/qs;->o:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/qs;->o:I

    const/16 v3, 0xa

    if-lez v1, :cond_1

    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x5

    const/4 v7, 0x0

    if-gt v1, v6, :cond_0

    new-array v1, v5, [I

    const/16 v8, 0xe3

    aput v8, v1, v7

    const/16 v8, 0x81

    aput v8, v1, v2

    aput v2, v1, v4

    .line 2
    sget v8, Lu0/b;->a0:I

    aput v8, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    :cond_0
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_2

    .line 4
    iget-object v1, p0, Lk0/qs$b;->a:Lk0/qs;

    invoke-static {v1}, Lk0/qs;->m3(Lk0/qs;)Lo1/g0;

    move-result-object v8

    invoke-virtual {v8, v2, v7}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/qs;->n3(Lk0/qs;I)V

    .line 5
    iget-object v1, p0, Lk0/qs$b;->a:Lk0/qs;

    invoke-static {v1}, Lk0/qs;->m3(Lk0/qs;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v4, v7}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/qs;->r3(Lk0/qs;I)V

    .line 6
    iget-object v1, p0, Lk0/qs$b;->a:Lk0/qs;

    invoke-static {v1}, Lk0/qs;->m3(Lk0/qs;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v0, v7}, Lo1/g0;->b(II)I

    move-result v0

    invoke-static {v1, v0}, Lk0/qs;->s3(Lk0/qs;I)V

    .line 7
    iget-object v0, p0, Lk0/qs$b;->a:Lk0/qs;

    invoke-static {v0}, Lk0/qs;->m3(Lk0/qs;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v5, v7}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/qs;->t3(Lk0/qs;I)V

    .line 8
    iget-object v0, p0, Lk0/qs$b;->a:Lk0/qs;

    invoke-static {v0}, Lk0/qs;->m3(Lk0/qs;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/qs;->u3(Lk0/qs;I)V

    .line 9
    iget-object v0, p0, Lk0/qs$b;->a:Lk0/qs;

    invoke-static {v0}, Lk0/qs;->m3(Lk0/qs;)Lo1/g0;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v7}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/qs;->v3(Lk0/qs;I)V

    .line 10
    iget-object v0, p0, Lk0/qs$b;->a:Lk0/qs;

    invoke-static {v0}, Lk0/qs;->m3(Lk0/qs;)Lo1/g0;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v7}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/qs;->w3(Lk0/qs;I)V

    .line 11
    iget-object v0, p0, Lk0/qs$b;->a:Lk0/qs;

    invoke-static {v0}, Lk0/qs;->m3(Lk0/qs;)Lo1/g0;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v7}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/qs;->x3(Lk0/qs;I)V

    .line 12
    iget-object v0, p0, Lk0/qs$b;->a:Lk0/qs;

    invoke-static {v0}, Lk0/qs;->m3(Lk0/qs;)Lo1/g0;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v7}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/qs;->y3(Lk0/qs;I)V

    .line 13
    iget-object v0, p0, Lk0/qs$b;->a:Lk0/qs;

    invoke-static {v0}, Lk0/qs;->m3(Lk0/qs;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v3, v7}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/qs;->o3(Lk0/qs;I)V

    .line 14
    iget-object v0, p0, Lk0/qs$b;->a:Lk0/qs;

    invoke-static {v0}, Lk0/qs;->m3(Lk0/qs;)Lo1/g0;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v7}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/qs;->p3(Lk0/qs;I)V

    .line 15
    iget-object v0, p0, Lk0/qs$b;->a:Lk0/qs;

    invoke-static {v0}, Lk0/qs;->m3(Lk0/qs;)Lo1/g0;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v7}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/qs;->q3(Lk0/qs;I)V

    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, v0, Lk0/qs;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 17
    iget-object v0, p0, Lk0/qs$b;->a:Lk0/qs;

    iput v3, v0, Lk0/qs;->o:I

    :cond_2
    :goto_0
    return-void
.end method
