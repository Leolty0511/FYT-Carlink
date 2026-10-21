.class Landroid/os/health/HealthKeys$SortedIntArray;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/health/HealthKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortedIntArray"
.end annotation


# instance fields
.field mArray:[I

.field mCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-array p1, p1, [I

    .line 5
    .line 6
    iput-object p1, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mArray:[I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public addValue(I)V
    .locals 3

    iget-object v0, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mArray:[I

    iget v1, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mCount:I

    aput p1, v0, v1

    return-void
.end method

.method public getArray()[I
    .locals 4

    .line 1
    iget v0, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mCount:I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mArray:[I

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    if-ne v0, v2, :cond_0

    .line 7
    .line 8
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mArray:[I

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    new-array v2, v0, [I

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 18
    .line 19
    .line 20
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 21
    .line 22
    .line 23
    return-object v2
.end method
