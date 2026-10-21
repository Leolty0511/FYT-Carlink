.class public Li1/x$c;
.super Li1/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public h:[I

.field public final synthetic i:Li1/x;


# direct methods
.method public constructor <init>(Li1/x;)V
    .locals 2

    .line 1
    iput-object p1, p0, Li1/x$c;->i:Li1/x;

    invoke-direct {p0}, Li1/e;-><init>()V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0x55

    aput v1, p1, v0

    .line 2
    iput-object p1, p0, Li1/x$c;->h:[I

    return-void
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
    const v1, 0xff00

    and-int/2addr v1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, 0x8

    shr-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p1, p1, 0xff

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
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
    iget-object v0, p0, Li1/x$c;->h:[I

    return-object v0
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Li1/e;->d:Ljava/lang/Integer;

    .line 2
    invoke-super {p0}, Li1/e;->j()Z

    move-result v0

    return v0
.end method
