.class public Lk0/j9$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/j9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/j9;


# direct methods
.method public constructor <init>(Lk0/j9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/j9$g;->a:Lk0/j9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk0/j9$g;->a:Lk0/j9;

    iget-byte v1, v0, Lk0/j9;->l:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/j9;->l:B

    const/4 v3, 0x5

    if-lez v1, :cond_2

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v4, 0x0

    const/16 v5, 0xe3

    aput v5, v1, v4

    const/16 v4, 0x81

    aput v4, v1, v2

    const/4 v4, 0x2

    aput v2, v1, v4

    const/4 v4, 0x3

    .line 2
    sget v5, Lu0/b;->a0:I

    aput v5, v1, v4

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v3, [I

    .line 3
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    .line 4
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_3

    .line 5
    iget-object v1, p0, Lk0/j9$g;->a:Lk0/j9;

    invoke-virtual {v1}, Lk0/j9;->a3()V

    .line 6
    iget-object v1, p0, Lk0/j9$g;->a:Lk0/j9;

    invoke-static {v1}, Lk0/j9;->h3(Lk0/j9;)V

    .line 7
    sget v1, Lk0/nt;->c:I

    if-eq v1, v3, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    new-array v0, v0, [I

    .line 8
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array v0, v0, [I

    .line 9
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v0, v0, [I

    .line 10
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {v0}, Lk0/j9;->g3(Lk0/j9;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 12
    iget-object v0, p0, Lk0/j9$g;->a:Lk0/j9;

    iput-byte v3, v0, Lk0/j9;->l:B

    :cond_3
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x71
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xca
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xca
        0x1
        0x2
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xca
        0x1
        0x1
    .end array-data
.end method
