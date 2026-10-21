.class public Landroid/os/PooledStringWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mNext:I

.field private final mOut:Landroid/os/Parcel;

.field private final mPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStart:I


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    .line 5
    .line 6
    new-instance v0, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroid/os/PooledStringWriter;->mPool:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Landroid/os/PooledStringWriter;->mStart:I

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    .line 8
    .line 9
    iget v2, p0, Landroid/os/PooledStringWriter;->mStart:I

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    .line 15
    .line 16
    iget v2, p0, Landroid/os/PooledStringWriter;->mNext:I

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public getStringCount()I
    .locals 1

    iget-object v0, p0, Landroid/os/PooledStringWriter;->mPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/os/PooledStringWriter;->mPool:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Landroid/os/PooledStringWriter;->mPool:Ljava/util/HashMap;

    .line 22
    .line 23
    iget v1, p0, Landroid/os/PooledStringWriter;->mNext:I

    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    .line 33
    .line 34
    iget v1, p0, Landroid/os/PooledStringWriter;->mNext:I

    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    neg-int v1, v1

    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget p1, p0, Landroid/os/PooledStringWriter;->mNext:I

    .line 48
    .line 49
    add-int/lit8 p1, p1, 0x1

    .line 50
    .line 51
    iput p1, p0, Landroid/os/PooledStringWriter;->mNext:I

    .line 52
    .line 53
    :goto_0
    return-void
.end method
