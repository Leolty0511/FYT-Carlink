.class public Landroid/app/AppOpsManagerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final OP_POST_AUTORUN:I = 0x46


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addItem([II)[I
    .locals 4

    .line 1
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 2
    array-length v3, p0

    invoke-static {p0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    add-int/lit8 v0, v0, -0x1

    .line 3
    aput p1, v1, v0

    return-object v1
.end method

.method public static addItem([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 7
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 8
    array-length v3, p0

    invoke-static {p0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, -0x1

    .line 9
    aput-object p1, v1, v0

    return-object v1
.end method

.method public static addItem([ZZ)[Z
    .locals 4

    .line 4
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    .line 5
    array-length v3, p0

    invoke-static {p0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    add-int/lit8 v0, v0, -0x1

    .line 6
    aput-boolean p1, v1, v0

    return-object v1
.end method
