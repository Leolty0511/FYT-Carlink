.class public Landroid/os/PooledStringReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mIn:Landroid/os/Parcel;

.field private final mPool:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/os/PooledStringReader;->mIn:Landroid/os/Parcel;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    new-array p1, p1, [Ljava/lang/String;

    .line 11
    .line 12
    iput-object p1, p0, Landroid/os/PooledStringReader;->mPool:[Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getStringCount()I
    .locals 1

    iget-object v0, p0, Landroid/os/PooledStringReader;->mPool:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public readString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/PooledStringReader;->mIn:Landroid/os/Parcel;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Landroid/os/PooledStringReader;->mPool:[Ljava/lang/String;

    .line 10
    .line 11
    aget-object v0, v1, v0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    neg-int v0, v0

    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    iget-object v1, p0, Landroid/os/PooledStringReader;->mIn:Landroid/os/Parcel;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Landroid/os/PooledStringReader;->mPool:[Ljava/lang/String;

    .line 24
    .line 25
    aput-object v1, v2, v0

    .line 26
    .line 27
    return-object v1
.end method
