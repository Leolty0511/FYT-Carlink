.class public Lk0/y$c;
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
    iput-object p1, p0, Lk0/y$c;->a:Lk0/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/y$c;->a:Lk0/y;

    iget v1, v0, Lk0/y;->r:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/y;->r:I

    if-lez v1, :cond_0

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v3, 0x0

    const/16 v4, 0xe3

    aput v4, v1, v3

    const/16 v3, 0x81

    aput v3, v1, v2

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v3, 0x3

    .line 2
    sget v4, Lu0/b;->a0:I

    aput v4, v1, v3

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_1

    new-array v1, v0, [I

    .line 4
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v0, [I

    .line 5
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    .line 6
    sget v1, Lk0/nt;->a:I

    const v2, 0x40019

    if-ne v1, v2, :cond_1

    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, v0, Lk0/y;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lk0/y$c;->a:Lk0/y;

    const/4 v1, 0x5

    iput v1, v0, Lk0/y;->r:I

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x90
        0x1
        0x30
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x90
        0x1
        0x33
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xca
        0x1
        0x2
    .end array-data
.end method
