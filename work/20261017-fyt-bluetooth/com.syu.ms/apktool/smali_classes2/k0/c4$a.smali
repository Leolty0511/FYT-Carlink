.class public Lk0/c4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/c4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/c4;


# direct methods
.method public constructor <init>(Lk0/c4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/c4$a;->a:Lk0/c4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/c4$a;->a:Lk0/c4;

    iget-byte v1, v0, Lk0/c4;->f:B

    const/16 v2, 0x14

    if-le v1, v2, :cond_2

    .line 2
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 5
    :goto_1
    iget-object v0, p0, Lk0/c4$a;->a:Lk0/c4;

    invoke-static {v0}, Lk0/c4;->f3(Lk0/c4;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    .line 6
    iput-byte v1, v0, Lk0/c4;->f:B

    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        -0x3a
        0x2
        0x2
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x39
        0x1
        0x1
    .end array-data
.end method
