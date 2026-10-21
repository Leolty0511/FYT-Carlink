.class public Li1/h;
.super Li1/e;
.source "SourceFile"


# instance fields
.field public final h:[I

.field public i:Ljava/lang/Integer;

.field public j:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Li1/e;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    iput-object v0, p0, Li1/h;->h:[I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Li1/h;->i:Ljava/lang/Integer;

    iput-object v0, p0, Li1/h;->j:Ljava/lang/Integer;

    return-void

    nop

    :array_0
    .array-data 4
        0x88
        0x55
    .end array-data
.end method


# virtual methods
.method public a(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Li1/h;->i:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Li1/h;->j:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    xor-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    iget-object v3, p0, Li1/e;->d:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3
    iget-object v3, p0, Li1/e;->c:[I

    aget v3, v3, v2

    xor-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    and-int/lit16 p1, p1, 0xff

    and-int/lit16 v0, v0, 0xff

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Li1/h;->i:Ljava/lang/Integer;

    .line 2
    iput-object v0, p0, Li1/h;->j:Ljava/lang/Integer;

    .line 3
    invoke-super {p0}, Li1/e;->b()V

    return-void
.end method

.method public c(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Li1/e;->d:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Li1/h;->i:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Li1/h;->i:Ljava/lang/Integer;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Li1/h;->j:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Li1/h;->j:Ljava/lang/Integer;

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Li1/h;->i:Ljava/lang/Integer;

    if-eqz p1, :cond_2

    iget-object v0, p0, Li1/h;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    shl-int/lit8 p1, p1, 0x8

    const v0, 0xff00

    and-int/2addr p1, v0

    iget-object v0, p0, Li1/h;->j:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Li1/e;->d:Ljava/lang/Integer;

    .line 8
    :cond_2
    iget-object p1, p0, Li1/e;->d:Ljava/lang/Integer;

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public f()[I
    .locals 1

    .line 1
    iget-object v0, p0, Li1/h;->h:[I

    return-object v0
.end method
