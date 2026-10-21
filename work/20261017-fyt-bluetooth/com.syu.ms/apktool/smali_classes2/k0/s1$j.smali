.class public Lk0/s1$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/s1;


# direct methods
.method public constructor <init>(Lk0/s1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/s1$j;->a:Lk0/s1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lk0/s1$j;->a:Lk0/s1;

    iget-byte v1, v0, Lk0/s1;->u:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/s1;->u:B

    if-lez v1, :cond_2

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/16 v3, 0xe3

    const/4 v4, 0x0

    aput v3, v1, v4

    const/16 v3, 0x81

    aput v3, v1, v2

    const/4 v3, 0x2

    aput v2, v1, v3

    .line 2
    sget v5, Lu0/b;->a0:I

    const/4 v6, 0x3

    aput v5, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_3

    .line 4
    sget v1, Lk0/nt;->c:I

    const/4 v2, 0x5

    if-eq v1, v3, :cond_0

    if-eq v1, v6, :cond_0

    if-eq v1, v0, :cond_0

    if-ne v1, v2, :cond_1

    .line 5
    :cond_0
    iget-object v1, p0, Lk0/s1$j;->a:Lk0/s1;

    invoke-static {v1}, Lk0/s1;->e3(Lk0/s1;)V

    .line 6
    :cond_1
    iget-object v1, p0, Lk0/s1$j;->a:Lk0/s1;

    invoke-static {v1}, Lk0/s1;->l3(Lk0/s1;)Lo1/g0;

    move-result-object v3

    const/4 v5, 0x6

    invoke-virtual {v3, v5, v4}, Lo1/g0;->b(II)I

    move-result v3

    invoke-static {v1, v3}, Lk0/s1;->m3(Lk0/s1;I)V

    .line 7
    iget-object v1, p0, Lk0/s1$j;->a:Lk0/s1;

    invoke-static {v1}, Lk0/s1;->l3(Lk0/s1;)Lo1/g0;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/s1;->n3(Lk0/s1;I)V

    .line 8
    iget-object v1, p0, Lk0/s1$j;->a:Lk0/s1;

    const/16 v2, 0x41

    invoke-static {v1}, Lk0/s1;->l3(Lk0/s1;)Lo1/g0;

    move-result-object v3

    invoke-static {}, Lk0/s1;->o3()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lo1/g0;->b(II)I

    move-result v3

    invoke-static {v1, v2, v3}, Lk0/s1;->p3(Lk0/s1;II)V

    .line 9
    iget-object v1, p0, Lk0/s1$j;->a:Lk0/s1;

    invoke-static {v1}, Lk0/s1;->l3(Lk0/s1;)Lo1/g0;

    move-result-object v2

    invoke-static {}, Lk0/s1;->o3()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lo1/g0;->b(II)I

    move-result v0

    invoke-static {v1, v0}, Lk0/s1;->q3(Lk0/s1;I)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {v0}, Lk0/s1;->k3(Lk0/s1;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lk0/s1$j;->a:Lk0/s1;

    const/16 v1, 0xa

    iput-byte v1, v0, Lk0/s1;->u:B

    :cond_3
    :goto_0
    return-void
.end method
