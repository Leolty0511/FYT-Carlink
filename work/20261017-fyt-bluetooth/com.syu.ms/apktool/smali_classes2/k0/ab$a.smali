.class public Lk0/ab$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ab;


# direct methods
.method public constructor <init>(Lk0/ab;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ab$a;->a:Lk0/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2
    sget v0, Lw0/d;->i:I

    .line 3
    sget v2, Lw0/d;->h:I

    const/high16 v3, 0x10000

    sub-int v4, v2, v3

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/16 v7, -0x7b

    const/16 v8, 0xe3

    const/4 v9, 0x6

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x3

    if-eqz v4, :cond_1

    sub-int v4, v2, v3

    if-eq v1, v4, :cond_1

    sub-int/2addr v2, v3

    if-ne v10, v2, :cond_0

    goto :goto_0

    :cond_0
    new-array v2, v9, [I

    aput v8, v2, v11

    aput v7, v2, v1

    aput v12, v2, v10

    aput v1, v2, v12

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v6

    and-int/lit16 v0, v0, 0xff

    aput v0, v2, v5

    .line 4
    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    sget v0, Lw0/d;->i:I

    div-int/lit8 v0, v0, 0xa

    new-array v2, v9, [I

    aput v8, v2, v11

    aput v7, v2, v1

    aput v12, v2, v10

    aput v11, v2, v12

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v6

    and-int/lit16 v0, v0, 0xff

    aput v0, v2, v5

    .line 6
    invoke-static {v2}, Lz/k;->s([I)V

    :cond_2
    :goto_1
    return-void
.end method
