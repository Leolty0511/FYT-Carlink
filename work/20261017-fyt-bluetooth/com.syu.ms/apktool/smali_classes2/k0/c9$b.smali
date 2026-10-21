.class public Lk0/c9$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/c9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/c9;


# direct methods
.method public constructor <init>(Lk0/c9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/c9$b;->a:Lk0/c9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/c9$b;->a:Lk0/c9;

    iget v1, v0, Lk0/c9;->e:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/c9;->e:I

    if-lez v1, :cond_2

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

    if-ne v1, v2, :cond_3

    .line 4
    sget v1, Lk0/nt;->c:I

    const/4 v3, 0x7

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-array v1, v3, [I

    .line 5
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v1, v3, [I

    .line 6
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    :goto_0
    new-array v1, v0, [I

    .line 7
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v0, v0, [I

    .line 8
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object v0, v0, Lk0/c9;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lk0/c9$b;->a:Lk0/c9;

    const/4 v1, 0x5

    iput v1, v0, Lk0/c9;->e:I

    :cond_3
    :goto_1
    return-void

    :array_0
    .array-data 4
        0xe3
        0x72
        0x4
        0x4
        0x2
        0x2
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x72
        0x4
        0x4
        0x2
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x90
        0x1
        0x1
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x90
        0x1
        0x30
    .end array-data
.end method
