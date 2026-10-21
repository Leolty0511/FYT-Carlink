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
.field final mBreadCrumbShortTitleRes:I

.field final mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field final mBreadCrumbTitleRes:I

.field final mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field final mIndex:I

.field final mName:Ljava/lang/String;

.field final mOps:[I

.field final mReorderingAllowed:Z

.field final mSharedElementSourceNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSharedElementTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mTransition:I

.field final mTransitionStyle:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/BackStackState$1;

    invoke-direct {v0}, Landroid/app/BackStackState$1;-><init>()V

    sput-object v0, Landroid/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/app/FragmentManagerImpl;Landroid/app/BackStackRecord;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p2, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    mul-int/lit8 v0, p1, 0x6

    .line 3
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/app/BackStackState;->mOps:[I

    .line 4
    iget-boolean v0, p2, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 5
    iget-object v2, p2, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/BackStackRecord$Op;

    .line 6
    iget-object v3, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v1, 0x1

    iget v5, v2, Landroid/app/BackStackRecord$Op;->cmd:I

    aput v5, v3, v1

    add-int/lit8 v1, v4, 0x1

    .line 7
    iget-object v5, v2, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    if-eqz v5, :cond_0

    iget v5, v5, Landroid/app/Fragment;->mIndex:I

    goto :goto_1

    :cond_0
    const/4 v5, -0x1

    :goto_1
    aput v5, v3, v4

    add-int/lit8 v4, v1, 0x1

    .line 8
    iget v5, v2, Landroid/app/BackStackRecord$Op;->enterAnim:I

    aput v5, v3, v1

    add-int/lit8 v1, v4, 0x1

    .line 9
    iget v5, v2, Landroid/app/BackStackRecord$Op;->exitAnim:I

    aput v5, v3, v4

    add-int/lit8 v4, v1, 0x1

    .line 10
    iget v5, v2, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    aput v5, v3, v1

    add-int/lit8 v1, v4, 0x1

    .line 11
    iget v2, v2, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    aput v2, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_1
    iget p1, p2, Landroid/app/BackStackRecord;->mTransition:I

    iput p1, p0, Landroid/app/BackStackState;->mTransition:I

    .line 13
    iget p1, p2, Landroid/app/BackStackRecord;->mTransitionStyle:I

    iput p1, p0, Landroid/app/BackStackState;->mTransitionStyle:I

    .line 14
    iget-object p1, p2, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    iput-object p1, p0, Landroid/app/BackStackState;->mName:Ljava/lang/String;

    .line 15
    iget p1, p2, Landroid/app/BackStackRecord;->mIndex:I

    iput p1, p0, Landroid/app/BackStackState;->mIndex:I

    .line 16
    iget p1, p2, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    iput p1, p0, Landroid/app/BackStackState;->mBreadCrumbTitleRes:I

    .line 17
    iget-object p1, p2, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object p1, p0, Landroid/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 18
    iget p1, p2, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    iput p1, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleRes:I

    .line 19
    iget-object p1, p2, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object p1, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 20
    iget-object p1, p2, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 21
    iget-object p1, p2, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 22
    iget-boolean p1, p2, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    iput-boolean p1, p0, Landroid/app/BackStackState;->mReorderingAllowed:Z

    return-void

    .line 23
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not on back stack"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/BackStackState;->mOps:[I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/BackStackState;->mTransition:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/BackStackState;->mTransitionStyle:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/BackStackState;->mName:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/BackStackState;->mIndex:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/BackStackState;->mBreadCrumbTitleRes:I

    .line 31
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleRes:I

    .line 33
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroid/app/BackStackState;->mReorderingAllowed:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public instantiate(Landroid/app/FragmentManagerImpl;)Landroid/app/BackStackRecord;
    .locals 9

    .line 1
    new-instance v0, Landroid/app/BackStackRecord;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/app/BackStackRecord;-><init>(Landroid/app/FragmentManagerImpl;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    iget-object v3, p0, Landroid/app/BackStackState;->mOps:[I

    .line 9
    .line 10
    array-length v3, v3

    .line 11
    if-ge v1, v3, :cond_2

    .line 12
    .line 13
    new-instance v3, Landroid/app/BackStackRecord$Op;

    .line 14
    .line 15
    invoke-direct {v3}, Landroid/app/BackStackRecord$Op;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v4, p0, Landroid/app/BackStackState;->mOps:[I

    .line 19
    .line 20
    add-int/lit8 v5, v1, 0x1

    .line 21
    .line 22
    aget v1, v4, v1

    .line 23
    .line 24
    iput v1, v3, Landroid/app/BackStackRecord$Op;->cmd:I

    .line 25
    .line 26
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v4, "Instantiate "

    .line 33
    .line 34
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v4, " op #"

    .line 41
    .line 42
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v4, " base fragment #"

    .line 49
    .line 50
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v4, p0, Landroid/app/BackStackState;->mOps:[I

    .line 54
    .line 55
    aget v4, v4, v5

    .line 56
    .line 57
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const-string v4, "FragmentManager"

    .line 65
    .line 66
    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    :cond_0
    iget-object v1, p0, Landroid/app/BackStackState;->mOps:[I

    .line 70
    .line 71
    add-int/lit8 v4, v5, 0x1

    .line 72
    .line 73
    aget v1, v1, v5

    .line 74
    .line 75
    if-ltz v1, :cond_1

    .line 76
    .line 77
    iget-object v5, p1, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    .line 78
    .line 79
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Landroid/app/Fragment;

    .line 84
    .line 85
    iput-object v1, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const/4 v1, 0x0

    .line 89
    iput-object v1, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 90
    .line 91
    :goto_1
    iget-object v1, p0, Landroid/app/BackStackState;->mOps:[I

    .line 92
    .line 93
    add-int/lit8 v5, v4, 0x1

    .line 94
    .line 95
    aget v4, v1, v4

    .line 96
    .line 97
    iput v4, v3, Landroid/app/BackStackRecord$Op;->enterAnim:I

    .line 98
    .line 99
    add-int/lit8 v6, v5, 0x1

    .line 100
    .line 101
    aget v5, v1, v5

    .line 102
    .line 103
    iput v5, v3, Landroid/app/BackStackRecord$Op;->exitAnim:I

    .line 104
    .line 105
    add-int/lit8 v7, v6, 0x1

    .line 106
    .line 107
    aget v6, v1, v6

    .line 108
    .line 109
    iput v6, v3, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    .line 110
    .line 111
    add-int/lit8 v8, v7, 0x1

    .line 112
    .line 113
    aget v1, v1, v7

    .line 114
    .line 115
    iput v1, v3, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    .line 116
    .line 117
    iput v4, v0, Landroid/app/BackStackRecord;->mEnterAnim:I

    .line 118
    .line 119
    iput v5, v0, Landroid/app/BackStackRecord;->mExitAnim:I

    .line 120
    .line 121
    iput v6, v0, Landroid/app/BackStackRecord;->mPopEnterAnim:I

    .line 122
    .line 123
    iput v1, v0, Landroid/app/BackStackRecord;->mPopExitAnim:I

    .line 124
    .line 125
    invoke-virtual {v0, v3}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    .line 126
    .line 127
    .line 128
    add-int/lit8 v2, v2, 0x1

    .line 129
    .line 130
    move v1, v8

    .line 131
    goto :goto_0

    .line 132
    :cond_2
    iget p1, p0, Landroid/app/BackStackState;->mTransition:I

    .line 133
    .line 134
    iput p1, v0, Landroid/app/BackStackRecord;->mTransition:I

    .line 135
    .line 136
    iget p1, p0, Landroid/app/BackStackState;->mTransitionStyle:I

    .line 137
    .line 138
    iput p1, v0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    .line 139
    .line 140
    iget-object p1, p0, Landroid/app/BackStackState;->mName:Ljava/lang/String;

    .line 141
    .line 142
    iput-object p1, v0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    .line 143
    .line 144
    iget p1, p0, Landroid/app/BackStackState;->mIndex:I

    .line 145
    .line 146
    iput p1, v0, Landroid/app/BackStackRecord;->mIndex:I

    .line 147
    .line 148
    const/4 p1, 0x1

    .line 149
    iput-boolean p1, v0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    .line 150
    .line 151
    iget v1, p0, Landroid/app/BackStackState;->mBreadCrumbTitleRes:I

    .line 152
    .line 153
    iput v1, v0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 154
    .line 155
    iget-object v1, p0, Landroid/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 156
    .line 157
    iput-object v1, v0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 158
    .line 159
    iget v1, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleRes:I

    .line 160
    .line 161
    iput v1, v0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 162
    .line 163
    iget-object v1, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 164
    .line 165
    iput-object v1, v0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 166
    .line 167
    iget-object v1, p0, Landroid/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 168
    .line 169
    iput-object v1, v0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 170
    .line 171
    iget-object v1, p0, Landroid/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 172
    .line 173
    iput-object v1, v0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 174
    .line 175
    iget-boolean v1, p0, Landroid/app/BackStackState;->mReorderingAllowed:Z

    .line 176
    .line 177
    iput-boolean v1, v0, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    .line 178
    .line 179
    invoke-virtual {v0, p1}, Landroid/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 180
    .line 181
    .line 182
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Landroid/app/BackStackState;->mOps:[I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/app/BackStackState;->mTransition:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/app/BackStackState;->mTransitionStyle:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Landroid/app/BackStackState;->mName:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Landroid/app/BackStackState;->mIndex:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget p2, p0, Landroid/app/BackStackState;->mBreadCrumbTitleRes:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Landroid/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 35
    .line 36
    .line 37
    iget p2, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleRes:I

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    .line 41
    .line 42
    iget-object p2, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 43
    .line 44
    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 45
    .line 46
    .line 47
    iget-object p2, p0, Landroid/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Landroid/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 55
    .line 56
    .line 57
    iget-boolean p2, p0, Landroid/app/BackStackState;->mReorderingAllowed:Z

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
