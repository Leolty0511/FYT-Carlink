.class public Lk0/mg$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/mg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/mg;


# direct methods
.method public constructor <init>(Lk0/mg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/mg$d;->a:Lk0/mg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/mg$d;->a:Lk0/mg;

    iget-byte v1, v0, Lk0/mg;->m:B

    add-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/mg;->m:B

    const/4 v0, 0x4

    if-lez v1, :cond_0

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    .line 3
    :cond_0
    sget v1, Lk0/nt;->c:I

    const/16 v2, 0x68

    if-ne v1, v2, :cond_1

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x69

    if-ne v1, v2, :cond_2

    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    .line 6
    :cond_2
    :goto_0
    iget-object v0, p0, Lk0/mg$d;->a:Lk0/mg;

    invoke-static {v0}, Lk0/mg;->h3(Lk0/mg;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lk0/mg$d;->a:Lk0/mg;

    const/4 v1, 0x5

    iput-byte v1, v0, Lk0/mg;->m:B

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x81
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x82
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x82
        0x1
        0x1
    .end array-data
.end method
