.class public Lk0/d1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/d1;


# direct methods
.method public constructor <init>(Lk0/d1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/d1$a;->a:Lk0/d1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x4

    const/16 v2, 0x47

    if-eq v0, v2, :cond_3

    const/16 v2, 0x5c

    if-eq v0, v2, :cond_3

    const/16 v2, 0x5d

    if-eq v0, v2, :cond_3

    const/16 v2, 0x5e

    if-eq v0, v2, :cond_3

    const/16 v2, 0x5f

    if-eq v0, v2, :cond_3

    const/16 v2, 0x60

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x53

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 2
    :cond_1
    sget v0, Lu0/b;->D:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    new-array v0, v1, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_2
    new-array v0, v1, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    .line 5
    :cond_3
    :goto_0
    iget-object v0, p0, Lk0/d1$a;->a:Lk0/d1;

    iget v0, v0, Lk0/d1;->v:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    sget v0, Lu0/b;->D:I

    const/16 v2, 0xd

    if-eq v0, v2, :cond_4

    if-eqz v0, :cond_4

    new-array v0, v1, [I

    .line 6
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_4
    new-array v0, v1, [I

    .line 7
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_5
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0xa1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xa1
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xc5
        0x1
        0x2
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xc5
        0x1
        0x1
    .end array-data
.end method
