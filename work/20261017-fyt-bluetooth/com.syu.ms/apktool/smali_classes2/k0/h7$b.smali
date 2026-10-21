.class public Lk0/h7$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/h7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/h7;


# direct methods
.method public constructor <init>(Lk0/h7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/h7$b;->a:Lk0/h7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/h7$b;->a:Lk0/h7;

    iget v1, v0, Lk0/h7;->g:I

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    add-int/2addr v1, v2

    .line 2
    iput v1, v0, Lk0/h7;->g:I

    .line 3
    :cond_0
    sget v0, Lu0/b;->a0:I

    const/4 v1, 0x5

    if-ne v0, v2, :cond_5

    new-array v0, v1, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 5
    iget-object v0, p0, Lk0/h7$b;->a:Lk0/h7;

    iget v0, v0, Lk0/h7;->g:I

    if-ltz v0, :cond_6

    .line 6
    rem-int/2addr v0, v1

    if-ne v0, v2, :cond_1

    new-array v0, v1, [I

    .line 7
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v1, [I

    .line 8
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    .line 9
    :cond_1
    iget-object v0, p0, Lk0/h7$b;->a:Lk0/h7;

    iget v0, v0, Lk0/h7;->g:I

    rem-int/2addr v0, v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    new-array v0, v1, [I

    .line 10
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v1, [I

    .line 11
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    .line 12
    :cond_2
    iget-object v0, p0, Lk0/h7$b;->a:Lk0/h7;

    iget v0, v0, Lk0/h7;->g:I

    rem-int/2addr v0, v1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    new-array v0, v1, [I

    .line 13
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v1, [I

    .line 14
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    .line 15
    :cond_3
    iget-object v0, p0, Lk0/h7$b;->a:Lk0/h7;

    iget v0, v0, Lk0/h7;->g:I

    rem-int/2addr v0, v1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    new-array v0, v1, [I

    .line 16
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    .line 17
    :cond_4
    iget-object v0, p0, Lk0/h7$b;->a:Lk0/h7;

    iget v1, v0, Lk0/h7;->g:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_6

    const/4 v1, -0x1

    .line 18
    iput v1, v0, Lk0/h7;->g:I

    goto :goto_0

    :cond_5
    new-array v0, v1, [I

    .line 19
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_6
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x84
        0x2
        0x9
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x84
        0x2
        0x4
        0x7
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x84
        0x2
        0x1
        0xb
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x84
        0x2
        0x5
        0x7
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x84
        0x2
        0x2
        0xb
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x84
        0x2
        0x6
        0x7
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x84
        0x2
        0x8
        0x14
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x84
        0x2
        0x7
        0x5
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
