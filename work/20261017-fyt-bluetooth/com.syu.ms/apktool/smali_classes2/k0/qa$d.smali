.class public Lk0/qa$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/qa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/qa;


# direct methods
.method public constructor <init>(Lk0/qa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/qa$d;->a:Lk0/qa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lk0/qa$d;->a:Lk0/qa;

    iget v1, v0, Lk0/qa;->i:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/qa;->i:I

    if-lez v1, :cond_0

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
    sget v1, Lk0/nt;->c:I

    const/16 v5, 0x1b

    if-ne v1, v5, :cond_1

    .line 4
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_1

    .line 5
    iget-object v1, p0, Lk0/qa$d;->a:Lk0/qa;

    invoke-static {v1}, Lk0/qa;->b3(Lk0/qa;)Lo1/g0;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Lo1/g0;->b(II)I

    move-result v2

    iget-object v5, p0, Lk0/qa$d;->a:Lk0/qa;

    .line 6
    invoke-static {v5}, Lk0/qa;->b3(Lk0/qa;)Lo1/g0;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lo1/g0;->b(II)I

    move-result v3

    iget-object v5, p0, Lk0/qa$d;->a:Lk0/qa;

    .line 7
    invoke-static {v5}, Lk0/qa;->b3(Lk0/qa;)Lo1/g0;

    move-result-object v5

    invoke-virtual {v5, v6, v4}, Lo1/g0;->b(II)I

    move-result v5

    iget-object v6, p0, Lk0/qa$d;->a:Lk0/qa;

    .line 8
    invoke-static {v6}, Lk0/qa;->b3(Lk0/qa;)Lo1/g0;

    move-result-object v6

    invoke-virtual {v6, v0, v4}, Lo1/g0;->b(II)I

    move-result v0

    .line 9
    invoke-static {v1, v2, v3, v5, v0}, Lk0/qa;->c3(Lk0/qa;IIII)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, v0, Lk0/qa;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lk0/qa$d;->a:Lk0/qa;

    const/4 v1, 0x5

    iput v1, v0, Lk0/qa;->i:I

    :cond_1
    :goto_0
    return-void
.end method
