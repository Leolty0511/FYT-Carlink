.class public Lk0/dt$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/dt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/dt;


# direct methods
.method public constructor <init>(Lk0/dt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/dt$a;->a:Lk0/dt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    invoke-static {}, Lk0/dt;->a3()Z

    move-result v0

    const/16 v1, 0x6f

    const/16 v2, 0x63

    const/16 v3, 0x70

    const/16 v4, 0x68

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x6b

    new-array v8, v6, [I

    aput v7, v8, v7

    .line 2
    invoke-static {v0, v8}, Lk0/qt;->y0(I[I)V

    new-array v0, v6, [I

    aput v6, v0, v7

    .line 3
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v6, [I

    aput v6, v0, v7

    .line 4
    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v6, [I

    aput v6, v0, v7

    .line 5
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v6, [I

    aput v6, v0, v7

    .line 6
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    .line 7
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v5, [I

    .line 8
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v5, [I

    .line 9
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    .line 10
    invoke-static {v7}, Lk0/dt;->b3(Z)Z

    goto/16 :goto_0

    :cond_0
    new-array v0, v6, [I

    .line 11
    iget-object v8, p0, Lk0/dt$a;->a:Lk0/dt;

    .line 12
    invoke-static {v8}, Lk0/dt;->c3(Lk0/dt;)Lo1/g0;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Lo1/g0;->b(II)I

    move-result v8

    aput v8, v0, v7

    .line 13
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v6, [I

    .line 14
    iget-object v4, p0, Lk0/dt$a;->a:Lk0/dt;

    .line 15
    invoke-static {v4}, Lk0/dt;->c3(Lk0/dt;)Lo1/g0;

    move-result-object v4

    const/4 v8, 0x5

    invoke-virtual {v4, v8, v7}, Lo1/g0;->b(II)I

    move-result v4

    aput v4, v0, v7

    .line 16
    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v6, [I

    .line 17
    iget-object v3, p0, Lk0/dt$a;->a:Lk0/dt;

    .line 18
    invoke-static {v3}, Lk0/dt;->c3(Lk0/dt;)Lo1/g0;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v7}, Lo1/g0;->b(II)I

    move-result v3

    aput v3, v0, v7

    .line 19
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v6, [I

    .line 20
    iget-object v2, p0, Lk0/dt$a;->a:Lk0/dt;

    .line 21
    invoke-static {v2}, Lk0/dt;->c3(Lk0/dt;)Lo1/g0;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v7}, Lo1/g0;->b(II)I

    move-result v2

    aput v2, v0, v7

    .line 22
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    const/16 v1, 0xe3

    aput v1, v0, v7

    const/16 v2, 0x2c

    aput v2, v0, v6

    .line 23
    iget-object v2, p0, Lk0/dt$a;->a:Lk0/dt;

    invoke-static {v2}, Lk0/dt;->c3(Lk0/dt;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v5, v7}, Lo1/g0;->b(II)I

    move-result v2

    aput v2, v0, v4

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v5, [I

    aput v1, v0, v7

    const/16 v2, 0x2d

    aput v2, v0, v6

    .line 24
    iget-object v2, p0, Lk0/dt$a;->a:Lk0/dt;

    invoke-static {v2}, Lk0/dt;->c3(Lk0/dt;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v3, v7}, Lo1/g0;->b(II)I

    move-result v2

    aput v2, v0, v4

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v5, [I

    aput v1, v0, v7

    const/16 v2, 0x2b

    aput v2, v0, v6

    .line 25
    iget-object v2, p0, Lk0/dt$a;->a:Lk0/dt;

    invoke-static {v2}, Lk0/dt;->c3(Lk0/dt;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Lo1/g0;->b(II)I

    move-result v2

    aput v2, v0, v4

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v5, [I

    aput v1, v0, v7

    const/16 v1, 0x2a

    aput v1, v0, v6

    .line 26
    iget-object v1, p0, Lk0/dt$a;->a:Lk0/dt;

    invoke-static {v1}, Lk0/dt;->c3(Lk0/dt;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v8, v7}, Lo1/g0;->b(II)I

    move-result v1

    aput v1, v0, v4

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x2d
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2b
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2a
        0x1
    .end array-data
.end method
