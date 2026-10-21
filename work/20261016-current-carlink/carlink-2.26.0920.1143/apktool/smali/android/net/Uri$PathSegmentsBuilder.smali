.class Landroid/net/Uri$PathSegmentsBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathSegmentsBuilder"
.end annotation


# instance fields
.field segments:[Ljava/lang/String;

.field size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/net/Uri$PathSegmentsBuilder;->size:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    new-array v0, v0, [Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget v1, p0, Landroid/net/Uri$PathSegmentsBuilder;->size:I

    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    array-length v2, v0

    .line 16
    if-ne v1, v2, :cond_1

    .line 17
    .line 18
    array-length v1, v0

    .line 19
    mul-int/lit8 v1, v1, 0x2

    .line 20
    .line 21
    new-array v1, v1, [Ljava/lang/String;

    .line 22
    .line 23
    array-length v2, v0

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    .line 29
    .line 30
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    .line 31
    .line 32
    iget v1, p0, Landroid/net/Uri$PathSegmentsBuilder;->size:I

    .line 33
    .line 34
    add-int/lit8 v2, v1, 0x1

    .line 35
    .line 36
    iput v2, p0, Landroid/net/Uri$PathSegmentsBuilder;->size:I

    .line 37
    .line 38
    aput-object p1, v0, v1

    .line 39
    .line 40
    return-void
.end method

.method public build()Landroid/net/Uri$PathSegments;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Landroid/net/Uri$PathSegments;->EMPTY:Landroid/net/Uri$PathSegments;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :try_start_0
    new-instance v1, Landroid/net/Uri$PathSegments;

    .line 10
    .line 11
    iget-object v2, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    .line 12
    .line 13
    iget v3, p0, Landroid/net/Uri$PathSegmentsBuilder;->size:I

    .line 14
    .line 15
    invoke-direct {v1, v2, v3}, Landroid/net/Uri$PathSegments;-><init>([Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    .line 19
    .line 20
    return-object v1

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    iput-object v0, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    .line 23
    .line 24
    throw v1
.end method
