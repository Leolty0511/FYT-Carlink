.class public Lk0/y$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/y;


# direct methods
.method public constructor <init>(Lk0/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/y$d;->a:Lk0/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    new-array v0, v2, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_0
    new-array v0, v2, [I

    .line 3
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_1
    new-array v0, v2, [I

    .line 4
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    .line 5
    :cond_2
    sget v0, Lw0/d;->h:I

    const/high16 v3, 0x10000

    sub-int v4, v0, v3

    if-nez v4, :cond_3

    new-array v0, v2, [I

    .line 6
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_3
    sub-int v4, v0, v3

    if-eq v1, v4, :cond_6

    const/4 v4, 0x2

    sub-int v3, v0, v3

    if-ne v4, v3, :cond_4

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v0, 0x0

    if-eqz v3, :cond_5

    add-int/lit8 v0, v0, 0x0

    if-ne v1, v0, :cond_7

    :cond_5
    new-array v0, v2, [I

    .line 7
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_6
    :goto_0
    new-array v0, v2, [I

    .line 8
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_7
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x8f
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x8f
        0x1
        0x7
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x8f
        0x1
        0x6
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x8f
        0x1
        0x2
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x8f
        0x1
        0x1
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x8f
        0x1
        0x3
    .end array-data
.end method
