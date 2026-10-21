.class public Lk0/j0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/j0;


# direct methods
.method public constructor <init>(Lk0/j0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/j0$d;->a:Lk0/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/j0$d;->a:Lk0/j0;

    iget v1, v0, Lk0/j0;->l:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/j0;->l:I

    const/4 v3, 0x5

    if-lez v1, :cond_2

    .line 2
    sget v0, Lk0/nt;->c:I

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v3, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v0, v3, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, v0, Lk0/j0;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lk0/j0$d;->a:Lk0/j0;

    iput v3, v0, Lk0/j0;->l:I

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x2
        0x24
        0x12
        0x4
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x24
        0x1
        0x4
    .end array-data
.end method
