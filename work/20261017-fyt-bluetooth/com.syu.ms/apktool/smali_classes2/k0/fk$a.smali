.class public Lk0/fk$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/fk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/fk;


# direct methods
.method public constructor <init>(Lk0/fk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/fk$a;->a:Lk0/fk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/fk$a;->a:Lk0/fk;

    iget-byte v1, v0, Lk0/fk;->j:B

    const/4 v2, 0x1

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/fk;->j:B

    const/16 v3, 0x14

    if-ne v1, v3, :cond_5

    .line 2
    iput-boolean v2, v0, Lk0/fk;->i:Z

    .line 3
    iget v0, v0, Lk0/fk;->c:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lk0/nt;->a:I

    const v1, 0xfb01bb

    if-eq v0, v1, :cond_1

    const v1, 0xfc01bb

    if-ne v0, v1, :cond_4

    .line 5
    :cond_1
    sget-object v0, Lk0/nt;->g:[I

    const/16 v1, 0x7f

    aget v2, v0, v1

    const/4 v3, 0x2

    const/4 v4, 0x7

    if-ne v2, v3, :cond_2

    new-array v0, v4, [I

    .line 6
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 7
    :cond_2
    aget v0, v0, v1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    new-array v0, v4, [I

    .line 8
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array v0, v4, [I

    .line 9
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    .line 10
    :cond_4
    :goto_0
    iget-object v0, p0, Lk0/fk$a;->a:Lk0/fk;

    invoke-static {v0}, Lk0/fk;->e3(Lk0/fk;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lk0/fk$a;->a:Lk0/fk;

    const/4 v1, 0x0

    iput-byte v1, v0, Lk0/fk;->j:B

    :cond_5
    return-void

    :array_0
    .array-data 4
        0xe3
        0x4
        0x6f
        0x37
        0x0
        0xff
        0xff
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x4
        0x6f
        0x37
        0x1
        0xff
        0xff
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x4
        0x6f
        0x37
        0x2
        0xff
        0xff
    .end array-data
.end method
