.class public Lk0/kt$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/kt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/kt;


# direct methods
.method public constructor <init>(Lk0/kt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/kt$g;->a:Lk0/kt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    invoke-static {}, Lk0/kt;->d3()Z

    move-result v0

    const/4 v1, 0x7

    const/16 v2, 0x78

    const/16 v3, 0x63

    const/16 v4, 0x67

    const/16 v5, 0x68

    const/4 v6, 0x5

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x6b

    new-array v11, v9, [I

    aput v10, v11, v10

    .line 2
    invoke-static {v0, v11}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object v0, p0, Lk0/kt$g;->a:Lk0/kt;

    invoke-static {v0}, Lk0/kt;->f3(Lk0/kt;)Lo1/g0;

    move-result-object v0

    invoke-virtual {v0, v8, v10}, Lo1/g0;->e(II)V

    .line 4
    iget-object v0, p0, Lk0/kt$g;->a:Lk0/kt;

    invoke-static {v0}, Lk0/kt;->f3(Lk0/kt;)Lo1/g0;

    move-result-object v0

    invoke-virtual {v0, v9, v9}, Lo1/g0;->e(II)V

    new-array v0, v8, [I

    .line 5
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v9, [I

    aput v9, v0, v10

    .line 6
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    .line 7
    iget-object v0, p0, Lk0/kt$g;->a:Lk0/kt;

    invoke-static {v0}, Lk0/kt;->f3(Lk0/kt;)Lo1/g0;

    move-result-object v0

    invoke-virtual {v0, v6, v9}, Lo1/g0;->e(II)V

    new-array v0, v8, [I

    .line 8
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v9, [I

    aput v9, v0, v10

    .line 9
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v9, [I

    aput v9, v0, v10

    .line 10
    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    .line 11
    iget-object v0, p0, Lk0/kt$g;->a:Lk0/kt;

    invoke-static {v0}, Lk0/kt;->f3(Lk0/kt;)Lo1/g0;

    move-result-object v0

    invoke-virtual {v0, v7, v9}, Lo1/g0;->e(II)V

    new-array v0, v9, [I

    aput v10, v0, v10

    .line 12
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    .line 13
    iget-object v0, p0, Lk0/kt$g;->a:Lk0/kt;

    invoke-static {v0}, Lk0/kt;->f3(Lk0/kt;)Lo1/g0;

    move-result-object v0

    invoke-virtual {v0, v1, v10}, Lo1/g0;->e(II)V

    .line 14
    invoke-static {v10}, Lk0/kt;->e3(Z)Z

    goto/16 :goto_0

    :cond_0
    new-array v0, v9, [I

    .line 15
    iget-object v11, p0, Lk0/kt$g;->a:Lk0/kt;

    .line 16
    invoke-static {v11}, Lk0/kt;->f3(Lk0/kt;)Lo1/g0;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Lo1/g0;->b(II)I

    move-result v11

    aput v11, v0, v10

    .line 17
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v9, [I

    .line 18
    iget-object v5, p0, Lk0/kt$g;->a:Lk0/kt;

    .line 19
    invoke-static {v5}, Lk0/kt;->f3(Lk0/kt;)Lo1/g0;

    move-result-object v5

    invoke-virtual {v5, v6, v10}, Lo1/g0;->b(II)I

    move-result v5

    aput v5, v0, v10

    .line 20
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v9, [I

    .line 21
    iget-object v4, p0, Lk0/kt$g;->a:Lk0/kt;

    .line 22
    invoke-static {v4}, Lk0/kt;->f3(Lk0/kt;)Lo1/g0;

    move-result-object v4

    invoke-virtual {v4, v7, v10}, Lo1/g0;->b(II)I

    move-result v4

    aput v4, v0, v10

    .line 23
    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v9, [I

    .line 24
    iget-object v3, p0, Lk0/kt$g;->a:Lk0/kt;

    .line 25
    invoke-static {v3}, Lk0/kt;->f3(Lk0/kt;)Lo1/g0;

    move-result-object v3

    invoke-virtual {v3, v1, v10}, Lo1/g0;->b(II)I

    move-result v1

    aput v1, v0, v10

    .line 26
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v8, [I

    const/16 v1, 0xe3

    aput v1, v0, v10

    const/16 v2, 0x2c

    aput v2, v0, v9

    .line 27
    iget-object v2, p0, Lk0/kt$g;->a:Lk0/kt;

    invoke-static {v2}, Lk0/kt;->f3(Lk0/kt;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v8, v10}, Lo1/g0;->b(II)I

    move-result v2

    aput v2, v0, v7

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v8, [I

    aput v1, v0, v10

    const/16 v2, 0x2b

    aput v2, v0, v9

    .line 28
    iget-object v2, p0, Lk0/kt$g;->a:Lk0/kt;

    invoke-static {v2}, Lk0/kt;->f3(Lk0/kt;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Lo1/g0;->b(II)I

    move-result v2

    aput v2, v0, v7

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v8, [I

    aput v1, v0, v10

    const/16 v1, 0x2a

    aput v1, v0, v9

    .line 29
    iget-object v1, p0, Lk0/kt$g;->a:Lk0/kt;

    invoke-static {v1}, Lk0/kt;->f3(Lk0/kt;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v6, v10}, Lo1/g0;->b(II)I

    move-result v1

    aput v1, v0, v7

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x2b
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2a
        0x1
    .end array-data
.end method
