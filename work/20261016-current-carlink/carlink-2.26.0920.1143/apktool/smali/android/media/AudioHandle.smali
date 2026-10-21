.class Landroid/media/AudioHandle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/media/AudioHandle;->mId:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    instance-of v1, p1, Landroid/media/AudioHandle;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    check-cast p1, Landroid/media/AudioHandle;

    .line 10
    .line 11
    iget v1, p0, Landroid/media/AudioHandle;->mId:I

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/media/AudioHandle;->id()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-ne v1, p1, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    :cond_1
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroid/media/AudioHandle;->mId:I

    return v0
.end method

.method public id()I
    .locals 1

    iget v0, p0, Landroid/media/AudioHandle;->mId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/media/AudioHandle;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
