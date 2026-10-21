.class public Lo1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:[Ljava/lang/Object;

.field public static b:[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    sput-object v0, Lo1/b;->a:[Ljava/lang/Object;

    const/16 v0, 0x49

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    sput-object v0, Lo1/b;->b:[Ljava/lang/Object;

    return-void
.end method

.method public static a(I)I
    .locals 2

    const/4 v0, 0x4

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method

.method public static b(I)I
    .locals 0

    mul-int/lit8 p0, p0, 0x4

    .line 1
    invoke-static {p0}, Lo1/b;->a(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x4

    return p0
.end method
