.class public Ll0/g;
.super Ll0/a;
.source "SourceFile"


# static fields
.field public static c:I = 0x0

.field public static d:I = 0x0

.field public static e:I = 0xc8

.field public static f:[B

.field public static g:[B

.field public static h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xc9

    new-array v1, v0, [B

    .line 1
    sput-object v1, Ll0/g;->f:[B

    new-array v0, v0, [B

    .line 2
    sput-object v0, Ll0/g;->g:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ll0/a;-><init>()V

    return-void
.end method

.method public static g()I
    .locals 3

    .line 1
    sget v0, Ll0/g;->c:I

    sget v1, Ll0/g;->d:I

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v2, Ll0/g;->e:I

    add-int/2addr v1, v2

    :goto_0
    sub-int/2addr v1, v0

    return v1
.end method

.method public static h(I)B
    .locals 1

    .line 1
    sget v0, Ll0/g;->c:I

    add-int/2addr v0, p0

    .line 2
    sget p0, Ll0/g;->e:I

    rem-int/2addr v0, p0

    .line 3
    sget-object p0, Ll0/g;->f:[B

    aget-byte p0, p0, v0

    return p0
.end method

.method public static i()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput v0, Ll0/g;->c:I

    .line 2
    sput v0, Ll0/g;->d:I

    return-void
.end method


# virtual methods
.method public b([B)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Ll0/a;->b([B)V

    if-eqz p1, :cond_2

    .line 2
    array-length v0, p1

    if-lez v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 4
    sget-object v2, Ll0/g;->f:[B

    sget v3, Ll0/g;->d:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Ll0/g;->d:I

    aget-byte v5, p1, v1

    aput-byte v5, v2, v3

    .line 5
    sget v2, Ll0/g;->e:I

    if-lt v4, v2, :cond_0

    .line 6
    sput v0, Ll0/g;->d:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    sget-object v1, Lk0/nt;->d:Lk0/lt;

    array-length v2, p1

    invoke-virtual {v1, p1, v0, v2}, Lk0/lt;->U2([BII)V

    :cond_2
    return-void
.end method

.method public varargs f([I)V
    .locals 0

    return-void
.end method
