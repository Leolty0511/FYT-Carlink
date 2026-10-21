.class public Lmodule/canbus/s$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/s;


# direct methods
.method public constructor <init>(Lmodule/canbus/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/s$e;->a:Lmodule/canbus/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lmodule/canbus/s$e;->a:Lmodule/canbus/s;

    iget-byte v1, v0, Lmodule/canbus/s;->d0:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lmodule/canbus/s;->d0:B

    if-lez v1, :cond_9

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

    const/16 v5, 0xff

    const/4 v7, 0x5

    if-ne v1, v2, :cond_7

    .line 4
    iget-object v1, p0, Lmodule/canbus/s$e;->a:Lmodule/canbus/s;

    invoke-static {v1}, Lmodule/canbus/s;->e3(Lmodule/canbus/s;)Lo1/g0;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Lo1/g0;->b(II)I

    move-result v8

    invoke-static {v1, v8}, Lmodule/canbus/s;->f3(Lmodule/canbus/s;I)V

    .line 5
    iget-object v1, p0, Lmodule/canbus/s$e;->a:Lmodule/canbus/s;

    invoke-static {v1}, Lmodule/canbus/s;->e3(Lmodule/canbus/s;)Lo1/g0;

    move-result-object v8

    invoke-virtual {v8, v6, v2}, Lo1/g0;->b(II)I

    move-result v6

    invoke-static {v1, v6}, Lmodule/canbus/s;->g3(Lmodule/canbus/s;I)V

    .line 6
    sget v1, Lk0/nt;->c:I

    if-eq v1, v7, :cond_0

    const/16 v6, 0x2e

    if-eq v1, v6, :cond_0

    const/16 v6, 0x2f

    if-eq v1, v6, :cond_0

    const/16 v6, 0x3c

    if-eq v1, v6, :cond_0

    const/16 v6, 0x9a

    if-eq v1, v6, :cond_0

    const/16 v6, 0x9b

    if-eq v1, v6, :cond_0

    const/16 v6, 0x3d

    if-eq v1, v6, :cond_0

    const/16 v6, 0x40

    if-eq v1, v6, :cond_0

    const/16 v6, 0x49

    if-eq v1, v6, :cond_0

    const/16 v6, 0x9c

    if-eq v1, v6, :cond_0

    const/16 v6, 0x4a

    if-eq v1, v6, :cond_0

    const/16 v6, 0x99

    if-eq v1, v6, :cond_0

    const/16 v6, 0x55

    if-eq v1, v6, :cond_0

    .line 7
    iget-object v1, p0, Lmodule/canbus/s$e;->a:Lmodule/canbus/s;

    invoke-static {v1}, Lmodule/canbus/s;->e3(Lmodule/canbus/s;)Lo1/g0;

    move-result-object v6

    invoke-virtual {v6, v2, v4}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lmodule/canbus/s;->h3(Lmodule/canbus/s;I)V

    :cond_0
    new-array v1, v7, [I

    .line 8
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    .line 9
    sget v1, Lk0/nt;->c:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_3

    const/16 v2, 0xb

    if-eq v1, v2, :cond_3

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    if-ne v1, v7, :cond_4

    .line 10
    sget v1, Lu0/b;->D:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    new-array v0, v0, [I

    .line 11
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_2
    new-array v0, v0, [I

    .line 12
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_3
    :goto_0
    new-array v0, v7, [I

    .line 13
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v7, [I

    .line 14
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v7, [I

    .line 15
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    .line 16
    :cond_4
    :goto_1
    sget v0, Lk0/nt;->c:I

    if-eq v0, v5, :cond_5

    goto :goto_2

    .line 17
    :cond_5
    iget-object v0, p0, Lmodule/canbus/s$e;->a:Lmodule/canbus/s;

    iget-byte v0, v0, Lmodule/canbus/s;->d0:B

    if-gt v0, v3, :cond_6

    new-array v0, v7, [I

    .line 18
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :cond_6
    new-array v0, v7, [I

    .line 19
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    .line 20
    :cond_7
    sget v0, Lk0/nt;->c:I

    if-eq v0, v5, :cond_8

    goto :goto_2

    :cond_8
    new-array v0, v7, [I

    .line 21
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    .line 22
    :cond_9
    invoke-static {v0}, Lmodule/canbus/s;->B3(Lmodule/canbus/s;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 23
    iget-object v0, p0, Lmodule/canbus/s$e;->a:Lmodule/canbus/s;

    const/16 v1, 0x8

    iput-byte v1, v0, Lmodule/canbus/s;->d0:B

    :goto_2
    return-void

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x30
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x11
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x11
        0x1
        0x1
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x84
        0x2
        0x3
        0x6
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x84
        0x2
        0x4
        0x6
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x84
        0x2
        0x5
        0x6
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x84
        0x2
        0x9
        0x10
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x84
        0x2
        0x9
        0x0
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x84
        0x2
        0x9
        0x0
    .end array-data
.end method
