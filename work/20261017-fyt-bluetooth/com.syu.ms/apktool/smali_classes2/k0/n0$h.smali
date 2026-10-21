.class public Lk0/n0$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/n0;


# direct methods
.method public constructor <init>(Lk0/n0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/n0$h;->a:Lk0/n0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lk0/n0$h;->a:Lk0/n0;

    iget-byte v1, v0, Lk0/n0;->z:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/n0;->z:B

    const/4 v3, 0x5

    if-lez v1, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v4, 0x0

    aput v1, v0, v4

    const/16 v1, 0x81

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v5, 0x3

    .line 2
    sget v6, Lu0/b;->a0:I

    aput v6, v0, v5

    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_1

    .line 4
    iget-object v0, p0, Lk0/n0$h;->a:Lk0/n0;

    invoke-static {v0}, Lk0/n0;->l3(Lk0/n0;)Lo1/g0;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v5, v6, v4}, Lo1/g0;->b(II)I

    move-result v5

    invoke-static {v0, v5}, Lk0/n0;->m3(Lk0/n0;I)V

    .line 5
    iget-object v0, p0, Lk0/n0$h;->a:Lk0/n0;

    invoke-static {v0}, Lk0/n0;->l3(Lk0/n0;)Lo1/g0;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lo1/g0;->b(II)I

    move-result v3

    invoke-static {v0, v3}, Lk0/n0;->n3(Lk0/n0;I)V

    .line 6
    iget-object v0, p0, Lk0/n0$h;->a:Lk0/n0;

    const/16 v3, 0x33

    invoke-static {v0, v3, v2}, Lk0/n0;->o3(Lk0/n0;II)V

    .line 7
    iget-object v0, p0, Lk0/n0$h;->a:Lk0/n0;

    invoke-static {v0, v3, v1}, Lk0/n0;->o3(Lk0/n0;II)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v0}, Lk0/n0;->k3(Lk0/n0;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lk0/n0$h;->a:Lk0/n0;

    iput-byte v3, v0, Lk0/n0;->z:B

    :cond_1
    :goto_0
    return-void
.end method
