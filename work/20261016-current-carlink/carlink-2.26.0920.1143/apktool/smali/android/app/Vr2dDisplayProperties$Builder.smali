.class public Landroid/app/Vr2dDisplayProperties$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Vr2dDisplayProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAddedFlags:I

.field private mDpi:I

.field private mHeight:I

.field private mRemovedFlags:I

.field private mWidth:I


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
    iput v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mAddedFlags:I

    .line 6
    .line 7
    iput v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mRemovedFlags:I

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    iput v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mWidth:I

    .line 11
    .line 12
    iput v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mHeight:I

    .line 13
    .line 14
    iput v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mDpi:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public addFlags(I)Landroid/app/Vr2dDisplayProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mAddedFlags:I

    .line 2
    .line 3
    or-int/2addr v0, p1

    .line 4
    iput v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mAddedFlags:I

    .line 5
    .line 6
    iget v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mRemovedFlags:I

    .line 7
    .line 8
    not-int p1, p1

    .line 9
    and-int/2addr p1, v0

    .line 10
    iput p1, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mRemovedFlags:I

    .line 11
    .line 12
    return-object p0
.end method

.method public build()Landroid/app/Vr2dDisplayProperties;
    .locals 8

    new-instance v7, Landroid/app/Vr2dDisplayProperties;

    iget v1, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mWidth:I

    iget v2, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mHeight:I

    iget v3, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mDpi:I

    iget v4, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mAddedFlags:I

    iget v5, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mRemovedFlags:I

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/app/Vr2dDisplayProperties;-><init>(IIIIILandroid/app/Vr2dDisplayProperties$1;)V

    return-object v7
.end method

.method public removeFlags(I)Landroid/app/Vr2dDisplayProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mRemovedFlags:I

    .line 2
    .line 3
    or-int/2addr v0, p1

    .line 4
    iput v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mRemovedFlags:I

    .line 5
    .line 6
    iget v0, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mAddedFlags:I

    .line 7
    .line 8
    not-int p1, p1

    .line 9
    and-int/2addr p1, v0

    .line 10
    iput p1, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mAddedFlags:I

    .line 11
    .line 12
    return-object p0
.end method

.method public setDimensions(III)Landroid/app/Vr2dDisplayProperties$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mWidth:I

    .line 2
    .line 3
    iput p2, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mHeight:I

    .line 4
    .line 5
    iput p3, p0, Landroid/app/Vr2dDisplayProperties$Builder;->mDpi:I

    .line 6
    .line 7
    return-object p0
.end method

.method public setEnabled(Z)Landroid/app/Vr2dDisplayProperties$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Vr2dDisplayProperties$Builder;->addFlags(I)Landroid/app/Vr2dDisplayProperties$Builder;

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Vr2dDisplayProperties$Builder;->removeFlags(I)Landroid/app/Vr2dDisplayProperties$Builder;

    .line 9
    .line 10
    .line 11
    :goto_0
    return-object p0
.end method
