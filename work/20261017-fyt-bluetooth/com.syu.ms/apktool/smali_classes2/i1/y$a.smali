.class public Li1/y$a;
.super Li1/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final h:[I

.field public final synthetic i:Li1/y;


# direct methods
.method public constructor <init>(Li1/y;)V
    .locals 2

    .line 1
    iput-object p1, p0, Li1/y$a;->i:Li1/y;

    invoke-direct {p0}, Li1/e;-><init>()V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0xaa

    aput v1, p1, v0

    .line 2
    iput-object p1, p0, Li1/y$a;->h:[I

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Li1/e;->b:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    move v2, v1

    .line 2
    :goto_0
    iget-object v3, p0, Li1/e;->d:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    .line 3
    iget-object v3, p0, Li1/e;->c:[I

    aget v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Li1/e;->c:[I

    iget-object v3, p0, Li1/e;->d:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, v4

    aget v2, v2, v3

    invoke-static {v2, p1}, Lo1/s0;->x(II)I

    move-result p1

    if-ne v0, p1, :cond_1

    move v1, v4

    :cond_1
    return v1
.end method

.method public c(I)Z
    .locals 0

    .line 1
    iget-object p1, p0, Li1/e;->d:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f()[I
    .locals 1

    .line 1
    iget-object v0, p0, Li1/y$a;->h:[I

    return-object v0
.end method

.method public j()Z
    .locals 1

    const/16 v0, 0x9

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Li1/e;->d:Ljava/lang/Integer;

    .line 2
    invoke-super {p0}, Li1/e;->j()Z

    move-result v0

    return v0
.end method
