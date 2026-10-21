.class final Landroid/app/FragmentState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/FragmentState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mArguments:Landroid/os/Bundle;

.field final mClassName:Ljava/lang/String;

.field final mContainerId:I

.field final mDetached:Z

.field final mFragmentId:I

.field final mFromLayout:Z

.field final mHidden:Z

.field final mIndex:I

.field mInstance:Landroid/app/Fragment;

.field final mRetainInstance:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field final mTag:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/FragmentState$1;

    invoke-direct {v0}, Landroid/app/FragmentState$1;-><init>()V

    sput-object v0, Landroid/app/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentState;->mClassName:Ljava/lang/String;

    .line 3
    iget v0, p1, Landroid/app/Fragment;->mIndex:I

    iput v0, p0, Landroid/app/FragmentState;->mIndex:I

    .line 4
    iget-boolean v0, p1, Landroid/app/Fragment;->mFromLayout:Z

    iput-boolean v0, p0, Landroid/app/FragmentState;->mFromLayout:Z

    .line 5
    iget v0, p1, Landroid/app/Fragment;->mFragmentId:I

    iput v0, p0, Landroid/app/FragmentState;->mFragmentId:I

    .line 6
    iget v0, p1, Landroid/app/Fragment;->mContainerId:I

    iput v0, p0, Landroid/app/FragmentState;->mContainerId:I

    .line 7
    iget-object v0, p1, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/FragmentState;->mTag:Ljava/lang/String;

    .line 8
    iget-boolean v0, p1, Landroid/app/Fragment;->mRetainInstance:Z

    iput-boolean v0, p0, Landroid/app/FragmentState;->mRetainInstance:Z

    .line 9
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    iput-boolean v0, p0, Landroid/app/FragmentState;->mDetached:Z

    .line 10
    iget-object v0, p1, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    .line 11
    iget-boolean p1, p1, Landroid/app/Fragment;->mHidden:Z

    iput-boolean p1, p0, Landroid/app/FragmentState;->mHidden:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentState;->mClassName:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/FragmentState;->mIndex:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/app/FragmentState;->mFromLayout:Z

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/FragmentState;->mFragmentId:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/FragmentState;->mContainerId:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentState;->mTag:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/app/FragmentState;->mRetainInstance:Z

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Landroid/app/FragmentState;->mDetached:Z

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Landroid/app/FragmentState;->mHidden:Z

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public instantiate(Landroid/app/FragmentHostCallback;Landroid/app/FragmentContainer;Landroid/app/Fragment;Landroid/app/FragmentManagerNonConfig;)Landroid/app/Fragment;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    if-eqz p2, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Landroid/app/FragmentState;->mClassName:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v2, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    .line 25
    .line 26
    invoke-virtual {p2, v0, v1, v2}, Landroid/app/FragmentContainer;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    iput-object p2, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object p2, p0, Landroid/app/FragmentState;->mClassName:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v1, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    .line 36
    .line 37
    invoke-static {v0, p2, v1}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    iput-object p2, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    .line 42
    .line 43
    :goto_0
    iget-object p2, p0, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 44
    .line 45
    if-eqz p2, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 52
    .line 53
    .line 54
    iget-object p2, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    .line 55
    .line 56
    iget-object v0, p0, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 57
    .line 58
    iput-object v0, p2, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 59
    .line 60
    :cond_2
    iget-object p2, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    .line 61
    .line 62
    iget v0, p0, Landroid/app/FragmentState;->mIndex:I

    .line 63
    .line 64
    invoke-virtual {p2, v0, p3}, Landroid/app/Fragment;->setIndex(ILandroid/app/Fragment;)V

    .line 65
    .line 66
    .line 67
    iget-object p2, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    .line 68
    .line 69
    iget-boolean p3, p0, Landroid/app/FragmentState;->mFromLayout:Z

    .line 70
    .line 71
    iput-boolean p3, p2, Landroid/app/Fragment;->mFromLayout:Z

    .line 72
    .line 73
    const/4 p3, 0x1

    .line 74
    iput-boolean p3, p2, Landroid/app/Fragment;->mRestored:Z

    .line 75
    .line 76
    iget p3, p0, Landroid/app/FragmentState;->mFragmentId:I

    .line 77
    .line 78
    iput p3, p2, Landroid/app/Fragment;->mFragmentId:I

    .line 79
    .line 80
    iget p3, p0, Landroid/app/FragmentState;->mContainerId:I

    .line 81
    .line 82
    iput p3, p2, Landroid/app/Fragment;->mContainerId:I

    .line 83
    .line 84
    iget-object p3, p0, Landroid/app/FragmentState;->mTag:Ljava/lang/String;

    .line 85
    .line 86
    iput-object p3, p2, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    .line 87
    .line 88
    iget-boolean p3, p0, Landroid/app/FragmentState;->mRetainInstance:Z

    .line 89
    .line 90
    iput-boolean p3, p2, Landroid/app/Fragment;->mRetainInstance:Z

    .line 91
    .line 92
    iget-boolean p3, p0, Landroid/app/FragmentState;->mDetached:Z

    .line 93
    .line 94
    iput-boolean p3, p2, Landroid/app/Fragment;->mDetached:Z

    .line 95
    .line 96
    iget-boolean p3, p0, Landroid/app/FragmentState;->mHidden:Z

    .line 97
    .line 98
    iput-boolean p3, p2, Landroid/app/Fragment;->mHidden:Z

    .line 99
    .line 100
    iget-object p1, p1, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 101
    .line 102
    iput-object p1, p2, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 103
    .line 104
    sget-boolean p1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    .line 105
    .line 106
    if-eqz p1, :cond_3

    .line 107
    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string p2, "Instantiated fragment "

    .line 111
    .line 112
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object p2, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    .line 116
    .line 117
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    const-string p2, "FragmentManager"

    .line 125
    .line 126
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    :cond_3
    iget-object p1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    .line 130
    .line 131
    iput-object p4, p1, Landroid/app/Fragment;->mChildNonConfig:Landroid/app/FragmentManagerNonConfig;

    .line 132
    .line 133
    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Landroid/app/FragmentState;->mClassName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/app/FragmentState;->mIndex:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-boolean p2, p0, Landroid/app/FragmentState;->mFromLayout:Z

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/app/FragmentState;->mFragmentId:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Landroid/app/FragmentState;->mContainerId:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Landroid/app/FragmentState;->mTag:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-boolean p2, p0, Landroid/app/FragmentState;->mRetainInstance:Z

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    iget-boolean p2, p0, Landroid/app/FragmentState;->mDetached:Z

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 44
    .line 45
    .line 46
    iget-boolean p2, p0, Landroid/app/FragmentState;->mHidden:Z

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
