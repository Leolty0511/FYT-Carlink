.class public Landroid/app/PictureInPictureArgs$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PictureInPictureArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAspectRatio:Landroid/util/Rational;

.field private mSourceRectHint:Landroid/graphics/Rect;

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
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/app/PictureInPictureArgs;
    .locals 5

    new-instance v0, Landroid/app/PictureInPictureArgs;

    iget-object v1, p0, Landroid/app/PictureInPictureArgs$Builder;->mAspectRatio:Landroid/util/Rational;

    iget-object v2, p0, Landroid/app/PictureInPictureArgs$Builder;->mUserActions:Ljava/util/List;

    iget-object v3, p0, Landroid/app/PictureInPictureArgs$Builder;->mSourceRectHint:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/PictureInPictureArgs;-><init>(Landroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;Landroid/app/PictureInPictureArgs$1;)V

    return-object v0
.end method

.method public setActions(Ljava/util/List;)Landroid/app/PictureInPictureArgs$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)",
            "Landroid/app/PictureInPictureArgs$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/PictureInPictureArgs$Builder;->mUserActions:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Landroid/app/PictureInPictureArgs$Builder;->mUserActions:Ljava/util/List;

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
    iput-object v0, p0, Landroid/app/PictureInPictureArgs$Builder;->mUserActions:Ljava/util/List;

    .line 16
    .line 17
    :cond_1
    return-object p0
.end method

.method public setAspectRatio(Landroid/util/Rational;)Landroid/app/PictureInPictureArgs$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/PictureInPictureArgs$Builder;->mAspectRatio:Landroid/util/Rational;

    return-object p0
.end method

.method public setSourceRectHint(Landroid/graphics/Rect;)Landroid/app/PictureInPictureArgs$Builder;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroid/app/PictureInPictureArgs$Builder;->mSourceRectHint:Landroid/graphics/Rect;

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
    iput-object v0, p0, Landroid/app/PictureInPictureArgs$Builder;->mSourceRectHint:Landroid/graphics/Rect;

    .line 13
    .line 14
    :goto_0
    return-object p0
.end method
