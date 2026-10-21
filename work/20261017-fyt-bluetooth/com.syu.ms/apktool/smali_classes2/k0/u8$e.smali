.class public Lk0/u8$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/u8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/u8;


# direct methods
.method public constructor <init>(Lk0/u8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/u8$e;->a:Lk0/u8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lk0/u8$e;->a:Lk0/u8;

    iget-byte v1, v0, Lk0/u8;->n:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/u8;->n:B

    if-lez v1, :cond_0

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v3, 0x0

    const/16 v4, 0xe3

    aput v4, v1, v3

    const/16 v5, 0x81

    aput v5, v1, v2

    const/4 v5, 0x2

    aput v2, v1, v5

    .line 2
    sget v6, Lu0/b;->a0:I

    const/4 v7, 0x3

    aput v6, v1, v7

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sget v1, Lk0/nt;->c:I

    const/16 v6, 0x11

    if-ne v1, v6, :cond_1

    const/16 v1, 0x87

    new-array v6, v2, [I

    .line 4
    iget-object v8, p0, Lk0/u8$e;->a:Lk0/u8;

    invoke-static {v8}, Lk0/u8;->d3(Lk0/u8;)Lo1/g0;

    move-result-object v8

    invoke-virtual {v8, v2, v2}, Lo1/g0;->b(II)I

    move-result v8

    aput v8, v6, v3

    invoke-static {v1, v6}, Lk0/qt;->y0(I[I)V

    new-array v0, v0, [I

    aput v4, v0, v3

    const/16 v1, -0x7e

    aput v1, v0, v2

    aput v2, v0, v5

    .line 5
    iget-object v1, p0, Lk0/u8$e;->a:Lk0/u8;

    invoke-static {v1}, Lk0/u8;->d3(Lk0/u8;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lo1/g0;->b(II)I

    move-result v1

    aput v1, v0, v7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Lk0/u8;->c3(Lk0/u8;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lk0/u8$e;->a:Lk0/u8;

    const/4 v1, 0x5

    iput-byte v1, v0, Lk0/u8;->n:B

    :cond_1
    :goto_0
    return-void
.end method
