.class final Landroid/app/BackStackState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/BackStackState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mBreadCrumbShortTitleRes:I

.field public final mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field public final mBreadCrumbTitleRes:I

.field public final mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field public final mIndex:I

.field public final mName:Ljava/lang/String;

.field public final mOps:[I

.field public final mTransition:I

.field public final mTransitionStyle:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/app/BackStackState$1;

    invoke-direct {v0}, Landroid/app/BackStackState$1;-><init>()V

    sput-object v0, Landroid/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/app/FragmentManagerImpl;Landroid/app/BackStackRecord;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p2, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    iget-object v2, p1, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 4
    :cond_0
    iget-object p1, p1, Landroid/app/BackStackRecord$Op;->next:Landroid/app/BackStackRecord$Op;

    goto :goto_0

    .line 5
    :cond_1
    iget p1, p2, Landroid/app/BackStackRecord;->mNumOp:I

    mul-int/lit8 p1, p1, 0x7

    add-int/2addr p1, v1

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/app/BackStackState;->mOps:[I

    .line 6
    iget-boolean p1, p2, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz p1, :cond_6

    .line 7
    iget-object p1, p2, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    move v1, v0

    :goto_1
    if-eqz p1, :cond_5

    .line 8
    iget-object v2, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v3, v1, 0x1

    iget v4, p1, Landroid/app/BackStackRecord$Op;->cmd:I

    aput v4, v2, v1

    add-int/lit8 v1, v3, 0x1

    .line 9
    iget-object v4, p1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    if-eqz v4, :cond_2

    iget v4, v4, Landroid/app/Fragment;->mIndex:I

    goto :goto_2

    :cond_2
    const/4 v4, -0x1

    :goto_2
    aput v4, v2, v3

    add-int/lit8 v3, v1, 0x1

    .line 10
    iget v4, p1, Landroid/app/BackStackRecord$Op;->enterAnim:I

    aput v4, v2, v1

    add-int/lit8 v1, v3, 0x1

    .line 11
    iget v4, p1, Landroid/app/BackStackRecord$Op;->exitAnim:I

    aput v4, v2, v3

    add-int/lit8 v3, v1, 0x1

    .line 12
    iget v4, p1, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    aput v4, v2, v1

    add-int/lit8 v1, v3, 0x1

    .line 13
    iget v4, p1, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    aput v4, v2, v3

    .line 14
    iget-object v3, p1, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 15
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 16
    iget-object v3, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v1, 0x1

    aput v2, v3, v1

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_3

    .line 17
    iget-object v3, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v4, 0x1

    iget-object v6, p1, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Fragment;

    iget v6, v6, Landroid/app/Fragment;->mIndex:I

    aput v6, v3, v4

    add-int/lit8 v1, v1, 0x1

    move v4, v5

    goto :goto_3

    :cond_3
    move v1, v4

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v1, 0x1

    .line 18
    aput v0, v2, v1

    move v1, v3

    .line 19
    :goto_4
    iget-object p1, p1, Landroid/app/BackStackRecord$Op;->next:Landroid/app/BackStackRecord$Op;

    goto :goto_1

    .line 20
    :cond_5
    iget p1, p2, Landroid/app/BackStackRecord;->mTransition:I

    iput p1, p0, Landroid/app/BackStackState;->mTransition:I

    .line 21
    iget p1, p2, Landroid/app/BackStackRecord;->mTransitionStyle:I

    iput p1, p0, Landroid/app/BackStackState;->mTransitionStyle:I

    .line 22
    iget-object p1, p2, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    iput-object p1, p0, Landroid/app/BackStackState;->mName:Ljava/lang/String;

    .line 23
    iget p1, p2, Landroid/app/BackStackRecord;->mIndex:I

    iput p1, p0, Landroid/app/BackStackState;->mIndex:I

    .line 24
    iget p1, p2, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    iput p1, p0, Landroid/app/BackStackState;->mBreadCrumbTitleRes:I

    .line 25
    iget-object p1, p2, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object p1, p0, Landroid/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 26
    iget p1, p2, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    iput p1, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleRes:I

    .line 27
    iget-object p1, p2, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object p1, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    return-void

    .line 28
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not on back stack"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/BackStackState;->mOps:[I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/BackStackState;->mTransition:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/BackStackState;->mTransitionStyle:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/BackStackState;->mName:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/BackStackState;->mIndex:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/BackStackState;->mBreadCrumbTitleRes:I

    .line 36
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleRes:I

    .line 38
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    iput-object p1, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public instantiate(Landroid/app/FragmentManagerImpl;)Landroid/app/BackStackRecord;
    .locals 12

    .line 1
    new-instance v0, Landroid/app/BackStackRecord;

    invoke-direct {v0, p1}, Landroid/app/BackStackRecord;-><init>(Landroid/app/FragmentManagerImpl;)V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 2
    :goto_0
    iget-object v4, p0, Landroid/app/BackStackState;->mOps:[I

    array-length v4, v4

    if-ge v2, v4, :cond_4

    .line 3
    new-instance v4, Landroid/app/BackStackRecord$Op;

    invoke-direct {v4}, Landroid/app/BackStackRecord$Op;-><init>()V

    .line 4
    iget-object v5, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v6, v2, 0x1

    aget v2, v5, v2

    iput v2, v4, Landroid/app/BackStackRecord$Op;->cmd:I

    .line 5
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    const-string v5, "Instantiate "

    const-string v7, "FragmentManager"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " op #"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " base fragment #"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroid/app/BackStackState;->mOps:[I

    aget v8, v8, v6

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    iget-object v2, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v8, v6, 0x1

    aget v2, v2, v6

    if-ltz v2, :cond_1

    .line 7
    iget-object v6, p1, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 8
    iput-object v2, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 9
    iput-object v2, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 10
    :goto_1
    iget-object v2, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v6, v8, 0x1

    aget v8, v2, v8

    iput v8, v4, Landroid/app/BackStackRecord$Op;->enterAnim:I

    add-int/lit8 v8, v6, 0x1

    .line 11
    aget v6, v2, v6

    iput v6, v4, Landroid/app/BackStackRecord$Op;->exitAnim:I

    add-int/lit8 v6, v8, 0x1

    .line 12
    aget v8, v2, v8

    iput v8, v4, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    add-int/lit8 v8, v6, 0x1

    .line 13
    aget v6, v2, v6

    iput v6, v4, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    add-int/lit8 v6, v8, 0x1

    .line 14
    aget v2, v2, v8

    if-lez v2, :cond_3

    .line 15
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, v4, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    move v8, v1

    :goto_2
    if-ge v8, v2, :cond_3

    .line 16
    sget-boolean v9, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " set remove fragment #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Landroid/app/BackStackState;->mOps:[I

    aget v10, v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_2
    iget-object v9, p1, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget-object v10, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v11, v6, 0x1

    aget v6, v10, v6

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Fragment;

    .line 18
    iget-object v9, v4, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move v6, v11

    goto :goto_2

    :cond_3
    move v2, v6

    .line 19
    invoke-virtual {v0, v4}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 20
    :cond_4
    iget p1, p0, Landroid/app/BackStackState;->mTransition:I

    iput p1, v0, Landroid/app/BackStackRecord;->mTransition:I

    .line 21
    iget p1, p0, Landroid/app/BackStackState;->mTransitionStyle:I

    iput p1, v0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    .line 22
    iget-object p1, p0, Landroid/app/BackStackState;->mName:Ljava/lang/String;

    iput-object p1, v0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    .line 23
    iget p1, p0, Landroid/app/BackStackState;->mIndex:I

    iput p1, v0, Landroid/app/BackStackRecord;->mIndex:I

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, v0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    .line 25
    iget v1, p0, Landroid/app/BackStackState;->mBreadCrumbTitleRes:I

    iput v1, v0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 26
    iget-object v1, p0, Landroid/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 27
    iget v1, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleRes:I

    iput v1, v0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 28
    iget-object v1, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 29
    invoke-virtual {v0, p1}, Landroid/app/BackStackRecord;->bumpBackStackNesting(I)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Landroid/app/BackStackState;->mOps:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2
    iget p2, p0, Landroid/app/BackStackState;->mTransition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Landroid/app/BackStackState;->mTransitionStyle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Landroid/app/BackStackState;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget p2, p0, Landroid/app/BackStackState;->mIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Landroid/app/BackStackState;->mBreadCrumbTitleRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object p2, p0, Landroid/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 8
    iget p2, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object p2, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    return-void
.end method
