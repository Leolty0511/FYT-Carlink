.class public final Landroid/service/autofill/FillResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/FillResponse$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/FillResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAuthentication:Landroid/content/IntentSender;

.field private final mAuthenticationIds:[Landroid/view/autofill/AutofillId;

.field private final mClientState:Landroid/os/Bundle;

.field private final mDatasets:Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/service/autofill/Dataset;",
            ">;"
        }
    .end annotation
.end field

.field private final mIgnoredIds:[Landroid/view/autofill/AutofillId;

.field private final mPresentation:Landroid/widget/RemoteViews;

.field private mRequestId:I

.field private final mSaveInfo:Landroid/service/autofill/SaveInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/autofill/FillResponse$1;

    invoke-direct {v0}, Landroid/service/autofill/FillResponse$1;-><init>()V

    sput-object v0, Landroid/service/autofill/FillResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/service/autofill/FillResponse$Builder;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Landroid/service/autofill/FillResponse$Builder;->access$000(Landroid/service/autofill/FillResponse$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-static {p1}, Landroid/service/autofill/FillResponse$Builder;->access$000(Landroid/service/autofill/FillResponse$Builder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/service/autofill/FillResponse;->mDatasets:Landroid/content/pm/ParceledListSlice;

    .line 4
    invoke-static {p1}, Landroid/service/autofill/FillResponse$Builder;->access$100(Landroid/service/autofill/FillResponse$Builder;)Landroid/service/autofill/SaveInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/FillResponse;->mSaveInfo:Landroid/service/autofill/SaveInfo;

    .line 5
    invoke-static {p1}, Landroid/service/autofill/FillResponse$Builder;->access$200(Landroid/service/autofill/FillResponse$Builder;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/FillResponse;->mClientState:Landroid/os/Bundle;

    .line 6
    invoke-static {p1}, Landroid/service/autofill/FillResponse$Builder;->access$300(Landroid/service/autofill/FillResponse$Builder;)Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/FillResponse;->mPresentation:Landroid/widget/RemoteViews;

    .line 7
    invoke-static {p1}, Landroid/service/autofill/FillResponse$Builder;->access$400(Landroid/service/autofill/FillResponse$Builder;)Landroid/content/IntentSender;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/FillResponse;->mAuthentication:Landroid/content/IntentSender;

    .line 8
    invoke-static {p1}, Landroid/service/autofill/FillResponse$Builder;->access$500(Landroid/service/autofill/FillResponse$Builder;)[Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/FillResponse;->mAuthenticationIds:[Landroid/view/autofill/AutofillId;

    .line 9
    invoke-static {p1}, Landroid/service/autofill/FillResponse$Builder;->access$600(Landroid/service/autofill/FillResponse$Builder;)[Landroid/view/autofill/AutofillId;

    move-result-object p1

    iput-object p1, p0, Landroid/service/autofill/FillResponse;->mIgnoredIds:[Landroid/view/autofill/AutofillId;

    const/high16 p1, -0x80000000

    .line 10
    iput p1, p0, Landroid/service/autofill/FillResponse;->mRequestId:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/service/autofill/FillResponse$Builder;Landroid/service/autofill/FillResponse$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/service/autofill/FillResponse;-><init>(Landroid/service/autofill/FillResponse$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAuthentication()Landroid/content/IntentSender;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mAuthentication:Landroid/content/IntentSender;

    return-object v0
.end method

.method public getAuthenticationIds()[Landroid/view/autofill/AutofillId;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mAuthenticationIds:[Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public getClientState()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mClientState:Landroid/os/Bundle;

    return-object v0
.end method

.method public getDatasets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/autofill/Dataset;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mDatasets:Landroid/content/pm/ParceledListSlice;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getIgnoredIds()[Landroid/view/autofill/AutofillId;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mIgnoredIds:[Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public getPresentation()Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mPresentation:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getRequestId()I
    .locals 1

    iget v0, p0, Landroid/service/autofill/FillResponse;->mRequestId:I

    return v0
.end method

.method public getSaveInfo()Landroid/service/autofill/SaveInfo;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mSaveInfo:Landroid/service/autofill/SaveInfo;

    return-object v0
.end method

.method public setRequestId(I)V
    .locals 0

    iput p1, p0, Landroid/service/autofill/FillResponse;->mRequestId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "FillResponse : [mRequestId="

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget v2, p0, Landroid/service/autofill/FillResponse;->mRequestId:I

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v1, ", datasets="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Landroid/service/autofill/FillResponse;->mDatasets:Landroid/content/pm/ParceledListSlice;

    .line 37
    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    const-string v1, "N/A"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ", saveInfo="

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Landroid/service/autofill/FillResponse;->mSaveInfo:Landroid/service/autofill/SaveInfo;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, ", clientState="

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Landroid/service/autofill/FillResponse;->mClientState:Landroid/os/Bundle;

    .line 66
    .line 67
    const/4 v2, 0x1

    .line 68
    const/4 v3, 0x0

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    move v1, v2

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    move v1, v3

    .line 74
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v1, ", hasPresentation="

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Landroid/service/autofill/FillResponse;->mPresentation:Landroid/widget/RemoteViews;

    .line 83
    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    move v1, v2

    .line 87
    goto :goto_2

    .line 88
    :cond_3
    move v1, v3

    .line 89
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v1, ", hasAuthentication="

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Landroid/service/autofill/FillResponse;->mAuthentication:Landroid/content/IntentSender;

    .line 98
    .line 99
    if-eqz v1, :cond_4

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_4
    move v2, v3

    .line 103
    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", authenticationIds="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Landroid/service/autofill/FillResponse;->mAuthenticationIds:[Landroid/view/autofill/AutofillId;

    .line 112
    .line 113
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v1, ", ignoredIds="

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget-object v1, p0, Landroid/service/autofill/FillResponse;->mIgnoredIds:[Landroid/view/autofill/AutofillId;

    .line 126
    .line 127
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    const-string v2, "]"

    .line 132
    .line 133
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mDatasets:Landroid/content/pm/ParceledListSlice;

    .line 2
    .line 3
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mSaveInfo:Landroid/service/autofill/SaveInfo;

    .line 7
    .line 8
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mClientState:Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mAuthenticationIds:[Landroid/view/autofill/AutofillId;

    .line 17
    .line 18
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mAuthentication:Landroid/content/IntentSender;

    .line 22
    .line 23
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mPresentation:Landroid/widget/RemoteViews;

    .line 27
    .line 28
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mIgnoredIds:[Landroid/view/autofill/AutofillId;

    .line 32
    .line 33
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 34
    .line 35
    .line 36
    iget p2, p0, Landroid/service/autofill/FillResponse;->mRequestId:I

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
