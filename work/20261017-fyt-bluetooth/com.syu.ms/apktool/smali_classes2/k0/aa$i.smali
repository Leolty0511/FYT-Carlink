.class public Lk0/aa$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/aa;


# direct methods
.method public constructor <init>(Lk0/aa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/aa$i;->a:Lk0/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1
    sget v0, Lu0/b;->D:I

    const/16 v1, 0x9

    const/16 v2, 0x8

    const/16 v3, 0xa

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v4

    .line 2
    :goto_1
    sget v6, Lh0/c;->E:I

    if-eqz v6, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v5

    .line 3
    :goto_2
    sget v7, Ly0/f;->i:I

    .line 4
    sget v8, Ly0/f;->C0:I

    if-nez v8, :cond_3

    move v7, v4

    .line 5
    :cond_3
    sget v8, Lu0/b;->n3:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    sget v8, Lu0/b;->o3:I

    if-eq v8, v4, :cond_4

    move v8, v4

    goto :goto_3

    :cond_4
    move v8, v5

    .line 6
    :goto_3
    sget v10, Lu0/b;->o3:I

    if-ne v10, v4, :cond_5

    move v10, v4

    goto :goto_4

    :cond_5
    move v10, v5

    .line 7
    :goto_4
    sget v11, Lu0/b;->n3:I

    if-nez v11, :cond_6

    sget v11, Lu0/b;->o3:I

    if-eq v11, v4, :cond_6

    move v11, v4

    goto :goto_5

    :cond_6
    move v11, v5

    :goto_5
    const/4 v12, 0x7

    shl-int/2addr v0, v12

    const/4 v13, 0x6

    shl-int/2addr v6, v13

    or-int/2addr v0, v6

    const/4 v6, 0x5

    shl-int/2addr v7, v6

    or-int/2addr v0, v7

    const/4 v7, 0x4

    shl-int/2addr v8, v7

    or-int/2addr v0, v8

    shl-int/lit8 v8, v10, 0x3

    or-int/2addr v0, v8

    const/4 v8, 0x2

    shl-int/lit8 v10, v11, 0x2

    or-int/2addr v0, v10

    or-int/2addr v0, v5

    int-to-byte v0, v0

    .line 8
    sget v10, Ly0/f;->i:I

    if-ne v10, v4, :cond_7

    move v10, v5

    goto :goto_6

    .line 9
    :cond_7
    sget v10, Ly0/f;->C0:I

    int-to-byte v10, v10

    :goto_6
    const/16 v11, 0xd

    new-array v11, v11, [I

    const/16 v14, 0xe3

    aput v14, v11, v5

    aput v3, v11, v4

    const/16 v4, -0x1a

    aput v4, v11, v8

    aput v0, v11, v9

    aput v5, v11, v7

    aput v5, v11, v6

    aput v5, v11, v13

    aput v10, v11, v12

    aput v5, v11, v2

    aput v5, v11, v1

    aput v5, v11, v3

    const/16 v0, 0xb

    aput v5, v11, v0

    const/16 v0, 0xc

    aput v5, v11, v0

    .line 10
    invoke-static {v11}, Lz/k;->s([I)V

    return-void
.end method
