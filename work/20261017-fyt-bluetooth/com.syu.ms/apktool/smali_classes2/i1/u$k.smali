.class public Li1/u$k;
.super Li1/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "k"
.end annotation


# instance fields
.field public h:[I

.field public final synthetic i:Li1/u;


# direct methods
.method public constructor <init>(Li1/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/u$k;->i:Li1/u;

    invoke-direct {p0}, Li1/e;-><init>()V

    const/4 p1, 0x3

    new-array p1, p1, [I

    .line 2
    fill-array-data p1, :array_0

    iput-object p1, p0, Li1/u$k;->h:[I

    return-void

    :array_0
    .array-data 4
        0xaa
        0xa1
        0x41
    .end array-data
.end method


# virtual methods
.method public a(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Li1/e;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    add-int/lit16 v0, v0, 0x18c

    and-int/lit16 v0, v0, 0xff

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

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    and-int/lit16 v0, v0, 0xff

    and-int/lit16 p1, p1, 0xff

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public c(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Li1/e;->d:Ljava/lang/Integer;

    if-nez v0, :cond_0

    and-int/lit16 p1, p1, 0xff

    add-int/lit8 p1, p1, -0x5

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Li1/e;->d:Ljava/lang/Integer;

    .line 3
    :cond_0
    iget-object p1, p0, Li1/e;->d:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f()[I
    .locals 1

    .line 1
    iget-object v0, p0, Li1/u$k;->h:[I

    return-object v0
.end method
