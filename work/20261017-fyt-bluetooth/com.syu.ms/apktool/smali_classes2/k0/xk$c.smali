.class public Lk0/xk$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/xk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/xk;


# direct methods
.method public constructor <init>(Lk0/xk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/xk$c;->a:Lk0/xk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/xk$c;->a:Lk0/xk;

    iget v1, v0, Lk0/xk;->f:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/xk;->f:I

    const/4 v3, 0x5

    if-lez v1, :cond_2

    .line 2
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_3

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 4
    sget v0, Lk0/nt;->a:I

    const v1, 0x3701bc

    if-eq v0, v1, :cond_1

    const v1, 0x5701bc

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v3, [I

    .line 5
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v0, v3, [I

    .line 6
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, v0, Lk0/xk;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lk0/xk$c;->a:Lk0/xk;

    iput v3, v0, Lk0/xk;->f:I

    :cond_3
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x3
        0x6a
        0x5
        0x1
        0x62
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x24
        0x2
        0x32
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0x24
        0x1
        0x32
    .end array-data
.end method
