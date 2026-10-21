.class public Lk0/b9$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/b9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/b9;


# direct methods
.method public constructor <init>(Lk0/b9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/b9$b;->a:Lk0/b9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/b9$b;->a:Lk0/b9;

    iget-byte v1, v0, Lk0/b9;->n:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/b9;->n:B

    if-lez v1, :cond_2

    .line 2
    sget v1, Lk0/nt;->c:I

    const/16 v3, 0x17

    const/4 v4, 0x0

    if-eq v1, v3, :cond_0

    const/16 v3, 0x20

    if-eq v1, v3, :cond_0

    const/16 v3, 0x27

    if-ne v1, v3, :cond_1

    .line 3
    :cond_0
    invoke-static {v0}, Lk0/b9;->c3(Lk0/b9;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/b9;->d3(Lk0/b9;I)V

    .line 4
    :cond_1
    iget-object v0, p0, Lk0/b9$b;->a:Lk0/b9;

    invoke-static {v0}, Lk0/b9;->c3(Lk0/b9;)Lo1/g0;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v4}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/b9;->e3(Lk0/b9;I)V

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/16 v1, 0xe3

    aput v1, v0, v4

    const/16 v1, 0x81

    aput v1, v0, v2

    aput v2, v0, v3

    const/4 v1, 0x3

    .line 5
    sget v3, Lu0/b;->a0:I

    aput v3, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 6
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_3

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {v0}, Lk0/b9;->b3(Lk0/b9;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lk0/b9$b;->a:Lk0/b9;

    const/4 v1, 0x5

    iput-byte v1, v0, Lk0/b9;->n:B

    :cond_3
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x90
        0x3
        0x27
        0x0
        0x0
    .end array-data
.end method
