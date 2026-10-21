.class public Li1/b$d;
.super Li1/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final h:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Li1/e;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    iput-object v0, p0, Li1/b$d;->h:[I

    return-void

    :array_0
    .array-data 4
        0x55
        0xaa
    .end array-data
.end method


# virtual methods
.method public a(I)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1
    :goto_0
    iget-object v3, p0, Li1/e;->d:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 2
    iget-object v3, p0, Li1/e;->c:[I

    aget v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    and-int/lit16 p1, p1, 0xff

    and-int/lit16 v1, v2, 0xff

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public b()V
    .locals 1

    .line 1
    invoke-super {p0}, Li1/e;->b()V

    const/4 v0, 0x7

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Li1/e;->d:Ljava/lang/Integer;

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

.method public f()[I
    .locals 1

    const/4 v0, 0x7

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Li1/e;->d:Ljava/lang/Integer;

    .line 2
    iget-object v0, p0, Li1/b$d;->h:[I

    return-object v0
.end method
