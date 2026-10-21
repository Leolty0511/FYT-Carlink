.class public Li1/m$a;
.super Li1/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final h:[I

.field public i:Ljava/lang/Integer;

.field public final synthetic j:Li1/m;


# direct methods
.method public constructor <init>(Li1/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/m$a;->j:Li1/m;

    invoke-direct {p0}, Li1/e;-><init>()V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 2
    fill-array-data p1, :array_0

    iput-object p1, p0, Li1/m$a;->h:[I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Li1/m$a;->i:Ljava/lang/Integer;

    return-void

    nop

    :array_0
    .array-data 4
        0x55
        0x55
    .end array-data
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Li1/m$a;->i:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Li1/m$a;->k()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Li1/m$a;->i:Ljava/lang/Integer;

    .line 3
    :cond_0
    iget-object v0, p0, Li1/m$a;->i:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit16 p1, p1, 0xff

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()V
    .locals 1

    .line 1
    invoke-super {p0}, Li1/e;->b()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Li1/m$a;->i:Ljava/lang/Integer;

    return-void
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

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f()[I
    .locals 1

    .line 1
    iget-object v0, p0, Li1/m$a;->h:[I

    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li1/e;->d:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Li1/e;->d:Ljava/lang/Integer;

    .line 3
    :cond_0
    invoke-super {p0}, Li1/e;->j()Z

    move-result v0

    return v0
.end method

.method public final k()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Li1/e;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2
    iget-object v2, p0, Li1/e;->c:[I

    aget v2, v2, v0

    xor-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 3
    sget-object v2, Li1/m;->k:[I

    aget v1, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method
