.class public Ln1/b;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln1/b$a;
    }
.end annotation


# static fields
.field public static m:Z = false


# instance fields
.field public a:Landroid/view/WindowManager$LayoutParams;

.field public b:I

.field public c:I

.field public final d:I

.field public e:I

.field public final f:I

.field public g:[Ljava/lang/String;

.field public h:[I

.field public i:Landroid/graphics/Paint;

.field public j:I

.field public k:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public l:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Ln1/b;->a:Landroid/view/WindowManager$LayoutParams;

    const/16 p1, 0x10

    .line 3
    iput p1, p0, Ln1/b;->d:I

    const/16 v0, 0x19

    .line 4
    iput v0, p0, Ln1/b;->e:I

    const/16 v0, 0x14

    .line 5
    iput v0, p0, Ln1/b;->f:I

    new-array v0, p1, [Ljava/lang/String;

    .line 6
    iput-object v0, p0, Ln1/b;->g:[Ljava/lang/String;

    new-array p1, p1, [I

    .line 7
    iput-object p1, p0, Ln1/b;->h:[I

    .line 8
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ln1/b;->i:Landroid/graphics/Paint;

    .line 9
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Ln1/b;->k:Landroid/util/SparseArray;

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 10
    fill-array-data p1, :array_0

    iput-object p1, p0, Ln1/b;->l:[I

    .line 11
    invoke-virtual {p0}, Ln1/b;->init()V

    return-void

    :array_0
    .array-data 4
        -0x10000
        -0x1
        -0xff0100
        -0x100
    .end array-data
.end method

.method public static synthetic h(Ln1/b;)I
    .locals 0

    .line 1
    iget p0, p0, Ln1/b;->b:I

    return p0
.end method

.method public static synthetic i(Ln1/b;I)I
    .locals 0

    .line 1
    iput p1, p0, Ln1/b;->b:I

    return p1
.end method

.method public static synthetic j(Ln1/b;)I
    .locals 2

    .line 1
    iget v0, p0, Ln1/b;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ln1/b;->b:I

    return v0
.end method

.method public static synthetic k(Ln1/b;)I
    .locals 0

    .line 1
    iget p0, p0, Ln1/b;->c:I

    return p0
.end method

.method public static synthetic l(Ln1/b;I)I
    .locals 0

    .line 1
    iput p1, p0, Ln1/b;->c:I

    return p1
.end method

.method public static synthetic m(Ln1/b;)I
    .locals 2

    .line 1
    iget v0, p0, Ln1/b;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ln1/b;->c:I

    return v0
.end method

.method public static synthetic n(Ln1/b;)I
    .locals 0

    .line 1
    iget p0, p0, Ln1/b;->j:I

    return p0
.end method

.method public static synthetic o(Ln1/b;)I
    .locals 2

    .line 1
    iget v0, p0, Ln1/b;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ln1/b;->j:I

    return v0
.end method

.method public static synthetic p(Ln1/b;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ln1/b;->g:[Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic q(Ln1/b;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Ln1/b;->h:[I

    return-object p0
.end method


# virtual methods
.method public getFlags()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln1/b;->k:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 1
    iget-object v0, p0, Ln1/b;->a:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 2
    invoke-static {v0, v0}, La/i;->e(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Ln1/b;->a:Landroid/view/WindowManager$LayoutParams;

    .line 3
    :cond_0
    iget-object v0, p0, Ln1/b;->a:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public final init()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln1/b;->i:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2
    iget-object v0, p0, Ln1/b;->i:Landroid/graphics/Paint;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3
    iget-object v0, p0, Ln1/b;->i:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    iget v0, p0, Ln1/b;->c:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    .line 3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x44400000    # 768.0f

    div-float/2addr v0, v1

    .line 5
    :cond_1
    iget-object v1, p0, Ln1/b;->i:Landroid/graphics/Paint;

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float/2addr v3, v0

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v1, 0x5

    .line 6
    iget v3, p0, Ln1/b;->c:I

    .line 7
    iget v4, p0, Ln1/b;->b:I

    sub-int/2addr v4, v3

    add-int/2addr v4, v2

    if-gez v4, :cond_2

    add-int/lit8 v4, v4, 0x10

    :cond_2
    add-int v5, v4, v3

    const/4 v6, 0x0

    const/16 v7, 0x10

    if-le v5, v7, :cond_4

    rsub-int/lit8 v5, v4, 0x10

    sub-int/2addr v3, v5

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_3

    add-int v8, v4, v7

    .line 8
    iget-object v9, p0, Ln1/b;->i:Landroid/graphics/Paint;

    iget-object v10, p0, Ln1/b;->h:[I

    aget v10, v10, v8

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    iget-object v9, p0, Ln1/b;->g:[Ljava/lang/String;

    aget-object v8, v9, v8

    int-to-float v9, v1

    add-int/lit8 v7, v7, 0x1

    iget v10, p0, Ln1/b;->e:I

    mul-int/2addr v10, v7

    int-to-float v10, v10

    mul-float/2addr v10, v0

    iget-object v11, p0, Ln1/b;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    :goto_1
    if-ge v6, v3, :cond_5

    .line 10
    iget-object v4, p0, Ln1/b;->i:Landroid/graphics/Paint;

    iget-object v7, p0, Ln1/b;->h:[I

    aget v7, v7, v6

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    iget-object v4, p0, Ln1/b;->g:[Ljava/lang/String;

    aget-object v4, v4, v6

    int-to-float v7, v1

    add-int v8, v5, v6

    add-int/2addr v8, v2

    iget v9, p0, Ln1/b;->e:I

    mul-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v0

    iget-object v9, p0, Ln1/b;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-ge v6, v3, :cond_5

    add-int v5, v4, v6

    .line 12
    iget-object v7, p0, Ln1/b;->i:Landroid/graphics/Paint;

    iget-object v8, p0, Ln1/b;->h:[I

    aget v8, v8, v5

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    iget-object v7, p0, Ln1/b;->g:[Ljava/lang/String;

    aget-object v5, v7, v5

    int-to-float v7, v1

    add-int/lit8 v6, v6, 0x1

    iget v8, p0, Ln1/b;->e:I

    mul-int/2addr v8, v6

    int-to-float v8, v8

    mul-float/2addr v8, v0

    iget-object v9, p0, Ln1/b;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 14
    :cond_5
    invoke-static {}, Lg/e;->a()I

    move-result v0

    if-ne v0, v2, :cond_6

    const v0, 0x100ff00

    .line 15
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_6
    return-void
.end method

.method public r()Z
    .locals 1

    .line 1
    sget-boolean v0, Ln1/b;->m:Z

    return v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lutil/log/LogType;->l:Lutil/log/LogType;

    invoke-virtual {p0, v0, p1}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    return-void
.end method

.method public setDbg(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Ln1/b;->m:Z

    return-void
.end method

.method public t(Lutil/log/LogType;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Ln1/b;->m:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    .line 3
    iget-object v0, p0, Ln1/b;->k:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ln1/b;->k:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object p1

    new-instance v0, Ln1/b$a;

    invoke-direct {v0, p0, p2}, Ln1/b$a;-><init>(Ln1/b;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lutil/log/LogType;->m:Lutil/log/LogType;

    invoke-virtual {p0, v0, p1}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lutil/log/LogType;->n:Lutil/log/LogType;

    invoke-virtual {p0, v0, p1}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lutil/log/LogType;->o:Lutil/log/LogType;

    invoke-virtual {p0, v0, p1}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    return-void
.end method

.method public x(Ljava/lang/String;[BII)V
    .locals 4

    .line 1
    sget-boolean v0, Ln1/b;->m:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 2
    array-length v0, p2

    sub-int/2addr v0, p3

    if-ge v0, p4, :cond_0

    .line 3
    array-length p4, p2

    sub-int/2addr p4, p3

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " * "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_2

    add-int v1, p3, v0

    .line 5
    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object p2

    new-instance p3, Ln1/b$a;

    invoke-direct {p3, p0, p1}, Ln1/b$a;-><init>(Ln1/b;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public y(Ljava/lang/String;[III)V
    .locals 4

    .line 1
    sget-boolean v0, Ln1/b;->m:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 2
    array-length v0, p2

    sub-int/2addr v0, p3

    if-ge v0, p4, :cond_0

    .line 3
    array-length p4, p2

    sub-int/2addr p4, p3

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " * "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_2

    add-int v1, p3, v0

    .line 5
    aget v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object p2

    new-instance p3, Ln1/b$a;

    invoke-direct {p3, p0, p1}, Ln1/b$a;-><init>(Ln1/b;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public z(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Ln1/b;->k:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Ln1/b;->k:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p2

    if-ltz p2, :cond_1

    .line 3
    iget-object p2, p0, Ln1/b;->k:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Ln1/b;->k:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-gtz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    :try_start_0
    invoke-static {}, La/f;->y()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 6
    sput-boolean p1, Ln1/b;->m:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method
