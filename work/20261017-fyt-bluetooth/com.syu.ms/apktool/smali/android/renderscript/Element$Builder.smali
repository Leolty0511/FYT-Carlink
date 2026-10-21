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
.field public mArraySizes:[I

.field public mCount:I

.field public mElementNames:[Ljava/lang/String;

.field public mElements:[Landroid/renderscript/Element;

.field public mRS:Landroid/renderscript/RenderScript;

.field public mSkipPadding:I


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Landroid/renderscript/Element$Builder;->mCount:I

    const/16 p1, 0x8

    new-array v0, p1, [Landroid/renderscript/Element;

    .line 4
    iput-object v0, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    new-array v0, p1, [Ljava/lang/String;

    .line 5
    iput-object v0, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    new-array p1, p1, [I

    .line 6
    iput-object p1, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

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

    invoke-static {v1, v2, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

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

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/Element$Builder;->mCount:I

    new-array v4, v0, [Landroid/renderscript/Element;

    .line 3
    new-array v5, v0, [Ljava/lang/String;

    .line 4
    new-array v6, v0, [I

    .line 5
    iget-object v1, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    const/4 v2, 0x0

    invoke-static {v1, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-object v1, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    iget v3, p0, Landroid/renderscript/Element$Builder;->mCount:I

    invoke-static {v1, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget-object v1, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

    iget v3, p0, Landroid/renderscript/Element$Builder;->mCount:I

    invoke-static {v1, v2, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    new-array v1, v0, [I

    :goto_0
    if-ge v2, v0, :cond_0

    .line 9
    aget-object v3, v4, v2

    iget-object v7, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v7}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1, v5, v6}, Landroid/renderscript/RenderScript;->nElementCreate2([I[Ljava/lang/String;[I)I

    move-result v2

    .line 11
    new-instance v0, Landroid/renderscript/Element;

    iget-object v3, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Element;-><init>(ILandroid/renderscript/RenderScript;[Landroid/renderscript/Element;[Ljava/lang/String;[I)V

    return-object v0
.end method
