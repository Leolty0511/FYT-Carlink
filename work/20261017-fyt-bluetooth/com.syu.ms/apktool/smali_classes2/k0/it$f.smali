.class public Lk0/it$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/it;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/it;


# direct methods
.method public constructor <init>(Lk0/it;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/it$f;->a:Lk0/it;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 1
    iget-object v2, p0, Lk0/it$f;->a:Lk0/it;

    .line 2
    invoke-static {v2}, Lk0/it;->a3(Lk0/it;)Lo1/g0;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lo1/g0;->b(II)I

    move-result v2

    aput v2, v1, v4

    const/16 v2, 0x7a

    .line 3
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 4
    invoke-static {}, Lk0/it;->b3()Z

    move-result v1

    const/4 v2, 0x7

    const/16 v3, 0x78

    const/16 v5, 0x63

    const/16 v6, 0x67

    const/16 v7, 0x68

    const/4 v8, 0x5

    const/4 v9, 0x2

    const/4 v10, 0x3

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lk0/it$f;->a:Lk0/it;

    invoke-static {v1}, Lk0/it;->a3(Lk0/it;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lo1/g0;->e(II)V

    new-array v1, v10, [I

    .line 6
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v0, [I

    aput v0, v1, v4

    .line 7
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    .line 8
    iget-object v1, p0, Lk0/it$f;->a:Lk0/it;

    invoke-static {v1}, Lk0/it;->a3(Lk0/it;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v8, v0}, Lo1/g0;->e(II)V

    new-array v1, v10, [I

    .line 9
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v0, [I

    aput v0, v1, v4

    .line 10
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    aput v0, v1, v4

    .line 11
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    .line 12
    iget-object v1, p0, Lk0/it$f;->a:Lk0/it;

    invoke-static {v1}, Lk0/it;->a3(Lk0/it;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v9, v0}, Lo1/g0;->e(II)V

    new-array v0, v0, [I

    aput v4, v0, v4

    .line 13
    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    .line 14
    iget-object v0, p0, Lk0/it$f;->a:Lk0/it;

    invoke-static {v0}, Lk0/it;->a3(Lk0/it;)Lo1/g0;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Lo1/g0;->e(II)V

    .line 15
    invoke-static {v4}, Lk0/it;->c3(Z)Z

    goto/16 :goto_0

    :cond_0
    new-array v1, v0, [I

    .line 16
    iget-object v11, p0, Lk0/it$f;->a:Lk0/it;

    .line 17
    invoke-static {v11}, Lk0/it;->a3(Lk0/it;)Lo1/g0;

    move-result-object v11

    invoke-virtual {v11, v0, v4}, Lo1/g0;->b(II)I

    move-result v11

    aput v11, v1, v4

    .line 18
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    .line 19
    iget-object v7, p0, Lk0/it$f;->a:Lk0/it;

    .line 20
    invoke-static {v7}, Lk0/it;->a3(Lk0/it;)Lo1/g0;

    move-result-object v7

    invoke-virtual {v7, v8, v4}, Lo1/g0;->b(II)I

    move-result v7

    aput v7, v1, v4

    .line 21
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    .line 22
    iget-object v6, p0, Lk0/it$f;->a:Lk0/it;

    .line 23
    invoke-static {v6}, Lk0/it;->a3(Lk0/it;)Lo1/g0;

    move-result-object v6

    invoke-virtual {v6, v9, v4}, Lo1/g0;->b(II)I

    move-result v6

    aput v6, v1, v4

    .line 24
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    .line 25
    iget-object v5, p0, Lk0/it$f;->a:Lk0/it;

    .line 26
    invoke-static {v5}, Lk0/it;->a3(Lk0/it;)Lo1/g0;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Lo1/g0;->b(II)I

    move-result v2

    aput v2, v1, v4

    .line 27
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v10, [I

    const/16 v2, 0xe3

    aput v2, v1, v4

    const/16 v3, 0x2c

    aput v3, v1, v0

    .line 28
    iget-object v3, p0, Lk0/it$f;->a:Lk0/it;

    invoke-static {v3}, Lk0/it;->a3(Lk0/it;)Lo1/g0;

    move-result-object v3

    invoke-virtual {v3, v10, v4}, Lo1/g0;->b(II)I

    move-result v3

    aput v3, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v10, [I

    aput v2, v1, v4

    const/16 v3, 0x2b

    aput v3, v1, v0

    .line 29
    iget-object v3, p0, Lk0/it$f;->a:Lk0/it;

    invoke-static {v3}, Lk0/it;->a3(Lk0/it;)Lo1/g0;

    move-result-object v3

    invoke-virtual {v3, v0, v4}, Lo1/g0;->b(II)I

    move-result v3

    aput v3, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v10, [I

    aput v2, v1, v4

    const/16 v2, 0x2a

    aput v2, v1, v0

    .line 30
    iget-object v0, p0, Lk0/it$f;->a:Lk0/it;

    invoke-static {v0}, Lk0/it;->a3(Lk0/it;)Lo1/g0;

    move-result-object v0

    invoke-virtual {v0, v8, v4}, Lo1/g0;->b(II)I

    move-result v0

    aput v0, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    :goto_0
    return-void

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
