.class public Lk0/ej$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ej;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ej;


# direct methods
.method public constructor <init>(Lk0/ej;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ej$e;->a:Lk0/ej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lk0/ej$e;->a:Lk0/ej;

    iget v1, v0, Lk0/ej;->p:I

    sget v2, Lu0/b;->j4:I

    if-eq v1, v2, :cond_1

    .line 2
    iput v2, v0, Lk0/ej;->p:I

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/16 v3, 0xe3

    const/4 v4, 0x0

    aput v3, v1, v4

    const/16 v3, 0x69

    const/4 v5, 0x1

    aput v3, v1, v5

    const/4 v3, 0x2

    aput v3, v1, v3

    const/4 v6, 0x3

    const/16 v7, 0x13

    aput v7, v1, v6

    const/4 v6, 0x4

    aput v2, v1, v6

    .line 3
    invoke-static {v1}, Lz/k;->s([I)V

    .line 4
    iget-object v1, p0, Lk0/ej$e;->a:Lk0/ej;

    iget v2, v1, Lk0/ej;->i:I

    if-ne v2, v3, :cond_0

    sget v3, Lu0/b;->j4:I

    if-ne v3, v5, :cond_0

    .line 5
    iput-boolean v5, v1, Lk0/ej;->q:Z

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 6
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    if-ne v2, v5, :cond_1

    .line 7
    sget v2, Lu0/b;->j4:I

    if-nez v2, :cond_1

    iget-boolean v2, v1, Lk0/ej;->q:Z

    if-ne v2, v5, :cond_1

    .line 8
    iput-boolean v4, v1, Lk0/ej;->q:Z

    new-array v0, v0, [I

    .line 9
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x6b
        0x6
        0x2
        0x0
        0xa
        0x0
        0xa
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x69
        0x2
        0x12
        0x2
    .end array-data
.end method
