.class public final Landroid/app/PictureInPictureArgs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/PictureInPictureArgs$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/PictureInPictureArgs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAspectRatio:Landroid/util/Rational;

.field private mSourceRectHint:Landroid/graphics/Rect;

.field private mSourceRectHintInsets:Landroid/graphics/Rect;

.field private mUserActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/PictureInPictureArgs$1;

    invoke-direct {v0}, Landroid/app/PictureInPictureArgs$1;-><init>()V

    sput-object v0, Landroid/app/PictureInPictureArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/PictureInPictureArgs;->setAspectRatio(F)V

    .line 6
    invoke-virtual {p0, p2}, Landroid/app/PictureInPictureArgs;->setActions(Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Landroid/util/Rational;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    .line 12
    const-class v1, Landroid/app/RemoteAction;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    .line 13
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iput-object p1, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    :cond_2
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/PictureInPictureArgs$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/app/PictureInPictureArgs;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Rational;",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    .line 17
    iput-object p2, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    .line 18
    iput-object p3, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;Landroid/app/PictureInPictureArgs$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/app/PictureInPictureArgs;-><init>(Landroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static convert(Landroid/app/PictureInPictureParams;)Landroid/app/PictureInPictureArgs;
    .locals 3

    .line 1
    new-instance v0, Landroid/app/PictureInPictureArgs;

    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->getAspectRatioRational()Landroid/util/Rational;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->getActions()Ljava/util/List;

    move-result-object v2

    .line 2
    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Landroid/app/PictureInPictureArgs;-><init>(Landroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public static convert(Landroid/app/PictureInPictureArgs;)Landroid/app/PictureInPictureParams;
    .locals 3

    .line 3
    new-instance v0, Landroid/app/PictureInPictureParams;

    invoke-virtual {p0}, Landroid/app/PictureInPictureArgs;->getAspectRatioRational()Landroid/util/Rational;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/PictureInPictureArgs;->getActions()Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Landroid/app/PictureInPictureArgs;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Landroid/app/PictureInPictureParams;-><init>(Landroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;)V

    return-object v0
.end method


# virtual methods
.method public copyOnlySet(Landroid/app/PictureInPictureArgs;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/app/PictureInPictureArgs;->hasSetAspectRatio()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p1, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    .line 8
    .line 9
    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/app/PictureInPictureArgs;->hasSetActions()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p1, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    .line 18
    .line 19
    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    .line 20
    .line 21
    :cond_1
    invoke-virtual {p1}, Landroid/app/PictureInPictureArgs;->hasSourceBoundsHint()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    new-instance v0, Landroid/graphics/Rect;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/app/PictureInPictureArgs;->getSourceRectHint()Landroid/graphics/Rect;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    return-object v0
.end method

.method public getAspectRatio()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/Rational;->floatValue()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getAspectRatioRational()Landroid/util/Rational;
    .locals 1

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    return-object v0
.end method

.method public getSourceRectHint()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSourceRectHintInsets()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHintInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hasSetActions()Z
    .locals 1

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSetAspectRatio()Z
    .locals 1

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSourceBoundsHint()Z
    .locals 1

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSourceBoundsHintInsets()Z
    .locals 1

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHintInsets:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setActions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    .line 7
    .line 8
    :cond_0
    if-eqz p1, :cond_1

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public setAspectRatio(F)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/util/Rational;

    const v1, 0x4e6e6b28    # 1.0E9f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    const v1, 0x3b9aca00

    invoke-direct {v0, p1, v1}, Landroid/util/Rational;-><init>(II)V

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    return-void
.end method

.method public setSourceRectHint(Landroid/graphics/Rect;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public setSourceRectHintInsets(Landroid/graphics/Rect;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHintInsets:Landroid/graphics/Rect;

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHintInsets:Landroid/graphics/Rect;

    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public truncateActions(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/PictureInPictureArgs;->hasSetActions()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-interface {v0, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/util/Rational;->getNumerator()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/util/Rational;->getDenominator()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    .line 31
    .line 32
    :goto_0
    iget-object p2, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    .line 33
    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    .line 40
    .line 41
    invoke-virtual {p1, p2, v1}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    .line 47
    .line 48
    :goto_1
    iget-object p2, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    .line 49
    .line 50
    if-eqz p2, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    .line 54
    .line 55
    iget-object p2, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    .line 56
    .line 57
    invoke-virtual {p2, p1, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    .line 63
    .line 64
    :goto_2
    return-void
.end method
