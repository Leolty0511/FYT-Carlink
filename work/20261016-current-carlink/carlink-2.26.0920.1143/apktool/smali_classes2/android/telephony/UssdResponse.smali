.class public final Landroid/telephony/UssdResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/UssdResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mReturnMessage:Ljava/lang/CharSequence;

.field private mUssdRequest:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/UssdResponse$1;

    invoke-direct {v0}, Landroid/telephony/UssdResponse$1;-><init>()V

    sput-object v0, Landroid/telephony/UssdResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/telephony/UssdResponse;->mUssdRequest:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/telephony/UssdResponse;->mReturnMessage:Ljava/lang/CharSequence;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getReturnMessage()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/telephony/UssdResponse;->mReturnMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getUssdRequest()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/UssdResponse;->mUssdRequest:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Landroid/telephony/UssdResponse;->mUssdRequest:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Landroid/telephony/UssdResponse;->mReturnMessage:Ljava/lang/CharSequence;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
