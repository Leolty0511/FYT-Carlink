.class public Lk0/hb$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/hb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/hb;


# direct methods
.method public constructor <init>(Lk0/hb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/hb$k;->a:Lk0/hb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk0/hb$k;->a:Lk0/hb;

    iget v1, v0, Lk0/hb;->I:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/hb;->I:I

    const/4 v3, 0x3

    if-lez v1, :cond_4

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
    sget v4, Lu0/b;->a0:I

    aput v4, v1, v3

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_5

    .line 4
    iget-object v1, p0, Lk0/hb$k;->a:Lk0/hb;

    invoke-static {v1}, Lk0/hb;->e3(Lk0/hb;)Lo1/g0;

    move-result-object v4

    invoke-virtual {v4, v2, v5}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/hb;->f3(Lk0/hb;I)V

    .line 5
    iget-object v1, p0, Lk0/hb$k;->a:Lk0/hb;

    invoke-static {v1}, Lk0/hb;->e3(Lk0/hb;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v3, v5}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/hb;->g3(Lk0/hb;I)V

    .line 6
    iget-object v1, p0, Lk0/hb$k;->a:Lk0/hb;

    invoke-static {v1}, Lk0/hb;->e3(Lk0/hb;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v0, v5}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/hb;->h3(Lk0/hb;I)V

    const/4 v1, 0x5

    new-array v2, v1, [I

    .line 7
    fill-array-data v2, :array_0

    invoke-static {v2}, Lz/k;->s([I)V

    new-array v2, v1, [I

    .line 8
    fill-array-data v2, :array_1

    invoke-static {v2}, Lz/k;->s([I)V

    new-array v1, v1, [I

    .line 9
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    .line 10
    sget v1, Lk0/nt;->c:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    const/16 v2, 0x30

    if-eq v1, v2, :cond_2

    const/16 v2, 0x52

    if-eq v1, v2, :cond_2

    const/16 v2, 0x53

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x76

    if-ne v1, v2, :cond_5

    .line 11
    sget v1, Lu0/b;->D:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    new-array v0, v0, [I

    .line 12
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_1
    new-array v0, v0, [I

    .line 13
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    .line 14
    :cond_2
    :goto_0
    sget v1, Lu0/b;->D:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_3

    new-array v0, v0, [I

    .line 15
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_3
    new-array v0, v0, [I

    .line 16
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    .line 17
    :cond_4
    iget-object v0, v0, Lk0/hb;->K:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 18
    iget-object v0, p0, Lk0/hb$k;->a:Lk0/hb;

    iput v3, v0, Lk0/hb;->I:I

    :cond_5
    :goto_1
    return-void

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x24
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x90
        0x2
        0x63
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x90
        0x2
        0x69
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x83
        0x1
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x83
        0x1
        0x1
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x83
        0x1
        0x0
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x83
        0x1
        0x1
    .end array-data
.end method
