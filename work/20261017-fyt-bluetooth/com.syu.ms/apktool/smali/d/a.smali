.class public Ld/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Ld/a;


# instance fields
.field public a:[B

.field public b:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ld/a;

    invoke-direct {v0}, Ld/a;-><init>()V

    sput-object v0, Ld/a;->c:Ld/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ld/a;->a:[B

    const-string v0, "G23P32F32_Ver"

    const-string v1, "S32P32F32_V1"

    const-string v2, "S32P32F32_V2"

    const-string v3, "G13P32F32_Ver"

    const-string v4, "AT32P32F32_V2"

    .line 3
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ld/a;->b:[Ljava/lang/String;

    return-void
.end method

.method public static c()Ld/a;
    .locals 1

    .line 1
    sget-object v0, Ld/a;->c:Ld/a;

    return-object v0
.end method


# virtual methods
.method public a([BLjava/lang/String;)I
    .locals 6

    .line 1
    array-length v0, p1

    const/16 v1, 0x1000

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-gt v3, v0, :cond_2

    add-int/lit16 v3, v3, 0x280

    add-int/lit8 v4, v0, -0x40

    if-lt v3, v4, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v4, Ljava/lang/String;

    const/16 v5, 0x40

    invoke-direct {v4, p1, v3, v5}, Ljava/lang/String;-><init>([BII)V

    .line 3
    invoke-virtual {v4, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    const/high16 v3, 0x10000

    mul-int/2addr v3, v2

    add-int/2addr v3, v1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Ld/a;->b:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lq1/a;->b(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Ld/a;->a:[B

    .line 2
    sget-object p1, Lu0/b;->F1:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ld/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Ld/a;->a:[B

    invoke-virtual {p0, v0, p1}, Ld/a;->a([BLjava/lang/String;)I

    move-result p1

    if-gez p1, :cond_1

    return-void

    :cond_1
    const/high16 v0, 0x10000

    mul-int/2addr v0, p1

    add-int/lit16 v0, v0, 0x1000

    .line 5
    iget-object v1, p0, Ld/a;->a:[B

    mul-int/lit8 p1, p1, 0x4

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, v1, v2

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, v1, v3

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, v1, v4

    add-int/lit8 p1, p1, 0x0

    aget-byte p1, v1, p1

    invoke-static {v2, v3, v4, p1}, Lo1/s0;->z(IIII)I

    move-result p1

    add-int/2addr p1, v0

    .line 6
    iget-object v1, p0, Ld/a;->a:[B

    invoke-static {v1, v0, p1}, Lu0/f;->G([BII)V

    return-void
.end method
