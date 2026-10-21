.class public Lk0/ht$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ht;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ht;


# direct methods
.method public constructor <init>(Lk0/ht;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ht$b;->a:Lk0/ht;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 1
    iget-object v2, p0, Lk0/ht$b;->a:Lk0/ht;

    .line 2
    invoke-static {v2}, Lk0/ht;->a3(Lk0/ht;)Lo1/g0;

    move-result-object v2

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lo1/g0;->b(II)I

    move-result v2

    aput v2, v1, v4

    const/16 v2, 0x49

    .line 3
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    .line 4
    iget-object v2, p0, Lk0/ht$b;->a:Lk0/ht;

    .line 5
    invoke-static {v2}, Lk0/ht;->a3(Lk0/ht;)Lo1/g0;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v4}, Lo1/g0;->b(II)I

    move-result v2

    aput v2, v1, v4

    const/16 v2, 0x5d

    .line 6
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    const/4 v1, 0x3

    new-array v2, v1, [I

    const/16 v5, 0xe3

    aput v5, v2, v4

    const/16 v6, 0x20

    aput v6, v2, v0

    .line 7
    iget-object v6, p0, Lk0/ht$b;->a:Lk0/ht;

    invoke-static {v6}, Lk0/ht;->a3(Lk0/ht;)Lo1/g0;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Lo1/g0;->b(II)I

    move-result v3

    const/4 v6, 0x2

    aput v3, v2, v6

    invoke-static {v2}, Lz/k;->s([I)V

    .line 8
    invoke-static {}, Lk0/ht;->b3()Z

    move-result v2

    const/16 v3, 0x6a

    const/16 v7, 0x4a

    const/16 v8, 0x11

    const/16 v9, 0x69

    const/16 v10, 0x13

    const/16 v11, 0x6b

    const/16 v12, 0x12

    const/16 v13, 0x10

    if-eqz v2, :cond_1

    .line 9
    iget-object v2, p0, Lk0/ht$b;->a:Lk0/ht;

    invoke-virtual {v2}, Lk0/ht;->n3()Z

    move-result v2

    if-nez v2, :cond_0

    .line 10
    iget-object v2, p0, Lk0/ht$b;->a:Lk0/ht;

    iget-object v2, v2, Lk0/ht;->c:Landroid/content/ContentResolver;

    const-string v5, "gps_auto_time"

    invoke-static {v2, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 11
    iget-object v2, p0, Lk0/ht$b;->a:Lk0/ht;

    iget-object v2, v2, Lk0/ht;->c:Landroid/content/ContentResolver;

    const-string v5, "auto_time"

    .line 12
    invoke-static {v2, v5, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 13
    iget-object v2, p0, Lk0/ht$b;->a:Lk0/ht;

    iget-object v2, v2, Lk0/ht;->c:Landroid/content/ContentResolver;

    const-string v5, "auto_time_zone"

    invoke-static {v2, v5, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    new-array v2, v1, [I

    .line 14
    fill-array-data v2, :array_0

    invoke-static {v2}, Lz/k;->s([I)V

    new-array v2, v0, [I

    aput v0, v2, v4

    .line 15
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    .line 16
    iget-object v2, p0, Lk0/ht$b;->a:Lk0/ht;

    invoke-static {v2}, Lk0/ht;->a3(Lk0/ht;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v13, v0}, Lo1/g0;->e(II)V

    new-array v2, v1, [I

    .line 17
    fill-array-data v2, :array_1

    invoke-static {v2}, Lz/k;->s([I)V

    const/16 v2, 0x42

    new-array v5, v0, [I

    aput v0, v5, v4

    .line 18
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    new-array v2, v0, [I

    aput v4, v2, v4

    .line 19
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    .line 20
    iget-object v2, p0, Lk0/ht$b;->a:Lk0/ht;

    invoke-static {v2}, Lk0/ht;->a3(Lk0/ht;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v8, v4}, Lo1/g0;->e(II)V

    new-array v2, v0, [I

    aput v0, v2, v4

    .line 21
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v1, [I

    .line 22
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    .line 23
    iget-object v1, p0, Lk0/ht$b;->a:Lk0/ht;

    invoke-static {v1}, Lk0/ht;->a3(Lk0/ht;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v12, v0}, Lo1/g0;->e(II)V

    new-array v1, v0, [I

    aput v0, v1, v4

    .line 24
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    .line 25
    iget-object v1, p0, Lk0/ht$b;->a:Lk0/ht;

    invoke-static {v1}, Lk0/ht;->a3(Lk0/ht;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v10, v0}, Lo1/g0;->e(II)V

    .line 26
    invoke-static {v4}, Lk0/ht;->c3(Z)Z

    goto :goto_0

    :cond_1
    new-array v2, v0, [I

    .line 27
    iget-object v14, p0, Lk0/ht$b;->a:Lk0/ht;

    .line 28
    invoke-static {v14}, Lk0/ht;->a3(Lk0/ht;)Lo1/g0;

    move-result-object v14

    invoke-virtual {v14, v10, v4}, Lo1/g0;->b(II)I

    move-result v10

    aput v10, v2, v4

    .line 29
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v0, [I

    .line 30
    iget-object v10, p0, Lk0/ht$b;->a:Lk0/ht;

    .line 31
    invoke-static {v10}, Lk0/ht;->a3(Lk0/ht;)Lo1/g0;

    move-result-object v10

    invoke-virtual {v10, v8, v4}, Lo1/g0;->b(II)I

    move-result v8

    aput v8, v2, v4

    .line 32
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v1, [I

    aput v5, v2, v4

    const/16 v8, 0x30

    aput v8, v2, v0

    .line 33
    iget-object v8, p0, Lk0/ht$b;->a:Lk0/ht;

    .line 34
    invoke-static {v8}, Lk0/ht;->a3(Lk0/ht;)Lo1/g0;

    move-result-object v8

    invoke-virtual {v8, v13, v4}, Lo1/g0;->b(II)I

    move-result v8

    aput v8, v2, v6

    .line 35
    invoke-static {v2}, Lz/k;->s([I)V

    new-array v2, v0, [I

    .line 36
    iget-object v8, p0, Lk0/ht$b;->a:Lk0/ht;

    .line 37
    invoke-static {v8}, Lk0/ht;->a3(Lk0/ht;)Lo1/g0;

    move-result-object v8

    invoke-virtual {v8, v13, v4}, Lo1/g0;->b(II)I

    move-result v8

    aput v8, v2, v4

    .line 38
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v0, [I

    .line 39
    iget-object v7, p0, Lk0/ht$b;->a:Lk0/ht;

    .line 40
    invoke-static {v7}, Lk0/ht;->a3(Lk0/ht;)Lo1/g0;

    move-result-object v7

    invoke-virtual {v7, v12, v4}, Lo1/g0;->b(II)I

    move-result v7

    aput v7, v2, v4

    .line 41
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v1, [I

    aput v5, v1, v4

    const/16 v2, 0x60

    aput v2, v1, v0

    .line 42
    iget-object v0, p0, Lk0/ht$b;->a:Lk0/ht;

    .line 43
    invoke-static {v0}, Lk0/ht;->a3(Lk0/ht;)Lo1/g0;

    move-result-object v0

    invoke-virtual {v0, v12, v4}, Lo1/g0;->b(II)I

    move-result v0

    aput v0, v1, v6

    .line 44
    invoke-static {v1}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x30
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x31
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x60
        0x1
    .end array-data
.end method
