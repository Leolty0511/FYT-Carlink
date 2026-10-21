.class public Lk0/hg$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/hg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/hg;


# direct methods
.method public constructor <init>(Lk0/hg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/hg$a;->a:Lk0/hg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    sget v0, Lu0/b;->a0:I

    const/4 v1, 0x5

    if-nez v0, :cond_0

    new-array v0, v1, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 3
    :cond_0
    sget-object v0, Lh0/c;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_1

    sget v0, Lu0/b;->D:I

    if-ne v0, v2, :cond_1

    .line 4
    iget-object v0, p0, Lk0/hg$a;->a:Lk0/hg;

    sget-object v1, Lh0/c;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lk0/hg;->a3(Lk0/hg;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5
    :cond_1
    sget v0, Lu0/b;->D:I

    const/4 v3, 0x3

    const/16 v4, 0xe3

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-eq v0, v7, :cond_5

    const/16 v8, 0x84

    if-eq v0, v6, :cond_3

    packed-switch v0, :pswitch_data_0

    new-array v0, v1, [I

    .line 6
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_0
    new-array v0, v1, [I

    .line 7
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    .line 8
    sget v0, Lu0/b;->s3:I

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    new-array v0, v1, [I

    aput v4, v0, v5

    aput v8, v0, v7

    aput v2, v0, v2

    .line 9
    sget v1, Lu0/b;->r3:I

    shr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v3

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v6

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_3
    new-array v0, v1, [I

    .line 10
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    .line 11
    sget v0, Lo0/e;->C:I

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    new-array v0, v1, [I

    aput v4, v0, v5

    aput v8, v0, v7

    aput v2, v0, v2

    .line 12
    sget v1, Lo0/e;->B:I

    shr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v3

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_5
    new-array v0, v1, [I

    .line 13
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    .line 14
    sget v0, Lw0/d;->h:I

    const/high16 v8, 0x10000

    sub-int v9, v0, v8

    const/4 v10, 0x6

    const/16 v11, 0x83

    const/4 v12, 0x7

    if-eqz v9, :cond_7

    sub-int v9, v0, v8

    if-eq v7, v9, :cond_7

    sub-int/2addr v0, v8

    if-ne v2, v0, :cond_6

    goto :goto_0

    :cond_6
    new-array v0, v12, [I

    aput v4, v0, v5

    aput v11, v0, v7

    aput v6, v0, v2

    aput v7, v0, v3

    .line 15
    sget v2, Lw0/d;->j:I

    aput v2, v0, v6

    sget v2, Lw0/d;->i:I

    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    aput v3, v0, v1

    and-int/lit16 v1, v2, 0xff

    aput v1, v0, v10

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_7
    :goto_0
    new-array v0, v12, [I

    aput v4, v0, v5

    aput v11, v0, v7

    aput v6, v0, v2

    aput v5, v0, v3

    .line 16
    sget v2, Lw0/d;->j:I

    aput v2, v0, v6

    sget v2, Lw0/d;->i:I

    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    aput v3, v0, v1

    and-int/lit16 v1, v2, 0xff

    aput v1, v0, v10

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x90
        0x2
        0x7
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x90
        0x2
        0x3
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x90
        0x2
        0x3
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x90
        0x2
        0x1
        0x0
    .end array-data
.end method
