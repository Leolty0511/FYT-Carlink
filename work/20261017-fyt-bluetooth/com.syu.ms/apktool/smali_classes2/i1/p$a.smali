.class public Li1/p$a;
.super Li1/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final h:[I

.field public final synthetic i:Li1/p;


# direct methods
.method public constructor <init>(Li1/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/p$a;->i:Li1/p;

    invoke-direct {p0}, Li1/e;-><init>()V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 2
    fill-array-data p1, :array_0

    iput-object p1, p0, Li1/p$a;->h:[I

    return-void

    :array_0
    .array-data 4
        0x5a
        0xa5
    .end array-data
.end method


# virtual methods
.method public a(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Li1/p$a;->i:Li1/p;

    iget-object v0, v0, Li1/s;->a:Li1/e;

    check-cast v0, Li1/p$a;

    iget-object v0, v0, Li1/e;->c:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v2, p0, Li1/e;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v0, v2

    move v2, v1

    .line 2
    :goto_0
    iget-object v4, p0, Li1/e;->d:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_0

    .line 3
    iget-object v4, p0, Li1/e;->c:[I

    add-int/lit8 v2, v2, 0x1

    aget v4, v4, v2

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v0, v4

    goto :goto_0

    .line 4
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bite & 0xFF = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "===>(checksum -1) = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v0, v3

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Device"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v0, :cond_1

    move v1, v3

    :cond_1
    return v1
.end method

.method public c(I)Z
    .locals 2

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Li1/e;->d:Ljava/lang/Integer;

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "len  = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li1/e;->d:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Device"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Li1/e;->d:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()[I
    .locals 1

    .line 1
    iget-object v0, p0, Li1/p$a;->h:[I

    return-object v0
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
