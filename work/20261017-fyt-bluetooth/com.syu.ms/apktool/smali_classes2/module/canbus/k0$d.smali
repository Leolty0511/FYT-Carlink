.class public Lmodule/canbus/k0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/k0;


# direct methods
.method public constructor <init>(Lmodule/canbus/k0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/k0$d;->a:Lmodule/canbus/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lmodule/canbus/k0$d;->a:Lmodule/canbus/k0;

    iget-byte v1, v0, Lmodule/canbus/k0;->M:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lmodule/canbus/k0;->M:B

    if-lez v1, :cond_4

    .line 2
    sget v1, Lk0/nt;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x5

    if-eq v1, v4, :cond_0

    const/16 v5, 0x2e

    if-eq v1, v5, :cond_0

    const/16 v5, 0x2f

    if-eq v1, v5, :cond_0

    const/16 v5, 0x3c

    if-eq v1, v5, :cond_0

    const/16 v5, 0x3d

    if-eq v1, v5, :cond_0

    const/16 v5, 0x40

    if-eq v1, v5, :cond_0

    .line 3
    invoke-static {v0}, Lmodule/canbus/k0;->f3(Lmodule/canbus/k0;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lmodule/canbus/k0;->g3(Lmodule/canbus/k0;I)V

    :cond_0
    const/4 v0, 0x4

    new-array v1, v0, [I

    const/16 v5, 0xe3

    aput v5, v1, v3

    const/16 v3, 0x81

    aput v3, v1, v2

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v2, 0x3

    .line 4
    sget v3, Lu0/b;->a0:I

    aput v3, v1, v2

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v4, [I

    .line 5
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    .line 6
    sget v1, Lk0/nt;->c:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_3

    const/16 v2, 0xb

    if-eq v1, v2, :cond_3

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    if-ne v1, v4, :cond_5

    .line 7
    sget v1, Lu0/b;->D:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    new-array v0, v0, [I

    .line 8
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_2
    new-array v0, v0, [I

    .line 9
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_3
    :goto_0
    new-array v0, v4, [I

    .line 10
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v4, [I

    .line 11
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v4, [I

    .line 12
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    .line 13
    :cond_4
    invoke-static {v0}, Lmodule/canbus/k0;->H3(Lmodule/canbus/k0;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 14
    iget-object v0, p0, Lmodule/canbus/k0$d;->a:Lmodule/canbus/k0;

    const/16 v1, 0x8

    iput-byte v1, v0, Lmodule/canbus/k0;->M:B

    :cond_5
    :goto_1
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
.end method
