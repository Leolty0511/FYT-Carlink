.class public Lk0/w4$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/w4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/w4;


# direct methods
.method public constructor <init>(Lk0/w4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/w4$g;->a:Lk0/w4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lk0/w4$g;->a:Lk0/w4;

    iget-byte v1, v0, Lk0/w4;->h0:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/w4;->h0:B

    const/4 v3, 0x5

    if-lez v1, :cond_0

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v4, 0x0

    const/16 v5, 0xe3

    aput v5, v1, v4

    const/16 v4, 0x81

    aput v4, v1, v2

    const/4 v4, 0x2

    aput v2, v1, v4

    .line 2
    sget v5, Lu0/b;->a0:I

    const/4 v6, 0x3

    aput v5, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    .line 5
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    .line 6
    iget-object v0, p0, Lk0/w4$g;->a:Lk0/w4;

    invoke-static {v0}, Lk0/w4;->k3(Lk0/w4;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v4, v2}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/w4;->l3(Lk0/w4;I)V

    .line 7
    sget v0, Lk0/nt;->c:I

    if-ne v0, v4, :cond_1

    .line 8
    iget-object v0, p0, Lk0/w4$g;->a:Lk0/w4;

    invoke-static {v0}, Lk0/w4;->k3(Lk0/w4;)Lo1/g0;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v6, v2}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/w4;->m3(Lk0/w4;I)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v0}, Lk0/w4;->j3(Lk0/w4;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lk0/w4$g;->a:Lk0/w4;

    iput-byte v3, v0, Lk0/w4;->h0:B

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x90
        0x1
        0x30
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x90
        0x2
        0x40
        0x10
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x90
        0x2
        0x40
        0x70
    .end array-data
.end method
