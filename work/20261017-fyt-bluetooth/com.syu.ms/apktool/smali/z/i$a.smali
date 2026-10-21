.class public Lz/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:[B

.field public b:Z

.field public final c:[B

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public final synthetic i:Lz/i;


# direct methods
.method public constructor <init>(Lz/i;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lz/i$a;->i:Lz/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x8

    new-array p1, p1, [B

    .line 2
    fill-array-data p1, :array_0

    iput-object p1, p0, Lz/i$a;->a:[B

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lz/i$a;->b:Z

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 4
    iput-object v0, p0, Lz/i$a;->c:[B

    .line 5
    iput p1, p0, Lz/i$a;->d:I

    .line 6
    iput p1, p0, Lz/i$a;->h:I

    return-void

    :array_0
    .array-data 1
        -0x23t
        0x55t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        -0x34t
    .end array-data
.end method


# virtual methods
.method public b([B)V
    .locals 14

    .line 1
    iget-boolean v0, p0, Lz/i$a;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lz/i$a;->h:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lz/i$a;->h:I

    const/16 v1, 0x2800

    const/4 v2, 0x1

    if-le v0, v1, :cond_1

    .line 3
    iput-boolean v2, p0, Lz/i$a;->b:Z

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lz/i$a;->c:[B

    iget v1, p0, Lz/i$a;->d:I

    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {p1, v4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget v0, p0, Lz/i$a;->d:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lz/i$a;->d:I

    const/16 p1, 0x8

    sub-int/2addr v0, p1

    .line 6
    iput v0, p0, Lz/i$a;->g:I

    if-gez v0, :cond_2

    return-void

    .line 7
    :cond_2
    iput v4, p0, Lz/i$a;->e:I

    :goto_0
    iget v0, p0, Lz/i$a;->e:I

    iget v1, p0, Lz/i$a;->g:I

    if-gt v0, v1, :cond_6

    .line 8
    iput v4, p0, Lz/i$a;->f:I

    :goto_1
    iget v0, p0, Lz/i$a;->f:I

    if-ge v0, p1, :cond_4

    .line 9
    iget-object v1, p0, Lz/i$a;->c:[B

    iget v3, p0, Lz/i$a;->e:I

    add-int/2addr v3, v0

    aget-byte v1, v1, v3

    iget-object v3, p0, Lz/i$a;->a:[B

    aget-byte v3, v3, v0

    if-eq v1, v3, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 10
    iput v0, p0, Lz/i$a;->f:I

    goto :goto_1

    :cond_4
    :goto_2
    if-ne v0, p1, :cond_5

    .line 11
    iput-boolean v2, p0, Lz/i$a;->b:Z

    .line 12
    invoke-static {}, La/f;->k()Ln1/c;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f040008

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    const/16 v10, 0x32

    const/4 v11, -0x1

    const/16 v12, 0x3c

    const v13, 0x7fffff00

    const-string v7, "mcu need update"

    invoke-virtual/range {v5 .. v13}, Ln1/c;->l(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Paint$Align;IIII)V

    const-string/jumbo p1, "sys.fyt.mcu_need_update"

    const-string v0, "1"

    .line 13
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {v2}, Lu0/d;->S1(I)V

    return-void

    .line 15
    :cond_5
    iget v0, p0, Lz/i$a;->e:I

    add-int/2addr v0, v2

    iput v0, p0, Lz/i$a;->e:I

    goto :goto_0

    .line 16
    :cond_6
    iget-object p1, p0, Lz/i$a;->c:[B

    add-int/2addr v1, v2

    const/4 v0, 0x7

    invoke-static {p1, v1, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    iput v0, p0, Lz/i$a;->d:I

    return-void
.end method
