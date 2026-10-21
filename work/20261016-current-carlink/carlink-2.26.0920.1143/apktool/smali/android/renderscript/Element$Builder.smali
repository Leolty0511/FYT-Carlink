.class public Landroid/renderscript/Element$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mArraySizes:[I

.field mCount:I

.field mElementNames:[Ljava/lang/String;

.field mElements:[Landroid/renderscript/Element;

.field mRS:Landroid/renderscript/RenderScript;

.field mSkipPadding:I


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Landroid/renderscript/Element$Builder;->mCount:I

    .line 8
    .line 9
    const/16 p1, 0x8

    .line 10
    .line 11
    new-array v0, p1, [Landroid/renderscript/Element;

    .line 12
    .line 13
    iput-object v0, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    .line 14
    .line 15
    new-array v0, p1, [Ljava/lang/String;

    .line 16
    .line 17
    iput-object v0, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    .line 18
    .line 19
    new-array p1, p1, [I

    .line 20
    .line 21
    iput-object p1, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;I)Landroid/renderscript/Element$Builder;

    move-result-object p1

    return-object p1
.end method

.method public add(Landroid/renderscript/Element;Ljava/lang/String;I)Landroid/renderscript/Element$Builder;
    .locals 7

    const/4 v0, 0x1

    if-lt p3, v0, :cond_3

    .line 1
    iget v1, p0, Landroid/renderscript/Element$Builder;->mSkipPadding:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "#padding_"

    .line 2
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iput v2, p0, Landroid/renderscript/Element$Builder;->mSkipPadding:I

    return-object p0

    .line 4
    :cond_0
    iget v1, p1, Landroid/renderscript/Element;->mVectorSize:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 5
    iput v0, p0, Landroid/renderscript/Element$Builder;->mSkipPadding:I

    goto :goto_0

    .line 6
    :cond_1
    iput v2, p0, Landroid/renderscript/Element$Builder;->mSkipPadding:I

    .line 7
    :goto_0
    iget v1, p0, Landroid/renderscript/Element$Builder;->mCount:I

    iget-object v3, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    array-length v4, v3

    if-ne v1, v4, :cond_2

    add-int/lit8 v4, v1, 0x8

    .line 8
    new-array v4, v4, [Landroid/renderscript/Element;

    add-int/lit8 v5, v1, 0x8

    .line 9
    new-array v5, v5, [Ljava/lang/String;

    add-int/lit8 v6, v1, 0x8

    .line 10
    new-array v6, v6, [I

    .line 11
    invoke-static {v3, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget-object v1, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    iget v3, p0, Landroid/renderscript/Element$Builder;->mCount:I

    invoke-static {v1, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iget-object v1, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

    iget v3, p0, Landroid/renderscript/Element$Builder;->mCount:I

    invoke-static {v1, v2, v6, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 14
    iput-object v4, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    .line 15
    iput-object v5, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    .line 16
    iput-object v6, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

    .line 17
    :cond_2
    iget-object v1, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    iget v2, p0, Landroid/renderscript/Element$Builder;->mCount:I

    aput-object p1, v1, v2

    .line 18
    iget-object p1, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    aput-object p2, p1, v2

    .line 19
    iget-object p1, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

    aput p3, p1, v2

    add-int/2addr v2, v0

    .line 20
    iput v2, p0, Landroid/renderscript/Element$Builder;->mCount:I

    return-object p0

    .line 21
    :cond_3
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string p2, "Array size cannot be less than 1."

    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public create()Landroid/renderscript/Element;
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroid/renderscript/Element$Builder;->mCount:I

    .line 7
    .line 8
    new-array v5, v0, [Landroid/renderscript/Element;

    .line 9
    .line 10
    new-array v6, v0, [Ljava/lang/String;

    .line 11
    .line 12
    new-array v7, v0, [I

    .line 13
    .line 14
    iget-object v1, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {v1, v2, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    .line 21
    .line 22
    iget v3, p0, Landroid/renderscript/Element$Builder;->mCount:I

    .line 23
    .line 24
    invoke-static {v1, v2, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

    .line 28
    .line 29
    iget v3, p0, Landroid/renderscript/Element$Builder;->mCount:I

    .line 30
    .line 31
    invoke-static {v1, v2, v7, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 32
    .line 33
    .line 34
    new-array v1, v0, [J

    .line 35
    .line 36
    :goto_0
    if-ge v2, v0, :cond_0

    .line 37
    .line 38
    aget-object v3, v5, v2

    .line 39
    .line 40
    iget-object v4, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 43
    .line 44
    .line 45
    move-result-wide v3

    .line 46
    aput-wide v3, v1, v2

    .line 47
    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 52
    .line 53
    invoke-virtual {v0, v1, v6, v7}, Landroid/renderscript/RenderScript;->nElementCreate2([J[Ljava/lang/String;[I)J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    new-instance v0, Landroid/renderscript/Element;

    .line 58
    .line 59
    iget-object v4, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 60
    .line 61
    move-object v1, v0

    .line 62
    invoke-direct/range {v1 .. v7}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;[Landroid/renderscript/Element;[Ljava/lang/String;[I)V

    .line 63
    .line 64
    .line 65
    return-object v0
.end method
