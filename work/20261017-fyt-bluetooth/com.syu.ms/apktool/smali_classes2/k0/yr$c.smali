.class public Lk0/yr$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/yr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/yr;


# direct methods
.method public constructor <init>(Lk0/yr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/yr$c;->a:Lk0/yr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lk0/yr$c;->a:Lk0/yr;

    iget v1, v0, Lk0/yr;->X:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/yr;->X:I

    const/16 v3, 0xb

    if-lez v1, :cond_1

    const/16 v4, 0xa

    if-ge v1, v4, :cond_1

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v5, 0x0

    aput v1, v0, v5

    const/16 v1, 0x81

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 2
    sget v6, Lu0/b;->a0:I

    aput v6, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_2

    const/4 v0, 0x5

    new-array v1, v0, [B

    .line 4
    fill-array-data v1, :array_0

    invoke-static {v1}, Lk0/yr;->y3([B)V

    new-array v1, v0, [I

    .line 5
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v0, [I

    .line 6
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    .line 7
    iget-object v1, p0, Lk0/yr$c;->a:Lk0/yr;

    invoke-static {v1}, Lk0/yr;->o3(Lk0/yr;)Lo1/g0;

    move-result-object v6

    const/16 v7, 0x14

    invoke-virtual {v6, v4, v7}, Lo1/g0;->b(II)I

    move-result v4

    invoke-static {v1, v4}, Lk0/yr;->p3(Lk0/yr;I)V

    .line 8
    iget-object v1, p0, Lk0/yr$c;->a:Lk0/yr;

    invoke-static {v1}, Lk0/yr;->o3(Lk0/yr;)Lo1/g0;

    move-result-object v4

    const/16 v6, 0x24

    invoke-virtual {v4, v3, v6}, Lo1/g0;->b(II)I

    move-result v3

    invoke-static {v1, v3}, Lk0/yr;->q3(Lk0/yr;I)V

    .line 9
    iget-object v1, p0, Lk0/yr$c;->a:Lk0/yr;

    invoke-static {v1}, Lk0/yr;->o3(Lk0/yr;)Lo1/g0;

    move-result-object v3

    const/16 v4, 0xf

    invoke-virtual {v3, v4, v5}, Lo1/g0;->b(II)I

    move-result v3

    invoke-static {v1, v3}, Lk0/yr;->r3(Lk0/yr;I)V

    .line 10
    iget-object v1, p0, Lk0/yr$c;->a:Lk0/yr;

    invoke-static {v1}, Lk0/yr;->o3(Lk0/yr;)Lo1/g0;

    move-result-object v3

    const/16 v4, 0x17

    invoke-virtual {v3, v4, v5}, Lo1/g0;->b(II)I

    move-result v3

    invoke-static {v1, v3}, Lk0/yr;->f3(Lk0/yr;I)V

    .line 11
    iget-object v1, p0, Lk0/yr$c;->a:Lk0/yr;

    invoke-static {v1}, Lk0/yr;->o3(Lk0/yr;)Lo1/g0;

    move-result-object v3

    const/16 v4, 0x18

    invoke-virtual {v3, v4, v5}, Lo1/g0;->b(II)I

    move-result v3

    invoke-static {v1, v3}, Lk0/yr;->g3(Lk0/yr;I)V

    .line 12
    iget-object v1, p0, Lk0/yr$c;->a:Lk0/yr;

    invoke-static {v1}, Lk0/yr;->o3(Lk0/yr;)Lo1/g0;

    move-result-object v3

    const/16 v4, 0x19

    invoke-virtual {v3, v4, v5}, Lo1/g0;->b(II)I

    move-result v3

    invoke-static {v1, v3}, Lk0/yr;->h3(Lk0/yr;I)V

    .line 13
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lu0/b;->D:I

    const/16 v3, 0xd

    if-eq v1, v3, :cond_0

    .line 14
    invoke-static {}, Lk0/yr;->n3()I

    move-result v1

    invoke-static {v1}, Ly0/h;->u0(I)V

    new-array v0, v0, [I

    .line 15
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 16
    :cond_0
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17
    invoke-static {v0, v5}, Ll0/b0;->l0(II)V

    .line 18
    invoke-static {v0, v2}, Ll0/b0;->l0(II)V

    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, v0, Lk0/yr;->Z:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 20
    iget-object v0, p0, Lk0/yr$c;->a:Lk0/yr;

    iput v3, v0, Lk0/yr;->X:I

    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 1
        0x2et
        -0x7ft
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 4
        0xe3
        0x90
        0x2
        0x30
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x90
        0x2
        0x38
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xc0
        0x2
        0x1
        0x0
    .end array-data
.end method
